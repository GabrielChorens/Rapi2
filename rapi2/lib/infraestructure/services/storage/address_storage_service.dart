import 'package:dartz/dartz.dart';
import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:rapi2/core/error_handle/failure.dart';

import '../../data_transfer_objects/entities/address_dto.dart';

//TODO document this. and remember dependency injection
@lazySingleton
class AddressStorageService {
  
  final GetStorage _storage;
  KtList<AddressDTO> _addresses = emptyList();

  AddressStorageService(
    this._storage,
  ) {
    _storage.read('address').then((address) {
      if (address == null) {
        _addresses = emptyList();
      } else {
        _addresses = _mapper(address);
      }
    });
  }

  Future<Either<NoMatchingStoragedData, Unit>> updateAddress(
      AddressDTO address) async {
    if (_isIdStored(_addresses, address.id)) {
      _addresses =
          _addresses.map((item) => item.id == address.id ? address : item);
      await _write();
      return right(unit);
    }
    return left(const NoMatchingStoragedData());
  }

  Future<Either<AddressAlreadyExist, Unit>> createAddress(
      AddressDTO address) async {
    if (_isIdStored(_addresses, address.id)) {
      return left(const AddressAlreadyExist());
    }
    _addresses = _addresses.plusElement(address);
    await _write();
    return right(unit);
  }

Future<Either<AddressAlreadyExist, Unit>> createAddresses(
    KtList<AddressDTO> addresses) async {

  for (var address in addresses.iter) {
    final currentResult = await createAddress(address);
    if (currentResult.isLeft()) {
      return currentResult; // return if there is a failure
    }
  }
  return const Right(unit); // return success if all addresses were created successfully
}


  Future<Either<NoMatchingStoragedData, Unit>> deleteAddressByID(int id) async {
    if (_isIdStored(_addresses, id)) {
      _addresses = _addresses.filter((item) => item.id != id);
      await _write();
      return right(unit);
    }
    return left(const NoMatchingStoragedData());
  }

  Future<Either<NoMatchingStoragedData, KtList<AddressDTO>>>
      getAddresses() async {
    if (_addresses.isEmpty()) {
      return left(const NoMatchingStoragedData());
    }
    return right(_addresses);
  }

  Future<Either<NoMatchingStoragedData, AddressDTO>> getAddressById(
      int id) async {
    if (_addresses.isEmpty()) {
      return left(const NoMatchingStoragedData());
    }
    final address = _addresses.firstOrNull((element) => element.id == id);
    if (address == null) {
      return left(const NoMatchingStoragedData());
    }
    return right(address);
  }

  bool _isIdStored(KtList<AddressDTO> addresses, int id) {
    return addresses.any((element) => element.id == id);
  }

  KtList<AddressDTO> _mapper(List<Map<String, dynamic>> address) {
    return address.map((e) => AddressDTO.fromJson(e)).toImmutableList();
  }

  Future<void> _write() async {
    final address = _addresses.map((e) => e.toJson()).asList();
    await _storage.write('address', address);
  }
}

final class NoMatchingStoragedData extends Failure {
  const NoMatchingStoragedData();
}

final class AddressAlreadyExist extends Failure {
  const AddressAlreadyExist();
}

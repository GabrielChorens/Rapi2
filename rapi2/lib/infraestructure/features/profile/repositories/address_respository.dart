import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import '../../../../domain/features/profile/profile_failure.dart';
import '../../../data_transfer_objects/entities/address_dto.dart';
import '../../../services/storage/address_storage_service.dart';
import '../../../network/api/profile_api_client.dart';
import '../../../network/api/server_responses.dart';

@lazySingleton
final class AddressRepository {
  final ProfileApiClient _profileApiClient;
  final AddressStorageService _addressStorageService;

  AddressRepository(this._profileApiClient, this._addressStorageService);

  Future<Either<ProfileFailure, KtList<AddressDTO>>> getAddresses() async {
    final addressStorageOperationResult =
        await _addressStorageService.getAddresses();
    return addressStorageOperationResult.fold(
      (failure) => _fetchAddressesFromServer(),
      (success) => right(success),
    );
  }

  Future<Either<ProfileFailure, KtList<AddressDTO>>>
      _fetchAddressesFromServer() async {
    final serverResult = await _profileApiClient.getAllAddresses();
    return serverResult.fold(
        (failure) => left(StorageError(failureTrace: failure)), (success) {
      if (success.dataAsList.isNotEmpty) {
        return _saveAddressesToLocalStorage(success.dataAsList);
      }
      return left(const ServerError(
          failureTrace: UnexpectedError(
              failureTrace: MessageFromServer(message: 'no_data'))));
    });
  }

  Future<Either<ProfileFailure, KtList<AddressDTO>>> _saveAddressesToLocalStorage(
      List<Map<String, dynamic>> dataAsList) async {
    final addresses =
        KtList.from(dataAsList.map((address) => AddressDTO.fromJson(address)));
    final storageResult =
        await _addressStorageService.createAddresses(addresses);
    return storageResult.fold(
      (failure) => left(StorageError(failureTrace: failure)),
      (success) => right(addresses),
    );
  }

  Future<Either<ProfileFailure, Unit>> createAddress(
      {required AddressValueObjectDTO address}) async {
    
    final result = await _createAddressInAPI(
      name: address.name,
      addressName: address.addressName,
      addressNote: address.addressDetailed,
      latitude: address.latitude,
      longitude: address.longitude,
    );
    return result.fold(
      (failure) => left(failure),
      (addressDTO) => _saveAddressToLocalStorage(addressDTO),
    );
  }

  Future<Either<ProfileFailure, AddressDTO>> _createAddressInAPI({
    required String name,
    required String addressName,
    required String addressNote,
    required double latitude,
    required double longitude,
  }) async {
    final result = await _profileApiClient.createAddress(
      name: name,
      addressName: addressName,
      addressNote: addressNote,
      latitude: latitude,
      longitude: longitude,
    );
    return result.fold(
      (failure) => left(ServerError(failureTrace: failure)),
      (success) => success.data.isNotEmpty
          ? right(AddressDTO.fromJson(success.data))
          : left(const ServerError(
              failureTrace: UnexpectedError(
                  failureTrace: MessageFromServer(message: 'no_data')))),
    );
  }

  Future<Either<ProfileFailure, Unit>> _saveAddressToLocalStorage(
      AddressDTO addressDTO) async {
    final addressStorageOperationResult =
        await _addressStorageService.createAddress(addressDTO);
    return addressStorageOperationResult.fold(
      (failure) => left(StorageError(failureTrace: failure)),
      (success) => right(unit),
    );
  }

  Future<Either<ProfileFailure, Unit>> updateAddress(
      {required AddressDTO address}) async {

        final addressValueObjectDTO = address.address;
 
    final result = await _updateAddressInAPI(
      addressId: address.id,
      name: addressValueObjectDTO.name,
      addressName: addressValueObjectDTO.addressName,
      addressNote: addressValueObjectDTO.addressDetailed,
      latitude: addressValueObjectDTO.latitude,
      longitude: addressValueObjectDTO.longitude,
    );

    return result.fold(
      (failure) => left(failure),
      (addressDTO) => _updateAddressInLocalStorage(addressDTO),
    );
  }

  Future<Either<ProfileFailure, AddressDTO>> _updateAddressInAPI({
    required int addressId,
    required String name,
    required String addressName,
    required String addressNote,
    required double latitude,
    required double longitude,
  }) async {
    final result = await _profileApiClient.updateAddressByID(
      addressId: addressId,
      name: name,
      addressName: addressName,
      addressNote: addressNote,
      latitude: latitude,
      longitude: longitude,
    );

    return result.fold(
      (failure) => left(ServerError(failureTrace: failure)),
      (success) => success.data.isNotEmpty
          ? right(AddressDTO.fromJson(success.data))
          : left(const ServerError(
              failureTrace: UnexpectedError(
                  failureTrace: MessageFromServer(message: 'no_data')))),
    );
  }

  Future<Either<ProfileFailure, Unit>> _updateAddressInLocalStorage(
      AddressDTO addressDTO) async {
    final addressStorageOperationResult =
        await _addressStorageService.updateAddress(addressDTO);
    return addressStorageOperationResult.fold(
      (failure) => left(StorageError(failureTrace: failure)),
      (success) => right(unit),
    );
  }

  Future<Either<ProfileFailure, Unit>> deleteAddress({
    required AddressDTO address,
  }) async {
    int id = address.id;
    final result = await _deleteAddressInAPI(id);
    return result.fold(
      (failure) => left(failure),
      (_) => _deleteAddressInLocalStorage(id),
    );
  }

  Future<Either<ProfileFailure, Unit>> _deleteAddressInAPI(int id) async {
    final result = await _profileApiClient.deleteAddressByID(addressId: id);
    return result.fold(
      (failure) => left(ServerError(failureTrace: failure)),
      (success) => right(unit),
    );
  }

  Future<Either<ProfileFailure, Unit>> _deleteAddressInLocalStorage(
      int id) async {
    final result = await _addressStorageService.deleteAddressByID(id);
    return result.fold(
      (failure) => left(StorageError(failureTrace: failure)),
      (success) => right(unit),
    );
  }
}

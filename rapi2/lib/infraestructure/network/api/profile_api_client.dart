import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'server_responses.dart';
import '../dio_provider.dart';

@lazySingleton
class ProfileApiClient {
  final DioProvider _dioProvider;

  ///Api client for the profile endpoints
  ///Injectable with [DioProvider].

  ProfileApiClient(this._dioProvider);

  ///Get Address endpoint. Takes no parameters. Returns a [ServerSuccess] with a list of addresses.
  ///If the request fails, it returns an [ApiConnectionFailure].

  Future<Either<ApiConnectionFailure, ServerSuccess>> getAllAddresses() async {
    
    try {
      Response response = await _dioProvider.dio.get(
        '/profile/address',
      );
      List<Map<String, dynamic>> responseData = response.data;
      return right(
        ServerSuccess(dataAsList: responseData),
      );
    } on DioException catch (e) {
      return left(
        ApiConnectionFailure.fromDioException(e),
      );
    }
  }

  ///Post Address Enpoint. It requires the Strings: [name], [addressName], [addressNote],
  ///and the numbers: [latitude] and [longitude].
  ///If the request is successful, it returns a [ServerSuccess] with the address data.
  ///If the request fails, it returns an [ApiConnectionFailure].

  Future<Either<ApiConnectionFailure, ServerSuccess>> createAddress({
    required String name,
    required String addressName,
    required String addressNote,
    required double latitude,
    required double longitude,
  }) async {
    
    try {
      Response response = await _dioProvider.dio.post(
        '/profile/address',
        data: {
          'name': name,
          'address_name': addressName,
          'address_note': addressNote,
          'latitude': latitude,
          'longitude': longitude,
        },
      );
      Map<String, dynamic> responseData = response.data;
      return right(
        ServerSuccess(data: responseData),
      );
    } on DioException catch (e) {
      return left(
        ApiConnectionFailure.fromDioException(e),
      );
    }
  }

  ///Get address by ID enpoint. It requires the [addressId] as an int.
  ///If the request is successful, it returns a [ServerSuccess] with the address data.
  ///If the request fails, it returns an [ApiConnectionFailure].

  Future<Either<ApiConnectionFailure, ServerSuccess>> getAddressByID({
    required int addressId,
  }) async {
    
    try {
      Response response = await _dioProvider.dio.get(
        '/profile/address/$addressId',
      );
      Map<String, dynamic> responseData = response.data;
      return right(
        ServerSuccess(data: responseData),
      );
    } on DioException catch (e) {
      return left(
        ApiConnectionFailure.fromDioException(e),
      );
    }
  }

  ///Patch address by ID enpoint. It requires the [addressId] as an int.
  ///It also requires the Strings: [name], [addressName], [addressNote],
  ///and the numbers: [latitude] and [longitude].
  ///If the request is successful, it returns a [ServerSuccess] with the address data.
  ///If the request fails, it returns an [ApiConnectionFailure].

  Future<Either<ApiConnectionFailure, ServerSuccess>> updateAddressByID({
    required int addressId,
    required String name,
    required String addressName,
    required String addressNote,
    required double latitude,
    required double longitude,
  }) async {
    
    try {
      Response response = await _dioProvider.dio.patch(
        '/profile/address/$addressId',
        data: {
          'name': name,
          'address_name': addressName,
          'address_note': addressNote,
          'latitude': latitude,
          'longitude': longitude,
        },
      );
      Map<String, dynamic> responseData = response.data;
      return right(
        ServerSuccess(data: responseData),
      );
    } on DioException catch (e) {
      return left(
        ApiConnectionFailure.fromDioException(e),
      );
    }
  }

  ///Delete address by ID enpoint. It requires the [addressId] as an int.
  ///If the request is successful, it returns a [ServerSuccess] with the data.
  ///If the request fails, it returns an [ApiConnectionFailure].

  Future<Either<ApiConnectionFailure, ServerSuccess>> deleteAddressByID({
    required int addressId,
  }) async {
    
    try {
      Response response = await _dioProvider.dio.delete(
        '/profile/address/$addressId',
      );
      Map<String, dynamic> responseData = response.data;
      return right(
        ServerSuccess(data: responseData),
      );
    } on DioException catch (e) {
      return left(
        ApiConnectionFailure.fromDioException(e),
      );
    }
  }

  ///Me endpoint. It requires no parameters.
  
  Future<Either<ApiConnectionFailure, ServerSuccess>> getUser() async {
    
    try {
      Response response = await _dioProvider.dio.get(
        '/profile/me',
      );
      Map<String, dynamic> responseData = response.data;
      return right(
        ServerSuccess(data: responseData),
      );
    } on DioException catch (e) {
      return left(
        ApiConnectionFailure.fromDioException(e),
      );
    }
  }

  ///Update-currency endpoint. It requires the [currency] as a String.
  ///If the request is successful, it returns a [ServerSuccess].
  ///If the request fails, it returns an [ApiConnectionFailure].

  Future<Either<ApiConnectionFailure, ServerSuccess>> updateCurrency({
    required String currency,
  }) async {
    
    try {
      await _dioProvider.dio.patch(
        '/profile/update-currency',
        data: {
          'currency': currency,
        },
      );
      return right(
        const ServerSuccess(),
      );
    } on DioException catch (e) {
      return left(
        ApiConnectionFailure.fromDioException(e),
      );
    }
  }

  ///Update-name endpoint. It requires [name] and [lastName] as Strings.
  ///If the request is successful, it returns a [ServerSuccess].
  ///If the request fails, it returns an [ApiConnectionFailure].

  Future<Either<ApiConnectionFailure, ServerSuccess>> updateName({
    required String name,
    required String lastName,
  }) async {
    
    try {
      await _dioProvider.dio.patch(
        '/profile/update-name',
        data: {
          'name': name,
          'last_name': lastName,
        },
      );
      return right(
        const ServerSuccess(),
      );
    } on DioException catch (e) {
      return left(
        ApiConnectionFailure.fromDioException(e),
      );
    }
  }

  ///Update-email endpoint. It requires [email] as a String.
  ///If the request is successful, it returns a [ServerSuccess].
  ///If the request fails, it returns an [ApiConnectionFailure].

  Future<Either<ApiConnectionFailure, ServerSuccess>> updateEmail({
    required String email,
  }) async {
    
    try {
      await _dioProvider.dio.patch(
        '/profile/update-email',
        data: {
          'email': email,
        },
      );
      return right(
        const ServerSuccess(),
      );
    } on DioException catch (e) {
      return left(
        ApiConnectionFailure.fromDioException(e),
      );
    }
  }

  ///Update-password endpoint. It requires [currentPassword] and [newPassword] as a String.
  ///If the request is successful, it returns a [ServerSuccess].
  ///If the request fails, it returns an [ApiConnectionFailure].

  Future<Either<ApiConnectionFailure, ServerSuccess>> updatePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    
    try {
      await _dioProvider.dio.patch(
        '/profile/update-password',
        data: {
          'current_password': currentPassword,
          'new_password': newPassword,
        },
      );
      return right(
        const ServerSuccess(),
      );
    } on DioException catch (e) {
      return left(
        ApiConnectionFailure.fromDioException(e),
      );
    }
  }

  ///Update-phone endpoint. It requires [phoneNumber], [countryCode] and [callCode] as a String.
  ///If the request is successful, it returns a [ServerSuccess].
  ///If the request fails, it returns an [ApiConnectionFailure].

  Future<Either<ApiConnectionFailure, ServerSuccess>> updatePhoneNumber({
    required String phoneNumber,
    required String countryCode,
    required String callCode,
  }) async {
    
    try {
      await _dioProvider.dio.patch(
        '/profile/update-phone',
        data: {
          'phone_number': phoneNumber,
          'country_code': countryCode,
          'call_code': callCode,
        },
      );
      return right(
        const ServerSuccess(),
      );
    } on DioException catch (e) {
      return left(
        ApiConnectionFailure.fromDioException(e),
      );
    }
  }

  ///Update-profile-picture endpoint. It requires [profilePicturePath] as a String.
  ///If the request is successful, it returns a [ServerSuccess] with the image url.
  ///If the request fails, it returns an [ApiConnectionFailure].

  Future<Either<ApiConnectionFailure, ServerSuccess>> updateProfilePicture({
    required String profilePicturePath,
  }) async {
    
    final multipartFile = await MultipartFile.fromFile(profilePicturePath, filename: 'profile_picture.jpg');
    final formData = FormData.fromMap({
      "profile_picture": multipartFile,
    });
    try {
      Response response = await _dioProvider.dio.patch(
        '/profile/update-profile-picture',
        data: formData,
      );
      final String responseData = response.data;
      final Map<String, dynamic> responseMap = {'url': responseData};
      return right(
        ServerSuccess(data: responseMap),
      );
    } on DioException catch (e) {
      return left(
        ApiConnectionFailure.fromDioException(e),
      );
    }
  }

    ///Logout endpoint on the auth folder. It requires no parameters.
    ///Its placed here because it doesnt make sense to logout when you are not even logged in.
    
    Future<Either<ApiConnectionFailure, ServerSuccess>> logout() async {
    
    try {
      await _dioProvider.dio.post(
        '/auth/logout',
      );
      return right(
        const ServerSuccess(),
      );
    } on DioException catch (e) {
      return left(
        ApiConnectionFailure.fromDioException(e),
      );
    }
  }

}

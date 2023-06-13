import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'server_responses.freezed.dart';

@freezed
abstract class ServerSuccess with _$ServerSuccess {
  const factory ServerSuccess({
    @Default({}) Map<String, dynamic> data,
    @Default('success') String typeDescription,
  }) = _ServerSuccess;
}

@freezed
abstract class ApiConnectionFailure with _$ApiConnectionFailure {

  //Value authentication errors
  const factory ApiConnectionFailure.alreadyRegisteredValue({
    @Default('already_registered_value') String typeDescription,
  }) = AlreadyRegisteredValue;
  const factory ApiConnectionFailure.invalidValue({
    @Default('invalid_value') String typeDescription,
  }) = InvalidValue;

  //Server side errors
  const factory ApiConnectionFailure.badRequest({
    @Default('bad_request') String typeDescription,
    String? detailedMessage,
  }) = BadRequest;
  const factory ApiConnectionFailure.unauthorized({
    @Default('unauthorized') String typeDescription,
  }) = Unauthorized;
  const factory ApiConnectionFailure.notFound({
    @Default('not_found') String typeDescription,
  }) = NotFound;
  const factory ApiConnectionFailure.serverError({
    @Default('server_error') String typeDescription,
  }) = ServerError;
  const factory ApiConnectionFailure.internetConnectionTimeout({
    @Default('internet_connection_timeout') String typeDescription,
  }) = InternetConnectionTimeout;
  const factory ApiConnectionFailure.connectionError({
    @Default('connection_error') String typeDescription,
  }) = ConnectionError;

  //Unexpected error displays any other error that is not handled catching the message from the DioError
  const factory ApiConnectionFailure.unexpectedError({
    @Default('unexpected_error') String typeDescription,
    String? detailedMessage,
  }) = UnexpectedError;

  const ApiConnectionFailure._(); // provides the implementation for the class

  //Discriminating method to convert DioError to ApiConnectionFailure
  factory ApiConnectionFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return const ApiConnectionFailure.internetConnectionTimeout();
      case DioErrorType.sendTimeout:
        return const ApiConnectionFailure.internetConnectionTimeout();
      case DioErrorType.receiveTimeout:
        return const ApiConnectionFailure.internetConnectionTimeout();
      case DioErrorType.connectionError:
        return const ApiConnectionFailure.connectionError();
      case DioErrorType.badResponse:
        final statusCode = dioError.response?.statusCode;
        final messageFromServer = dioError.response?.data['message'];
        String? errorMessageFromServer;
        (messageFromServer is List) ? errorMessageFromServer = messageFromServer.join(', ') : errorMessageFromServer = messageFromServer;
        if (statusCode != null) {
          switch (statusCode) {
            case 400:
              return ApiConnectionFailure.badRequest(
                  detailedMessage: errorMessageFromServer);
            case 401:
              return const ApiConnectionFailure.unauthorized();
            case 404:
              return const ApiConnectionFailure.notFound();
            default:
              return const ApiConnectionFailure.serverError();
          }
        }
        return ApiConnectionFailure.unexpectedError(detailedMessage: dioError.message);
      default:
        return ApiConnectionFailure.unexpectedError(detailedMessage: dioError.message);
    }
  }
}

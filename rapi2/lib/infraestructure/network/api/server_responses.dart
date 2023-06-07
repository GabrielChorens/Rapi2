import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'server_responses.freezed.dart';

@freezed
abstract class ServerSuccess with _$ServerSuccess {
  const factory ServerSuccess({
    @Default({}) Map<String, dynamic> data,
    @Default('success') String message,
  }) = _ServerSuccess;
}

@freezed
abstract class ApiConnectionFailure with _$ApiConnectionFailure {
  //Value authentication errors
  const factory ApiConnectionFailure.alreadyRegisteredValue({
    @Default('already_registered_value') String message,
  }) = AlreadyRegisteredValue;
  const factory ApiConnectionFailure.invalidValue({
    @Default('invalid_value') String message,
  }) = InvalidValue;

  //Server side errors
  const factory ApiConnectionFailure.badRequest({
    @Default('bad_request') String message,
    String? detailedMessage,
  }) = BadRequest;
  const factory ApiConnectionFailure.unauthorized({
    @Default('unauthorized') String message,
  }) = Unauthorized;
  const factory ApiConnectionFailure.notFound({
    @Default('not_found') String message,
  }) = NotFound;
  const factory ApiConnectionFailure.serverError({
    @Default('server_error') String message,
  }) = ServerError;
  const factory ApiConnectionFailure.internetConnectionTimeout({
    @Default('internet_connection_timeout') String message,
  }) = InternetConnectionTimeout;
  const factory ApiConnectionFailure.connectionError({
    @Default('connection_error') String message,
  }) = ConnectionError;

  //Unexpected error displays any other error that is not handled catching the message from the DioError
  const factory ApiConnectionFailure.unexpectedError({
    @Default('unexpected_error') String message,
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

import 'package:dio/dio.dart';

import '../../../core/error_handle/failure.dart';

final class ServerSuccess {
  final Map<String, dynamic> data;
  final List<Map<String, dynamic>> dataAsList;

  const ServerSuccess({
    this.data = const {},
    this.dataAsList = const [],
  });
}

///A sealed class that represents the possible failures.
///They are: [ApiConnectionFailure], [AlreadyRegistered], [InvalidValue], [BadRequest], [Unauthorized], [NotFound], [InternetConnectionTimeout], [ConnectionError], [UnexpectedError] and [MessageFromServer].
sealed class ApiConnectionFailure extends Failure {
  const ApiConnectionFailure();

  factory ApiConnectionFailure.fromDioException(DioException dioException) {
    final (statusCode, dioMessage) = (
      dioException.response?.statusCode ?? 0,
      dioException.message ?? 'Dio did not return a message'
    );
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return const InternetConnectionTimeout();
      case DioExceptionType.sendTimeout:
        return const InternetConnectionTimeout();
      case DioExceptionType.receiveTimeout:
        return const InternetConnectionTimeout();
      case DioExceptionType.connectionError:
        return const ConnectionError();
      case DioExceptionType.badResponse:
        final messageFromServer = dioException.response?.data['message'];
        final String errorMessageFromServer;
        if (messageFromServer is List) {
          errorMessageFromServer = messageFromServer.join(', ');
        } else if (messageFromServer == null) {
          errorMessageFromServer =
              'Could not retrieve error message from server';
        } else {
          errorMessageFromServer = messageFromServer.toString();
        }
        switch (statusCode) {
          case 400:
            return BadRequest(
                failureTrace:
                    MessageFromServer(message: errorMessageFromServer));
          case 401:
            return const Unauthorized();
          case 404:
            return const NotFound();
          default:
            return UnexpectedError(
                failureTrace: MessageFromServer(message: dioMessage));
        }
      default:
        return UnexpectedError(
            failureTrace: MessageFromServer(message: dioMessage));
    }
  }
}

//Value authentication errors
final class AlreadyRegistered extends ApiConnectionFailure {
  const AlreadyRegistered();
}

final class InvalidValue extends ApiConnectionFailure {
  const InvalidValue();
}

//Server side errors
final class BadRequest extends ApiConnectionFailure {
  @override
  final Failure failureTrace;
  const BadRequest({required this.failureTrace});
}

final class Unauthorized extends ApiConnectionFailure {
  const Unauthorized();
}

final class NotFound extends ApiConnectionFailure {
  const NotFound();
}

final class InternetConnectionTimeout extends ApiConnectionFailure {
  const InternetConnectionTimeout();
}

final class ConnectionError extends ApiConnectionFailure {
  const ConnectionError();
}

//Unexpected error displays any other error that is not handled

final class UnexpectedError extends ApiConnectionFailure {
  @override
  final Failure? failureTrace;
  const UnexpectedError({this.failureTrace});
}

//Failure that catches the messageFromServer or dioMessage

final class MessageFromServer extends Failure {
  final String message;
  const MessageFromServer({required this.message});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is MessageFromServer && other.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}


import '../../network/api/server_responses.dart';

class UnexpectedApiConnectionError extends Error {
  final ApiConnectionFailure apiConnectionFailure;

  UnexpectedApiConnectionError(this.apiConnectionFailure);

  @override
  String toString() {
    const explanation =
        'Encountered a ApiConnectionFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $apiConnectionFailure');
  }
}
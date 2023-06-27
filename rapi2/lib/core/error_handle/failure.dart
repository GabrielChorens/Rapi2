import 'package:logging/logging.dart';
import 'package:recase/recase.dart';
import 'package:stack_trace/stack_trace.dart';

import 'unexpected_error.dart';

abstract base class Failure {
  const Failure();

  Failure? get failureTrace => null;

  void logger(Error error) {
    var (log, type, stackTrace) =
        (Logger('error'), _detailedString(), Trace.current());
    log.shout(type, error, stackTrace);
  }

  @override
  String toString() {
    return runtimeType.toString().snakeCase;
  }

  String _detailedString(){
    return '$toString(): carrying: ${failureTrace?.toString()}';
  }

  void crash() {
    Error error = UnexpectedError(this);
    logger(error);
    throw error;
  }
}

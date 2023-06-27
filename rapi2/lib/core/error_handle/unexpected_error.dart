import 'failure.dart';

class UnexpectedError extends Error {
  final Failure failure;

  UnexpectedError(this.failure);

  String get failureTrace {
  var failureToAnalyse = failure.failureTrace;
  var trace = '$failure: Trace:';
  
  while(failureToAnalyse != null){
    trace += ' <- $failureToAnalyse';
    failureToAnalyse = failureToAnalyse.failureTrace;
  }

  if(trace == '$failure: Trace:'){
    trace += ' No trace available';
  }

  return trace;
}

  @override
  String toString() {
    const explanation =
        'Encountered a Failure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $failureTrace');
  }
}
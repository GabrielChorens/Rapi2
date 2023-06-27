import 'package:flutter_test/flutter_test.dart';
import 'package:rapi2/core/error_handle/unexpected_error.dart';
import 'package:rapi2/infraestructure/services/location/location_service_responses.dart';

void main() {
  group('LocationServiceFailure', () {

    test('crash throws UnexpectedError', () {
      expect(
        () => const Disabled().crash(),
        throwsA(isA<UnexpectedError>()),
      );
    });
  });
}

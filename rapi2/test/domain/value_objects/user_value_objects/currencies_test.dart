import 'package:flutter_test/flutter_test.dart';
import 'package:rapi2/domain/value_objects/user_value_objects/currencies.dart';

void main() {
  group('Currencies', () {
    test('value should be the input if it is a valid currency', () {
      // Arrange
      const validCurrency = 'EUR';

      // Act
      final currency = Currencies(validCurrency);

      // Assert
      expect(currency.getOrCrash(), equals(validCurrency));
    });

    test('value should be USD if the input is an invalid currency', () {
      // Arrange
      const invalidCurrency = 'InvalidCurrency';

      // Act
      final currency = Currencies(invalidCurrency);

      // Assert
      expect(currency.getOrCrash(), equals('CUP'));
    });
  });
}

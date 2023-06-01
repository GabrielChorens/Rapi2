import 'package:flutter_test/flutter_test.dart';
import 'package:rapi2/domain/value_objects/user_value_objects/firebase_token.dart';

void main() {
  group('FirebaseToken', () {
    const expectedDefaultToken = '787asdasd8as9da8s79a87ds9a8s7d98as7d';

    test('default value should be the predefined string', () {
      // Act
      const token = FirebaseToken();

      // Assert
      expect(token.firebaseToken, equals(expectedDefaultToken));
    });

    test('should accept new value', () {
      // Arrange
      const newToken = 'newFirebaseToken123';

      // Act
      const token = FirebaseToken(firebaseToken: newToken);

      // Assert
      expect(token.firebaseToken, equals(newToken));
    });
  });
}

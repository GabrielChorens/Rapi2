import 'package:flutter_test/flutter_test.dart';
import 'package:rapi2/domain/entities/product.dart';

void main() {
  group('Product', () {
    test('should create a valid product', () {
      // Arrange
      const id = 1;
      const name = 'Test Product';
      const description = 'This is a test product';
      const price = 99.99;
      const deliveryTime = 2;
      const pictureURL = 'http://example.com/test.jpg';

      // Act
      const product = Product(
        id: id,
        name: name,
        description: description,
        price: price,
        deliveryTime: deliveryTime,
        pictureURL: pictureURL,
      );

      // Assert
      expect(product.id, id);
      expect(product.name, name);
      expect(product.description, description);
      expect(product.price, price);
      expect(product.deliveryTime, deliveryTime);
      expect(product.pictureURL, pictureURL);
    });
  });
}

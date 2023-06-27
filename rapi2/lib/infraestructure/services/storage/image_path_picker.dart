import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import '../../../core/error_handle/failure.dart';

@lazySingleton
class ImagePathPicker {
  final ImagePicker _imagePicker;

  ImagePathPicker(this._imagePicker);

  Future<Either<ImagePathPickerFailure, String>> pickImageFromGallery() async {
    return _pickImagePath(ImageSource.gallery);
  }

  Future<Either<ImagePathPickerFailure, String>> pickImageFromCamera() async {
    return _pickImagePath(ImageSource.camera);
  }

  Future<Either<ImagePathPickerFailure, String>> _pickImagePath(
      ImageSource source) async {
    try {
      final XFile? image = await _imagePicker.pickImage(source: source);
      return image == null
          ? left(const NoImageSelected())
          : right(image.path);
    } catch (e) {
      return left(const UnexpectedImagePickerFailure());
    }
  }
}

sealed class ImagePathPickerFailure extends Failure{
  const ImagePathPickerFailure();
}

final class UnexpectedImagePickerFailure extends ImagePathPickerFailure{
  const UnexpectedImagePickerFailure();
}

final class NoImageSelected extends ImagePathPickerFailure{
  const NoImageSelected();
}


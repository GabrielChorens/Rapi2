import 'package:get_storage/get_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DeviceServicesInjectionModule {

  @lazySingleton
  GetStorage get storage => GetStorage();

  @lazySingleton
  ImagePicker get imagePicker => ImagePicker();

}
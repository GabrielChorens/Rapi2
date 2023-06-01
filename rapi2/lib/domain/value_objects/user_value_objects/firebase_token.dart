import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_token.freezed.dart';

@freezed
abstract class FirebaseToken with _$FirebaseToken{

  static String get defaultFirebaseToken => '787asdasd8as9da8s79a87ds9a8s7d98as7d';


  const factory FirebaseToken({
    String? firebaseToken,
  }) = _FirebaseToken;
}
import 'package:freezed_annotation/freezed_annotation.dart';
import '../value_objects/user_value_objects/user_value_objects_barrel.dart';

part 'user.freezed.dart';

@freezed
abstract class User implements _$User {
  const User._();

  factory User({
    required final String name,
    required final String lastName,
    required final PhoneNumber phoneNumber,
    required final Email email,
    required final Password password,
    required final Currencies currency,
    required final String authToken,
    final String? profilePictureURL,
  }) = _User;

}

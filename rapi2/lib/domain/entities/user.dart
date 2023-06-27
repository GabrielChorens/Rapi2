import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_objects/user_value_objects.dart';

part 'user.freezed.dart';


abstract interface class IUser{
  Name get fullName;
  PhoneNumber get phoneNumber;
  String? get authToken;
}

///An entity that represents an user.
///It contains the following required fields: [Name] fullName and [PhoneNumber] phoneNumber.
///It contains the following optional fields: [Email] email, [Currencies] currency, [String] authToken and [String] profilePictureURL.
@freezed
abstract class User with _$User implements IUser{
  const User._();

  factory User({
    required final Name fullName,
    required final PhoneNumber phoneNumber,
    required final Email? email,
    required final Currencies? currency,
    required final String? authToken,
    required final String? profilePictureURL,
  }) = _User;

}

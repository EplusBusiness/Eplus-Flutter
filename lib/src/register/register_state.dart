import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';
part 'register_state.g.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default('') String email,
    @Default('') String password,
    @Default('') String confirmPassword,
    @Default('') String phone_number,
    @Default('') String name,
    // @Default(AttachmentAvatar()) AttachmentAvatar avatar,

  }) = _RegisterState;
}

@freezed
class AttachmentAvatar with _$AttachmentAvatar {
  const factory AttachmentAvatar({
    String? path,
    String? nameFile,
    int? id,
  }) = _AttachmentAvatar;

  factory AttachmentAvatar.fromJson(Map<String, dynamic> json) =>
      _$AttachmentAvatarFromJson(json);
}
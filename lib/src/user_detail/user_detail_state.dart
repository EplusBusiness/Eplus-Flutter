import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_detail_state.freezed.dart';
part 'user_detail_state.g.dart';

@freezed
class UserDetailState with _$UserDetailState {
  const factory UserDetailState({
    @Default(UserInfo()) UserInfo? userInfo,
  }) = _UserDetailState;
}

@freezed
class UserInfo with _$UserInfo {
  const factory UserInfo({
    int? id,
    String? name,
    String? email,
    String? phone_number,
    String? avatar_url,
  }) = _UserInfo;

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);
}
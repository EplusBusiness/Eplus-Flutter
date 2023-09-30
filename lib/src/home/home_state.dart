import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';
part 'home_state.g.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isLoading,
    @Default(<FolderInfo>[]) List<FolderInfo> listFolders,
    @Default(UserInfo()) UserInfo? userInfo,
  }) = _HomeState;
}

@freezed
class FolderInfo with _$FolderInfo {
  const factory FolderInfo({
    int? id,
    String? updatedAt,
    String? createdAt,
    int? creatorId,
    String? name,
    List<ChildInfo>? childCategory,
  }) = _FolderInfo;

  factory FolderInfo.fromJson(Map<String, dynamic> json) =>
      _$FolderInfoFromJson(json);
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

@freezed
class ChildInfo with _$ChildInfo {
  const factory ChildInfo({
    int? id,
    String? updatedAt,
    String? createdAt,
    int? creatorId,
    String? name,
  }) = _ChildInfo;

  factory ChildInfo.fromJson(Map<String, dynamic> json) =>
      _$ChildInfoFromJson(json);
}



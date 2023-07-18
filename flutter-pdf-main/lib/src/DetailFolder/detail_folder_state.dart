import 'package:freezed_annotation/freezed_annotation.dart';
part 'detail_folder_state.freezed.dart';

@freezed
class DetailFolderState with _$DetailFolderState {
  const factory DetailFolderState({
    @Default(false) bool isLoading,
    @Default(<FolderInfo>[]) List<FolderInfo> listFolder,
  }) = _DetailFolderState;
}

@freezed
class FolderInfo with _$FolderInfo {
  const factory FolderInfo({
    String? id,
    String? updatedAt,
    String? createdAt,
    String? userId,
    String? name,
    String? path,
    int? size,
    String? itemId,
    String? type,
    UserInfo? user,
  }) = _FolderInfo;
}

@freezed
class UserInfo with _$UserInfo {
  const factory UserInfo({
    String? id,
    String? email,
    String? phone_number,
    String? avatar_url,
    String? name,
  }) = _UserInfo;
}
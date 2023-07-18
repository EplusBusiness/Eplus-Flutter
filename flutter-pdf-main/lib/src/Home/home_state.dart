import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:makepdfs/models/models/user_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isLoading,
    // @Default(SenderInfo()) SenderInfo senderInfo,
    // @Default(ReceiverInfo()) ReceiverInfo receiverInfo,
    @Default(<FolderInfo>[]) List<FolderInfo> listFolder,
  }) = _HomeState;
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
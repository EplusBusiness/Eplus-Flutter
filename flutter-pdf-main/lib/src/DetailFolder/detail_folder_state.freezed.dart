// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_folder_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailFolderState {
  bool get isLoading =>
      throw _privateConstructorUsedError; // @Default(SenderInfo()) SenderInfo senderInfo,
// @Default(ReceiverInfo()) ReceiverInfo receiverInfo,
  List<FolderInfo> get listFolder => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailFolderStateCopyWith<DetailFolderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailFolderStateCopyWith<$Res> {
  factory $DetailFolderStateCopyWith(
          DetailFolderState value, $Res Function(DetailFolderState) then) =
      _$DetailFolderStateCopyWithImpl<$Res, DetailFolderState>;
  @useResult
  $Res call({bool isLoading, List<FolderInfo> listFolder});
}

/// @nodoc
class _$DetailFolderStateCopyWithImpl<$Res, $Val extends DetailFolderState>
    implements $DetailFolderStateCopyWith<$Res> {
  _$DetailFolderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? listFolder = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      listFolder: null == listFolder
          ? _value.listFolder
          : listFolder // ignore: cast_nullable_to_non_nullable
              as List<FolderInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetailFolderStateCopyWith<$Res>
    implements $DetailFolderStateCopyWith<$Res> {
  factory _$$_DetailFolderStateCopyWith(_$_DetailFolderState value,
          $Res Function(_$_DetailFolderState) then) =
      __$$_DetailFolderStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<FolderInfo> listFolder});
}

/// @nodoc
class __$$_DetailFolderStateCopyWithImpl<$Res>
    extends _$DetailFolderStateCopyWithImpl<$Res, _$_DetailFolderState>
    implements _$$_DetailFolderStateCopyWith<$Res> {
  __$$_DetailFolderStateCopyWithImpl(
      _$_DetailFolderState _value, $Res Function(_$_DetailFolderState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? listFolder = null,
  }) {
    return _then(_$_DetailFolderState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      listFolder: null == listFolder
          ? _value._listFolder
          : listFolder // ignore: cast_nullable_to_non_nullable
              as List<FolderInfo>,
    ));
  }
}

/// @nodoc

class _$_DetailFolderState implements _DetailFolderState {
  const _$_DetailFolderState(
      {this.isLoading = false,
      final List<FolderInfo> listFolder = const <FolderInfo>[]})
      : _listFolder = listFolder;

  @override
  @JsonKey()
  final bool isLoading;
// @Default(SenderInfo()) SenderInfo senderInfo,
// @Default(ReceiverInfo()) ReceiverInfo receiverInfo,
  final List<FolderInfo> _listFolder;
// @Default(SenderInfo()) SenderInfo senderInfo,
// @Default(ReceiverInfo()) ReceiverInfo receiverInfo,
  @override
  @JsonKey()
  List<FolderInfo> get listFolder {
    if (_listFolder is EqualUnmodifiableListView) return _listFolder;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listFolder);
  }

  @override
  String toString() {
    return 'DetailFolderState(isLoading: $isLoading, listFolder: $listFolder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailFolderState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._listFolder, _listFolder));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_listFolder));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailFolderStateCopyWith<_$_DetailFolderState> get copyWith =>
      __$$_DetailFolderStateCopyWithImpl<_$_DetailFolderState>(
          this, _$identity);
}

abstract class _DetailFolderState implements DetailFolderState {
  const factory _DetailFolderState(
      {final bool isLoading,
      final List<FolderInfo> listFolder}) = _$_DetailFolderState;

  @override
  bool get isLoading;
  @override // @Default(SenderInfo()) SenderInfo senderInfo,
// @Default(ReceiverInfo()) ReceiverInfo receiverInfo,
  List<FolderInfo> get listFolder;
  @override
  @JsonKey(ignore: true)
  _$$_DetailFolderStateCopyWith<_$_DetailFolderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FolderInfo {
  String? get id => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  String? get itemId => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  UserInfo? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FolderInfoCopyWith<FolderInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FolderInfoCopyWith<$Res> {
  factory $FolderInfoCopyWith(
          FolderInfo value, $Res Function(FolderInfo) then) =
      _$FolderInfoCopyWithImpl<$Res, FolderInfo>;
  @useResult
  $Res call(
      {String? id,
      String? updatedAt,
      String? createdAt,
      String? userId,
      String? name,
      String? path,
      int? size,
      String? itemId,
      String? type,
      UserInfo? user});

  $UserInfoCopyWith<$Res>? get user;
}

/// @nodoc
class _$FolderInfoCopyWithImpl<$Res, $Val extends FolderInfo>
    implements $FolderInfoCopyWith<$Res> {
  _$FolderInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? userId = freezed,
    Object? name = freezed,
    Object? path = freezed,
    Object? size = freezed,
    Object? itemId = freezed,
    Object? type = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserInfoCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserInfoCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FolderInfoCopyWith<$Res>
    implements $FolderInfoCopyWith<$Res> {
  factory _$$_FolderInfoCopyWith(
          _$_FolderInfo value, $Res Function(_$_FolderInfo) then) =
      __$$_FolderInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? updatedAt,
      String? createdAt,
      String? userId,
      String? name,
      String? path,
      int? size,
      String? itemId,
      String? type,
      UserInfo? user});

  @override
  $UserInfoCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_FolderInfoCopyWithImpl<$Res>
    extends _$FolderInfoCopyWithImpl<$Res, _$_FolderInfo>
    implements _$$_FolderInfoCopyWith<$Res> {
  __$$_FolderInfoCopyWithImpl(
      _$_FolderInfo _value, $Res Function(_$_FolderInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? userId = freezed,
    Object? name = freezed,
    Object? path = freezed,
    Object? size = freezed,
    Object? itemId = freezed,
    Object? type = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_FolderInfo(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInfo?,
    ));
  }
}

/// @nodoc

class _$_FolderInfo implements _FolderInfo {
  const _$_FolderInfo(
      {this.id,
      this.updatedAt,
      this.createdAt,
      this.userId,
      this.name,
      this.path,
      this.size,
      this.itemId,
      this.type,
      this.user});

  @override
  final String? id;
  @override
  final String? updatedAt;
  @override
  final String? createdAt;
  @override
  final String? userId;
  @override
  final String? name;
  @override
  final String? path;
  @override
  final int? size;
  @override
  final String? itemId;
  @override
  final String? type;
  @override
  final UserInfo? user;

  @override
  String toString() {
    return 'FolderInfo(id: $id, updatedAt: $updatedAt, createdAt: $createdAt, userId: $userId, name: $name, path: $path, size: $size, itemId: $itemId, type: $type, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FolderInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, updatedAt, createdAt, userId,
      name, path, size, itemId, type, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FolderInfoCopyWith<_$_FolderInfo> get copyWith =>
      __$$_FolderInfoCopyWithImpl<_$_FolderInfo>(this, _$identity);
}

abstract class _FolderInfo implements FolderInfo {
  const factory _FolderInfo(
      {final String? id,
      final String? updatedAt,
      final String? createdAt,
      final String? userId,
      final String? name,
      final String? path,
      final int? size,
      final String? itemId,
      final String? type,
      final UserInfo? user}) = _$_FolderInfo;

  @override
  String? get id;
  @override
  String? get updatedAt;
  @override
  String? get createdAt;
  @override
  String? get userId;
  @override
  String? get name;
  @override
  String? get path;
  @override
  int? get size;
  @override
  String? get itemId;
  @override
  String? get type;
  @override
  UserInfo? get user;
  @override
  @JsonKey(ignore: true)
  _$$_FolderInfoCopyWith<_$_FolderInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserInfo {
  String? get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone_number => throw _privateConstructorUsedError;
  String? get avatar_url => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserInfoCopyWith<UserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoCopyWith<$Res> {
  factory $UserInfoCopyWith(UserInfo value, $Res Function(UserInfo) then) =
      _$UserInfoCopyWithImpl<$Res, UserInfo>;
  @useResult
  $Res call(
      {String? id,
      String? email,
      String? phone_number,
      String? avatar_url,
      String? name});
}

/// @nodoc
class _$UserInfoCopyWithImpl<$Res, $Val extends UserInfo>
    implements $UserInfoCopyWith<$Res> {
  _$UserInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? phone_number = freezed,
    Object? avatar_url = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone_number: freezed == phone_number
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar_url: freezed == avatar_url
          ? _value.avatar_url
          : avatar_url // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserInfoCopyWith<$Res> implements $UserInfoCopyWith<$Res> {
  factory _$$_UserInfoCopyWith(
          _$_UserInfo value, $Res Function(_$_UserInfo) then) =
      __$$_UserInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? email,
      String? phone_number,
      String? avatar_url,
      String? name});
}

/// @nodoc
class __$$_UserInfoCopyWithImpl<$Res>
    extends _$UserInfoCopyWithImpl<$Res, _$_UserInfo>
    implements _$$_UserInfoCopyWith<$Res> {
  __$$_UserInfoCopyWithImpl(
      _$_UserInfo _value, $Res Function(_$_UserInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? phone_number = freezed,
    Object? avatar_url = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_UserInfo(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone_number: freezed == phone_number
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar_url: freezed == avatar_url
          ? _value.avatar_url
          : avatar_url // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UserInfo implements _UserInfo {
  const _$_UserInfo(
      {this.id, this.email, this.phone_number, this.avatar_url, this.name});

  @override
  final String? id;
  @override
  final String? email;
  @override
  final String? phone_number;
  @override
  final String? avatar_url;
  @override
  final String? name;

  @override
  String toString() {
    return 'UserInfo(id: $id, email: $email, phone_number: $phone_number, avatar_url: $avatar_url, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone_number, phone_number) ||
                other.phone_number == phone_number) &&
            (identical(other.avatar_url, avatar_url) ||
                other.avatar_url == avatar_url) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, email, phone_number, avatar_url, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserInfoCopyWith<_$_UserInfo> get copyWith =>
      __$$_UserInfoCopyWithImpl<_$_UserInfo>(this, _$identity);
}

abstract class _UserInfo implements UserInfo {
  const factory _UserInfo(
      {final String? id,
      final String? email,
      final String? phone_number,
      final String? avatar_url,
      final String? name}) = _$_UserInfo;

  @override
  String? get id;
  @override
  String? get email;
  @override
  String? get phone_number;
  @override
  String? get avatar_url;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_UserInfoCopyWith<_$_UserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_project_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailProjectState {
  bool get isLoading => throw _privateConstructorUsedError;
  FolderInfo get folder => throw _privateConstructorUsedError;
  String get createdDate => throw _privateConstructorUsedError;
  String get updatedDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailProjectStateCopyWith<DetailProjectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailProjectStateCopyWith<$Res> {
  factory $DetailProjectStateCopyWith(
          DetailProjectState value, $Res Function(DetailProjectState) then) =
      _$DetailProjectStateCopyWithImpl<$Res, DetailProjectState>;
  @useResult
  $Res call(
      {bool isLoading,
      FolderInfo folder,
      String createdDate,
      String updatedDate});

  $FolderInfoCopyWith<$Res> get folder;
}

/// @nodoc
class _$DetailProjectStateCopyWithImpl<$Res, $Val extends DetailProjectState>
    implements $DetailProjectStateCopyWith<$Res> {
  _$DetailProjectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? folder = null,
    Object? createdDate = null,
    Object? updatedDate = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      folder: null == folder
          ? _value.folder
          : folder // ignore: cast_nullable_to_non_nullable
              as FolderInfo,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String,
      updatedDate: null == updatedDate
          ? _value.updatedDate
          : updatedDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FolderInfoCopyWith<$Res> get folder {
    return $FolderInfoCopyWith<$Res>(_value.folder, (value) {
      return _then(_value.copyWith(folder: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DetailProjectStateCopyWith<$Res>
    implements $DetailProjectStateCopyWith<$Res> {
  factory _$$_DetailProjectStateCopyWith(_$_DetailProjectState value,
          $Res Function(_$_DetailProjectState) then) =
      __$$_DetailProjectStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      FolderInfo folder,
      String createdDate,
      String updatedDate});

  @override
  $FolderInfoCopyWith<$Res> get folder;
}

/// @nodoc
class __$$_DetailProjectStateCopyWithImpl<$Res>
    extends _$DetailProjectStateCopyWithImpl<$Res, _$_DetailProjectState>
    implements _$$_DetailProjectStateCopyWith<$Res> {
  __$$_DetailProjectStateCopyWithImpl(
      _$_DetailProjectState _value, $Res Function(_$_DetailProjectState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? folder = null,
    Object? createdDate = null,
    Object? updatedDate = null,
  }) {
    return _then(_$_DetailProjectState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      folder: null == folder
          ? _value.folder
          : folder // ignore: cast_nullable_to_non_nullable
              as FolderInfo,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String,
      updatedDate: null == updatedDate
          ? _value.updatedDate
          : updatedDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DetailProjectState implements _DetailProjectState {
  const _$_DetailProjectState(
      {this.isLoading = false,
      this.folder = const FolderInfo(),
      this.createdDate = '',
      this.updatedDate = ''});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final FolderInfo folder;
  @override
  @JsonKey()
  final String createdDate;
  @override
  @JsonKey()
  final String updatedDate;

  @override
  String toString() {
    return 'DetailProjectState(isLoading: $isLoading, folder: $folder, createdDate: $createdDate, updatedDate: $updatedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailProjectState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.folder, folder) || other.folder == folder) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.updatedDate, updatedDate) ||
                other.updatedDate == updatedDate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, folder, createdDate, updatedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailProjectStateCopyWith<_$_DetailProjectState> get copyWith =>
      __$$_DetailProjectStateCopyWithImpl<_$_DetailProjectState>(
          this, _$identity);
}

abstract class _DetailProjectState implements DetailProjectState {
  const factory _DetailProjectState(
      {final bool isLoading,
      final FolderInfo folder,
      final String createdDate,
      final String updatedDate}) = _$_DetailProjectState;

  @override
  bool get isLoading;
  @override
  FolderInfo get folder;
  @override
  String get createdDate;
  @override
  String get updatedDate;
  @override
  @JsonKey(ignore: true)
  _$$_DetailProjectStateCopyWith<_$_DetailProjectState> get copyWith =>
      throw _privateConstructorUsedError;
}

FolderInfo _$FolderInfoFromJson(Map<String, dynamic> json) {
  return _FolderInfo.fromJson(json);
}

/// @nodoc
mixin _$FolderInfo {
  int? get id => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  int? get creatorId => throw _privateConstructorUsedError;
  int? get parentCategoryId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
      {int? id,
      String? updatedAt,
      String? createdAt,
      int? creatorId,
      int? parentCategoryId,
      String? name});
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
    Object? creatorId = freezed,
    Object? parentCategoryId = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorId: freezed == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      parentCategoryId: freezed == parentCategoryId
          ? _value.parentCategoryId
          : parentCategoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
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
      {int? id,
      String? updatedAt,
      String? createdAt,
      int? creatorId,
      int? parentCategoryId,
      String? name});
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
    Object? creatorId = freezed,
    Object? parentCategoryId = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_FolderInfo(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorId: freezed == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      parentCategoryId: freezed == parentCategoryId
          ? _value.parentCategoryId
          : parentCategoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FolderInfo implements _FolderInfo {
  const _$_FolderInfo(
      {this.id,
      this.updatedAt,
      this.createdAt,
      this.creatorId,
      this.parentCategoryId,
      this.name});

  factory _$_FolderInfo.fromJson(Map<String, dynamic> json) =>
      _$$_FolderInfoFromJson(json);

  @override
  final int? id;
  @override
  final String? updatedAt;
  @override
  final String? createdAt;
  @override
  final int? creatorId;
  @override
  final int? parentCategoryId;
  @override
  final String? name;

  @override
  String toString() {
    return 'FolderInfo(id: $id, updatedAt: $updatedAt, createdAt: $createdAt, creatorId: $creatorId, parentCategoryId: $parentCategoryId, name: $name)';
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
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.parentCategoryId, parentCategoryId) ||
                other.parentCategoryId == parentCategoryId) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, updatedAt, createdAt, creatorId, parentCategoryId, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FolderInfoCopyWith<_$_FolderInfo> get copyWith =>
      __$$_FolderInfoCopyWithImpl<_$_FolderInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FolderInfoToJson(
      this,
    );
  }
}

abstract class _FolderInfo implements FolderInfo {
  const factory _FolderInfo(
      {final int? id,
      final String? updatedAt,
      final String? createdAt,
      final int? creatorId,
      final int? parentCategoryId,
      final String? name}) = _$_FolderInfo;

  factory _FolderInfo.fromJson(Map<String, dynamic> json) =
      _$_FolderInfo.fromJson;

  @override
  int? get id;
  @override
  String? get updatedAt;
  @override
  String? get createdAt;
  @override
  int? get creatorId;
  @override
  int? get parentCategoryId;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_FolderInfoCopyWith<_$_FolderInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

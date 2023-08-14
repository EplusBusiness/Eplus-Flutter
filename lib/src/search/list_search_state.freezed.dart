// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListSearchState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<FolderInfo> get listFolders => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListSearchStateCopyWith<ListSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListSearchStateCopyWith<$Res> {
  factory $ListSearchStateCopyWith(
          ListSearchState value, $Res Function(ListSearchState) then) =
      _$ListSearchStateCopyWithImpl<$Res, ListSearchState>;
  @useResult
  $Res call({bool isLoading, List<FolderInfo> listFolders});
}

/// @nodoc
class _$ListSearchStateCopyWithImpl<$Res, $Val extends ListSearchState>
    implements $ListSearchStateCopyWith<$Res> {
  _$ListSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? listFolders = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      listFolders: null == listFolders
          ? _value.listFolders
          : listFolders // ignore: cast_nullable_to_non_nullable
              as List<FolderInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListSearchStateCopyWith<$Res>
    implements $ListSearchStateCopyWith<$Res> {
  factory _$$_ListSearchStateCopyWith(
          _$_ListSearchState value, $Res Function(_$_ListSearchState) then) =
      __$$_ListSearchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<FolderInfo> listFolders});
}

/// @nodoc
class __$$_ListSearchStateCopyWithImpl<$Res>
    extends _$ListSearchStateCopyWithImpl<$Res, _$_ListSearchState>
    implements _$$_ListSearchStateCopyWith<$Res> {
  __$$_ListSearchStateCopyWithImpl(
      _$_ListSearchState _value, $Res Function(_$_ListSearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? listFolders = null,
  }) {
    return _then(_$_ListSearchState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      listFolders: null == listFolders
          ? _value._listFolders
          : listFolders // ignore: cast_nullable_to_non_nullable
              as List<FolderInfo>,
    ));
  }
}

/// @nodoc

class _$_ListSearchState implements _ListSearchState {
  const _$_ListSearchState(
      {this.isLoading = false,
      final List<FolderInfo> listFolders = const <FolderInfo>[]})
      : _listFolders = listFolders;

  @override
  @JsonKey()
  final bool isLoading;
  final List<FolderInfo> _listFolders;
  @override
  @JsonKey()
  List<FolderInfo> get listFolders {
    if (_listFolders is EqualUnmodifiableListView) return _listFolders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listFolders);
  }

  @override
  String toString() {
    return 'ListSearchState(isLoading: $isLoading, listFolders: $listFolders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListSearchState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._listFolders, _listFolders));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_listFolders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListSearchStateCopyWith<_$_ListSearchState> get copyWith =>
      __$$_ListSearchStateCopyWithImpl<_$_ListSearchState>(this, _$identity);
}

abstract class _ListSearchState implements ListSearchState {
  const factory _ListSearchState(
      {final bool isLoading,
      final List<FolderInfo> listFolders}) = _$_ListSearchState;

  @override
  bool get isLoading;
  @override
  List<FolderInfo> get listFolders;
  @override
  @JsonKey(ignore: true)
  _$$_ListSearchStateCopyWith<_$_ListSearchState> get copyWith =>
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
  List<ChildInfo>? get childCategory => throw _privateConstructorUsedError;

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
      String? name,
      List<ChildInfo>? childCategory});
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
    Object? childCategory = freezed,
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
      childCategory: freezed == childCategory
          ? _value.childCategory
          : childCategory // ignore: cast_nullable_to_non_nullable
              as List<ChildInfo>?,
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
      String? name,
      List<ChildInfo>? childCategory});
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
    Object? childCategory = freezed,
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
      childCategory: freezed == childCategory
          ? _value._childCategory
          : childCategory // ignore: cast_nullable_to_non_nullable
              as List<ChildInfo>?,
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
      this.name,
      final List<ChildInfo>? childCategory})
      : _childCategory = childCategory;

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
  final List<ChildInfo>? _childCategory;
  @override
  List<ChildInfo>? get childCategory {
    final value = _childCategory;
    if (value == null) return null;
    if (_childCategory is EqualUnmodifiableListView) return _childCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FolderInfo(id: $id, updatedAt: $updatedAt, createdAt: $createdAt, creatorId: $creatorId, parentCategoryId: $parentCategoryId, name: $name, childCategory: $childCategory)';
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
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._childCategory, _childCategory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      updatedAt,
      createdAt,
      creatorId,
      parentCategoryId,
      name,
      const DeepCollectionEquality().hash(_childCategory));

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
      final String? name,
      final List<ChildInfo>? childCategory}) = _$_FolderInfo;

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
  List<ChildInfo>? get childCategory;
  @override
  @JsonKey(ignore: true)
  _$$_FolderInfoCopyWith<_$_FolderInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

ChildInfo _$ChildInfoFromJson(Map<String, dynamic> json) {
  return _ChildInfo.fromJson(json);
}

/// @nodoc
mixin _$ChildInfo {
  int? get id => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  int? get creatorId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildInfoCopyWith<ChildInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildInfoCopyWith<$Res> {
  factory $ChildInfoCopyWith(ChildInfo value, $Res Function(ChildInfo) then) =
      _$ChildInfoCopyWithImpl<$Res, ChildInfo>;
  @useResult
  $Res call(
      {int? id,
      String? updatedAt,
      String? createdAt,
      int? creatorId,
      String? name});
}

/// @nodoc
class _$ChildInfoCopyWithImpl<$Res, $Val extends ChildInfo>
    implements $ChildInfoCopyWith<$Res> {
  _$ChildInfoCopyWithImpl(this._value, this._then);

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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChildInfoCopyWith<$Res> implements $ChildInfoCopyWith<$Res> {
  factory _$$_ChildInfoCopyWith(
          _$_ChildInfo value, $Res Function(_$_ChildInfo) then) =
      __$$_ChildInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? updatedAt,
      String? createdAt,
      int? creatorId,
      String? name});
}

/// @nodoc
class __$$_ChildInfoCopyWithImpl<$Res>
    extends _$ChildInfoCopyWithImpl<$Res, _$_ChildInfo>
    implements _$$_ChildInfoCopyWith<$Res> {
  __$$_ChildInfoCopyWithImpl(
      _$_ChildInfo _value, $Res Function(_$_ChildInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? creatorId = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_ChildInfo(
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChildInfo implements _ChildInfo {
  const _$_ChildInfo(
      {this.id, this.updatedAt, this.createdAt, this.creatorId, this.name});

  factory _$_ChildInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ChildInfoFromJson(json);

  @override
  final int? id;
  @override
  final String? updatedAt;
  @override
  final String? createdAt;
  @override
  final int? creatorId;
  @override
  final String? name;

  @override
  String toString() {
    return 'ChildInfo(id: $id, updatedAt: $updatedAt, createdAt: $createdAt, creatorId: $creatorId, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChildInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, updatedAt, createdAt, creatorId, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChildInfoCopyWith<_$_ChildInfo> get copyWith =>
      __$$_ChildInfoCopyWithImpl<_$_ChildInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChildInfoToJson(
      this,
    );
  }
}

abstract class _ChildInfo implements ChildInfo {
  const factory _ChildInfo(
      {final int? id,
      final String? updatedAt,
      final String? createdAt,
      final int? creatorId,
      final String? name}) = _$_ChildInfo;

  factory _ChildInfo.fromJson(Map<String, dynamic> json) =
      _$_ChildInfo.fromJson;

  @override
  int? get id;
  @override
  String? get updatedAt;
  @override
  String? get createdAt;
  @override
  int? get creatorId;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_ChildInfoCopyWith<_$_ChildInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

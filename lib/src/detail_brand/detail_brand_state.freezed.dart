// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_brand_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailBrandState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<DetailFolderInfo> get listFolders => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailBrandStateCopyWith<DetailBrandState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailBrandStateCopyWith<$Res> {
  factory $DetailBrandStateCopyWith(
          DetailBrandState value, $Res Function(DetailBrandState) then) =
      _$DetailBrandStateCopyWithImpl<$Res, DetailBrandState>;
  @useResult
  $Res call({bool isLoading, List<DetailFolderInfo> listFolders});
}

/// @nodoc
class _$DetailBrandStateCopyWithImpl<$Res, $Val extends DetailBrandState>
    implements $DetailBrandStateCopyWith<$Res> {
  _$DetailBrandStateCopyWithImpl(this._value, this._then);

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
              as List<DetailFolderInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetailBrandStateCopyWith<$Res>
    implements $DetailBrandStateCopyWith<$Res> {
  factory _$$_DetailBrandStateCopyWith(
          _$_DetailBrandState value, $Res Function(_$_DetailBrandState) then) =
      __$$_DetailBrandStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<DetailFolderInfo> listFolders});
}

/// @nodoc
class __$$_DetailBrandStateCopyWithImpl<$Res>
    extends _$DetailBrandStateCopyWithImpl<$Res, _$_DetailBrandState>
    implements _$$_DetailBrandStateCopyWith<$Res> {
  __$$_DetailBrandStateCopyWithImpl(
      _$_DetailBrandState _value, $Res Function(_$_DetailBrandState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? listFolders = null,
  }) {
    return _then(_$_DetailBrandState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      listFolders: null == listFolders
          ? _value._listFolders
          : listFolders // ignore: cast_nullable_to_non_nullable
              as List<DetailFolderInfo>,
    ));
  }
}

/// @nodoc

class _$_DetailBrandState implements _DetailBrandState {
  const _$_DetailBrandState(
      {this.isLoading = false,
      final List<DetailFolderInfo> listFolders = const <DetailFolderInfo>[]})
      : _listFolders = listFolders;

  @override
  @JsonKey()
  final bool isLoading;
  final List<DetailFolderInfo> _listFolders;
  @override
  @JsonKey()
  List<DetailFolderInfo> get listFolders {
    if (_listFolders is EqualUnmodifiableListView) return _listFolders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listFolders);
  }

  @override
  String toString() {
    return 'DetailBrandState(isLoading: $isLoading, listFolders: $listFolders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailBrandState &&
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
  _$$_DetailBrandStateCopyWith<_$_DetailBrandState> get copyWith =>
      __$$_DetailBrandStateCopyWithImpl<_$_DetailBrandState>(this, _$identity);
}

abstract class _DetailBrandState implements DetailBrandState {
  const factory _DetailBrandState(
      {final bool isLoading,
      final List<DetailFolderInfo> listFolders}) = _$_DetailBrandState;

  @override
  bool get isLoading;
  @override
  List<DetailFolderInfo> get listFolders;
  @override
  @JsonKey(ignore: true)
  _$$_DetailBrandStateCopyWith<_$_DetailBrandState> get copyWith =>
      throw _privateConstructorUsedError;
}

DetailFolderInfo _$DetailFolderInfoFromJson(Map<String, dynamic> json) {
  return _DetailFolderInfo.fromJson(json);
}

/// @nodoc
mixin _$DetailFolderInfo {
  int? get id => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  int? get creatorId => throw _privateConstructorUsedError;
  int? get categoryId => throw _privateConstructorUsedError;
  List<FormInfo>? get formRequest => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailFolderInfoCopyWith<DetailFolderInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailFolderInfoCopyWith<$Res> {
  factory $DetailFolderInfoCopyWith(
          DetailFolderInfo value, $Res Function(DetailFolderInfo) then) =
      _$DetailFolderInfoCopyWithImpl<$Res, DetailFolderInfo>;
  @useResult
  $Res call(
      {int? id,
      String? updatedAt,
      String? createdAt,
      int? creatorId,
      int? categoryId,
      List<FormInfo>? formRequest,
      String? name});
}

/// @nodoc
class _$DetailFolderInfoCopyWithImpl<$Res, $Val extends DetailFolderInfo>
    implements $DetailFolderInfoCopyWith<$Res> {
  _$DetailFolderInfoCopyWithImpl(this._value, this._then);

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
    Object? categoryId = freezed,
    Object? formRequest = freezed,
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
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      formRequest: freezed == formRequest
          ? _value.formRequest
          : formRequest // ignore: cast_nullable_to_non_nullable
              as List<FormInfo>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetailFolderInfoCopyWith<$Res>
    implements $DetailFolderInfoCopyWith<$Res> {
  factory _$$_DetailFolderInfoCopyWith(
          _$_DetailFolderInfo value, $Res Function(_$_DetailFolderInfo) then) =
      __$$_DetailFolderInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? updatedAt,
      String? createdAt,
      int? creatorId,
      int? categoryId,
      List<FormInfo>? formRequest,
      String? name});
}

/// @nodoc
class __$$_DetailFolderInfoCopyWithImpl<$Res>
    extends _$DetailFolderInfoCopyWithImpl<$Res, _$_DetailFolderInfo>
    implements _$$_DetailFolderInfoCopyWith<$Res> {
  __$$_DetailFolderInfoCopyWithImpl(
      _$_DetailFolderInfo _value, $Res Function(_$_DetailFolderInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? creatorId = freezed,
    Object? categoryId = freezed,
    Object? formRequest = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_DetailFolderInfo(
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
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      formRequest: freezed == formRequest
          ? _value._formRequest
          : formRequest // ignore: cast_nullable_to_non_nullable
              as List<FormInfo>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailFolderInfo implements _DetailFolderInfo {
  const _$_DetailFolderInfo(
      {this.id,
      this.updatedAt,
      this.createdAt,
      this.creatorId,
      this.categoryId,
      final List<FormInfo>? formRequest,
      this.name})
      : _formRequest = formRequest;

  factory _$_DetailFolderInfo.fromJson(Map<String, dynamic> json) =>
      _$$_DetailFolderInfoFromJson(json);

  @override
  final int? id;
  @override
  final String? updatedAt;
  @override
  final String? createdAt;
  @override
  final int? creatorId;
  @override
  final int? categoryId;
  final List<FormInfo>? _formRequest;
  @override
  List<FormInfo>? get formRequest {
    final value = _formRequest;
    if (value == null) return null;
    if (_formRequest is EqualUnmodifiableListView) return _formRequest;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? name;

  @override
  String toString() {
    return 'DetailFolderInfo(id: $id, updatedAt: $updatedAt, createdAt: $createdAt, creatorId: $creatorId, categoryId: $categoryId, formRequest: $formRequest, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailFolderInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            const DeepCollectionEquality()
                .equals(other._formRequest, _formRequest) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      updatedAt,
      createdAt,
      creatorId,
      categoryId,
      const DeepCollectionEquality().hash(_formRequest),
      name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailFolderInfoCopyWith<_$_DetailFolderInfo> get copyWith =>
      __$$_DetailFolderInfoCopyWithImpl<_$_DetailFolderInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailFolderInfoToJson(
      this,
    );
  }
}

abstract class _DetailFolderInfo implements DetailFolderInfo {
  const factory _DetailFolderInfo(
      {final int? id,
      final String? updatedAt,
      final String? createdAt,
      final int? creatorId,
      final int? categoryId,
      final List<FormInfo>? formRequest,
      final String? name}) = _$_DetailFolderInfo;

  factory _DetailFolderInfo.fromJson(Map<String, dynamic> json) =
      _$_DetailFolderInfo.fromJson;

  @override
  int? get id;
  @override
  String? get updatedAt;
  @override
  String? get createdAt;
  @override
  int? get creatorId;
  @override
  int? get categoryId;
  @override
  List<FormInfo>? get formRequest;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_DetailFolderInfoCopyWith<_$_DetailFolderInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

FormInfo _$FormInfoFromJson(Map<String, dynamic> json) {
  return _FormInfo.fromJson(json);
}

/// @nodoc
mixin _$FormInfo {
  int? get id => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormInfoCopyWith<FormInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormInfoCopyWith<$Res> {
  factory $FormInfoCopyWith(FormInfo value, $Res Function(FormInfo) then) =
      _$FormInfoCopyWithImpl<$Res, FormInfo>;
  @useResult
  $Res call({int? id, String? updatedAt, String? createdAt});
}

/// @nodoc
class _$FormInfoCopyWithImpl<$Res, $Val extends FormInfo>
    implements $FormInfoCopyWith<$Res> {
  _$FormInfoCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FormInfoCopyWith<$Res> implements $FormInfoCopyWith<$Res> {
  factory _$$_FormInfoCopyWith(
          _$_FormInfo value, $Res Function(_$_FormInfo) then) =
      __$$_FormInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? updatedAt, String? createdAt});
}

/// @nodoc
class __$$_FormInfoCopyWithImpl<$Res>
    extends _$FormInfoCopyWithImpl<$Res, _$_FormInfo>
    implements _$$_FormInfoCopyWith<$Res> {
  __$$_FormInfoCopyWithImpl(
      _$_FormInfo _value, $Res Function(_$_FormInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_FormInfo(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FormInfo implements _FormInfo {
  const _$_FormInfo({this.id, this.updatedAt, this.createdAt});

  factory _$_FormInfo.fromJson(Map<String, dynamic> json) =>
      _$$_FormInfoFromJson(json);

  @override
  final int? id;
  @override
  final String? updatedAt;
  @override
  final String? createdAt;

  @override
  String toString() {
    return 'FormInfo(id: $id, updatedAt: $updatedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FormInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, updatedAt, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FormInfoCopyWith<_$_FormInfo> get copyWith =>
      __$$_FormInfoCopyWithImpl<_$_FormInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FormInfoToJson(
      this,
    );
  }
}

abstract class _FormInfo implements FormInfo {
  const factory _FormInfo(
      {final int? id,
      final String? updatedAt,
      final String? createdAt}) = _$_FormInfo;

  factory _FormInfo.fromJson(Map<String, dynamic> json) = _$_FormInfo.fromJson;

  @override
  int? get id;
  @override
  String? get updatedAt;
  @override
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_FormInfoCopyWith<_$_FormInfo> get copyWith =>
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
  int? get categoryId => throw _privateConstructorUsedError;
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
      int? categoryId,
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
    Object? categoryId = freezed,
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
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
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
      int? categoryId,
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
    Object? categoryId = freezed,
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
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
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
      {this.id, this.updatedAt, this.createdAt, this.categoryId, this.name});

  factory _$_FolderInfo.fromJson(Map<String, dynamic> json) =>
      _$$_FolderInfoFromJson(json);

  @override
  final int? id;
  @override
  final String? updatedAt;
  @override
  final String? createdAt;
  @override
  final int? categoryId;
  @override
  final String? name;

  @override
  String toString() {
    return 'FolderInfo(id: $id, updatedAt: $updatedAt, createdAt: $createdAt, categoryId: $categoryId, name: $name)';
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
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, updatedAt, createdAt, categoryId, name);

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
      final int? categoryId,
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
  int? get categoryId;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_FolderInfoCopyWith<_$_FolderInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

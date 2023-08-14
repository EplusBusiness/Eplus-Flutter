// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'storage_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StorageState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<ItemInfo> get listItems => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StorageStateCopyWith<StorageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageStateCopyWith<$Res> {
  factory $StorageStateCopyWith(
          StorageState value, $Res Function(StorageState) then) =
      _$StorageStateCopyWithImpl<$Res, StorageState>;
  @useResult
  $Res call({bool isLoading, List<ItemInfo> listItems});
}

/// @nodoc
class _$StorageStateCopyWithImpl<$Res, $Val extends StorageState>
    implements $StorageStateCopyWith<$Res> {
  _$StorageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? listItems = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      listItems: null == listItems
          ? _value.listItems
          : listItems // ignore: cast_nullable_to_non_nullable
              as List<ItemInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StorageStateCopyWith<$Res>
    implements $StorageStateCopyWith<$Res> {
  factory _$$_StorageStateCopyWith(
          _$_StorageState value, $Res Function(_$_StorageState) then) =
      __$$_StorageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<ItemInfo> listItems});
}

/// @nodoc
class __$$_StorageStateCopyWithImpl<$Res>
    extends _$StorageStateCopyWithImpl<$Res, _$_StorageState>
    implements _$$_StorageStateCopyWith<$Res> {
  __$$_StorageStateCopyWithImpl(
      _$_StorageState _value, $Res Function(_$_StorageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? listItems = null,
  }) {
    return _then(_$_StorageState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      listItems: null == listItems
          ? _value._listItems
          : listItems // ignore: cast_nullable_to_non_nullable
              as List<ItemInfo>,
    ));
  }
}

/// @nodoc

class _$_StorageState implements _StorageState {
  const _$_StorageState(
      {this.isLoading = false,
      final List<ItemInfo> listItems = const <ItemInfo>[]})
      : _listItems = listItems;

  @override
  @JsonKey()
  final bool isLoading;
  final List<ItemInfo> _listItems;
  @override
  @JsonKey()
  List<ItemInfo> get listItems {
    if (_listItems is EqualUnmodifiableListView) return _listItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listItems);
  }

  @override
  String toString() {
    return 'StorageState(isLoading: $isLoading, listItems: $listItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StorageState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._listItems, _listItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_listItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StorageStateCopyWith<_$_StorageState> get copyWith =>
      __$$_StorageStateCopyWithImpl<_$_StorageState>(this, _$identity);
}

abstract class _StorageState implements StorageState {
  const factory _StorageState(
      {final bool isLoading, final List<ItemInfo> listItems}) = _$_StorageState;

  @override
  bool get isLoading;
  @override
  List<ItemInfo> get listItems;
  @override
  @JsonKey(ignore: true)
  _$$_StorageStateCopyWith<_$_StorageState> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemInfo _$ItemInfoFromJson(Map<String, dynamic> json) {
  return _ItemInfo.fromJson(json);
}

/// @nodoc
mixin _$ItemInfo {
  int? get id => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get creatorId => throw _privateConstructorUsedError;
  int? get stock => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  int? get categoryId => throw _privateConstructorUsedError;
  Attachment? get attachment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemInfoCopyWith<ItemInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemInfoCopyWith<$Res> {
  factory $ItemInfoCopyWith(ItemInfo value, $Res Function(ItemInfo) then) =
      _$ItemInfoCopyWithImpl<$Res, ItemInfo>;
  @useResult
  $Res call(
      {int? id,
      String? updatedAt,
      String? createdAt,
      String? name,
      int? creatorId,
      int? stock,
      String? unit,
      String? code,
      int? categoryId,
      Attachment? attachment});

  $AttachmentCopyWith<$Res>? get attachment;
}

/// @nodoc
class _$ItemInfoCopyWithImpl<$Res, $Val extends ItemInfo>
    implements $ItemInfoCopyWith<$Res> {
  _$ItemInfoCopyWithImpl(this._value, this._then);

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
    Object? name = freezed,
    Object? creatorId = freezed,
    Object? stock = freezed,
    Object? unit = freezed,
    Object? code = freezed,
    Object? categoryId = freezed,
    Object? attachment = freezed,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorId: freezed == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      attachment: freezed == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AttachmentCopyWith<$Res>? get attachment {
    if (_value.attachment == null) {
      return null;
    }

    return $AttachmentCopyWith<$Res>(_value.attachment!, (value) {
      return _then(_value.copyWith(attachment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ItemInfoCopyWith<$Res> implements $ItemInfoCopyWith<$Res> {
  factory _$$_ItemInfoCopyWith(
          _$_ItemInfo value, $Res Function(_$_ItemInfo) then) =
      __$$_ItemInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? updatedAt,
      String? createdAt,
      String? name,
      int? creatorId,
      int? stock,
      String? unit,
      String? code,
      int? categoryId,
      Attachment? attachment});

  @override
  $AttachmentCopyWith<$Res>? get attachment;
}

/// @nodoc
class __$$_ItemInfoCopyWithImpl<$Res>
    extends _$ItemInfoCopyWithImpl<$Res, _$_ItemInfo>
    implements _$$_ItemInfoCopyWith<$Res> {
  __$$_ItemInfoCopyWithImpl(
      _$_ItemInfo _value, $Res Function(_$_ItemInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? name = freezed,
    Object? creatorId = freezed,
    Object? stock = freezed,
    Object? unit = freezed,
    Object? code = freezed,
    Object? categoryId = freezed,
    Object? attachment = freezed,
  }) {
    return _then(_$_ItemInfo(
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorId: freezed == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      attachment: freezed == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemInfo implements _ItemInfo {
  const _$_ItemInfo(
      {this.id,
      this.updatedAt,
      this.createdAt,
      this.name,
      this.creatorId,
      this.stock,
      this.unit,
      this.code,
      this.categoryId,
      this.attachment});

  factory _$_ItemInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ItemInfoFromJson(json);

  @override
  final int? id;
  @override
  final String? updatedAt;
  @override
  final String? createdAt;
  @override
  final String? name;
  @override
  final int? creatorId;
  @override
  final int? stock;
  @override
  final String? unit;
  @override
  final String? code;
  @override
  final int? categoryId;
  @override
  final Attachment? attachment;

  @override
  String toString() {
    return 'ItemInfo(id: $id, updatedAt: $updatedAt, createdAt: $createdAt, name: $name, creatorId: $creatorId, stock: $stock, unit: $unit, code: $code, categoryId: $categoryId, attachment: $attachment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.attachment, attachment) ||
                other.attachment == attachment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, updatedAt, createdAt, name,
      creatorId, stock, unit, code, categoryId, attachment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemInfoCopyWith<_$_ItemInfo> get copyWith =>
      __$$_ItemInfoCopyWithImpl<_$_ItemInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemInfoToJson(
      this,
    );
  }
}

abstract class _ItemInfo implements ItemInfo {
  const factory _ItemInfo(
      {final int? id,
      final String? updatedAt,
      final String? createdAt,
      final String? name,
      final int? creatorId,
      final int? stock,
      final String? unit,
      final String? code,
      final int? categoryId,
      final Attachment? attachment}) = _$_ItemInfo;

  factory _ItemInfo.fromJson(Map<String, dynamic> json) = _$_ItemInfo.fromJson;

  @override
  int? get id;
  @override
  String? get updatedAt;
  @override
  String? get createdAt;
  @override
  String? get name;
  @override
  int? get creatorId;
  @override
  int? get stock;
  @override
  String? get unit;
  @override
  String? get code;
  @override
  int? get categoryId;
  @override
  Attachment? get attachment;
  @override
  @JsonKey(ignore: true)
  _$$_ItemInfoCopyWith<_$_ItemInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

Attachment _$AttachmentFromJson(Map<String, dynamic> json) {
  return _Attachment.fromJson(json);
}

/// @nodoc
mixin _$Attachment {
  String? get path => throw _privateConstructorUsedError;
  String? get ext => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttachmentCopyWith<Attachment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentCopyWith<$Res> {
  factory $AttachmentCopyWith(
          Attachment value, $Res Function(Attachment) then) =
      _$AttachmentCopyWithImpl<$Res, Attachment>;
  @useResult
  $Res call({String? path, String? ext});
}

/// @nodoc
class _$AttachmentCopyWithImpl<$Res, $Val extends Attachment>
    implements $AttachmentCopyWith<$Res> {
  _$AttachmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = freezed,
    Object? ext = freezed,
  }) {
    return _then(_value.copyWith(
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      ext: freezed == ext
          ? _value.ext
          : ext // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttachmentCopyWith<$Res>
    implements $AttachmentCopyWith<$Res> {
  factory _$$_AttachmentCopyWith(
          _$_Attachment value, $Res Function(_$_Attachment) then) =
      __$$_AttachmentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? path, String? ext});
}

/// @nodoc
class __$$_AttachmentCopyWithImpl<$Res>
    extends _$AttachmentCopyWithImpl<$Res, _$_Attachment>
    implements _$$_AttachmentCopyWith<$Res> {
  __$$_AttachmentCopyWithImpl(
      _$_Attachment _value, $Res Function(_$_Attachment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = freezed,
    Object? ext = freezed,
  }) {
    return _then(_$_Attachment(
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      ext: freezed == ext
          ? _value.ext
          : ext // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Attachment implements _Attachment {
  const _$_Attachment({this.path, this.ext});

  factory _$_Attachment.fromJson(Map<String, dynamic> json) =>
      _$$_AttachmentFromJson(json);

  @override
  final String? path;
  @override
  final String? ext;

  @override
  String toString() {
    return 'Attachment(path: $path, ext: $ext)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Attachment &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.ext, ext) || other.ext == ext));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, path, ext);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttachmentCopyWith<_$_Attachment> get copyWith =>
      __$$_AttachmentCopyWithImpl<_$_Attachment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttachmentToJson(
      this,
    );
  }
}

abstract class _Attachment implements Attachment {
  const factory _Attachment({final String? path, final String? ext}) =
      _$_Attachment;

  factory _Attachment.fromJson(Map<String, dynamic> json) =
      _$_Attachment.fromJson;

  @override
  String? get path;
  @override
  String? get ext;
  @override
  @JsonKey(ignore: true)
  _$$_AttachmentCopyWith<_$_Attachment> get copyWith =>
      throw _privateConstructorUsedError;
}

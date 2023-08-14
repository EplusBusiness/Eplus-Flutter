// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_items_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddItemstState {
  bool get isLoading => throw _privateConstructorUsedError;
  AddItemInfo get itemInfo => throw _privateConstructorUsedError;
  AttachmentInfo get attachment => throw _privateConstructorUsedError;
  ItemInfo get item => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddItemstStateCopyWith<AddItemstState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddItemstStateCopyWith<$Res> {
  factory $AddItemstStateCopyWith(
          AddItemstState value, $Res Function(AddItemstState) then) =
      _$AddItemstStateCopyWithImpl<$Res, AddItemstState>;
  @useResult
  $Res call(
      {bool isLoading,
      AddItemInfo itemInfo,
      AttachmentInfo attachment,
      ItemInfo item});

  $AddItemInfoCopyWith<$Res> get itemInfo;
  $AttachmentInfoCopyWith<$Res> get attachment;
  $ItemInfoCopyWith<$Res> get item;
}

/// @nodoc
class _$AddItemstStateCopyWithImpl<$Res, $Val extends AddItemstState>
    implements $AddItemstStateCopyWith<$Res> {
  _$AddItemstStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? itemInfo = null,
    Object? attachment = null,
    Object? item = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      itemInfo: null == itemInfo
          ? _value.itemInfo
          : itemInfo // ignore: cast_nullable_to_non_nullable
              as AddItemInfo,
      attachment: null == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as AttachmentInfo,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddItemInfoCopyWith<$Res> get itemInfo {
    return $AddItemInfoCopyWith<$Res>(_value.itemInfo, (value) {
      return _then(_value.copyWith(itemInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AttachmentInfoCopyWith<$Res> get attachment {
    return $AttachmentInfoCopyWith<$Res>(_value.attachment, (value) {
      return _then(_value.copyWith(attachment: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemInfoCopyWith<$Res> get item {
    return $ItemInfoCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AddItemstStateCopyWith<$Res>
    implements $AddItemstStateCopyWith<$Res> {
  factory _$$_AddItemstStateCopyWith(
          _$_AddItemstState value, $Res Function(_$_AddItemstState) then) =
      __$$_AddItemstStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      AddItemInfo itemInfo,
      AttachmentInfo attachment,
      ItemInfo item});

  @override
  $AddItemInfoCopyWith<$Res> get itemInfo;
  @override
  $AttachmentInfoCopyWith<$Res> get attachment;
  @override
  $ItemInfoCopyWith<$Res> get item;
}

/// @nodoc
class __$$_AddItemstStateCopyWithImpl<$Res>
    extends _$AddItemstStateCopyWithImpl<$Res, _$_AddItemstState>
    implements _$$_AddItemstStateCopyWith<$Res> {
  __$$_AddItemstStateCopyWithImpl(
      _$_AddItemstState _value, $Res Function(_$_AddItemstState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? itemInfo = null,
    Object? attachment = null,
    Object? item = null,
  }) {
    return _then(_$_AddItemstState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      itemInfo: null == itemInfo
          ? _value.itemInfo
          : itemInfo // ignore: cast_nullable_to_non_nullable
              as AddItemInfo,
      attachment: null == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as AttachmentInfo,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemInfo,
    ));
  }
}

/// @nodoc

class _$_AddItemstState implements _AddItemstState {
  const _$_AddItemstState(
      {this.isLoading = false,
      this.itemInfo = const AddItemInfo(),
      this.attachment = const AttachmentInfo(),
      this.item = const ItemInfo()});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final AddItemInfo itemInfo;
  @override
  @JsonKey()
  final AttachmentInfo attachment;
  @override
  @JsonKey()
  final ItemInfo item;

  @override
  String toString() {
    return 'AddItemstState(isLoading: $isLoading, itemInfo: $itemInfo, attachment: $attachment, item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddItemstState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.itemInfo, itemInfo) ||
                other.itemInfo == itemInfo) &&
            (identical(other.attachment, attachment) ||
                other.attachment == attachment) &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, itemInfo, attachment, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddItemstStateCopyWith<_$_AddItemstState> get copyWith =>
      __$$_AddItemstStateCopyWithImpl<_$_AddItemstState>(this, _$identity);
}

abstract class _AddItemstState implements AddItemstState {
  const factory _AddItemstState(
      {final bool isLoading,
      final AddItemInfo itemInfo,
      final AttachmentInfo attachment,
      final ItemInfo item}) = _$_AddItemstState;

  @override
  bool get isLoading;
  @override
  AddItemInfo get itemInfo;
  @override
  AttachmentInfo get attachment;
  @override
  ItemInfo get item;
  @override
  @JsonKey(ignore: true)
  _$$_AddItemstStateCopyWith<_$_AddItemstState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddItemInfo {
  String? get code => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get categoryId => throw _privateConstructorUsedError;
  String? get stock => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;
  String? get image_url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddItemInfoCopyWith<AddItemInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddItemInfoCopyWith<$Res> {
  factory $AddItemInfoCopyWith(
          AddItemInfo value, $Res Function(AddItemInfo) then) =
      _$AddItemInfoCopyWithImpl<$Res, AddItemInfo>;
  @useResult
  $Res call(
      {String? code,
      String? name,
      int? categoryId,
      String? stock,
      String? unit,
      String? image_url});
}

/// @nodoc
class _$AddItemInfoCopyWithImpl<$Res, $Val extends AddItemInfo>
    implements $AddItemInfoCopyWith<$Res> {
  _$AddItemInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? categoryId = freezed,
    Object? stock = freezed,
    Object? unit = freezed,
    Object? image_url = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      image_url: freezed == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddItemInfoCopyWith<$Res>
    implements $AddItemInfoCopyWith<$Res> {
  factory _$$_AddItemInfoCopyWith(
          _$_AddItemInfo value, $Res Function(_$_AddItemInfo) then) =
      __$$_AddItemInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? code,
      String? name,
      int? categoryId,
      String? stock,
      String? unit,
      String? image_url});
}

/// @nodoc
class __$$_AddItemInfoCopyWithImpl<$Res>
    extends _$AddItemInfoCopyWithImpl<$Res, _$_AddItemInfo>
    implements _$$_AddItemInfoCopyWith<$Res> {
  __$$_AddItemInfoCopyWithImpl(
      _$_AddItemInfo _value, $Res Function(_$_AddItemInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? categoryId = freezed,
    Object? stock = freezed,
    Object? unit = freezed,
    Object? image_url = freezed,
  }) {
    return _then(_$_AddItemInfo(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      image_url: freezed == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AddItemInfo implements _AddItemInfo {
  const _$_AddItemInfo(
      {this.code,
      this.name,
      this.categoryId,
      this.stock,
      this.unit,
      this.image_url});

  @override
  final String? code;
  @override
  final String? name;
  @override
  final int? categoryId;
  @override
  final String? stock;
  @override
  final String? unit;
  @override
  final String? image_url;

  @override
  String toString() {
    return 'AddItemInfo(code: $code, name: $name, categoryId: $categoryId, stock: $stock, unit: $unit, image_url: $image_url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddItemInfo &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.image_url, image_url) ||
                other.image_url == image_url));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, code, name, categoryId, stock, unit, image_url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddItemInfoCopyWith<_$_AddItemInfo> get copyWith =>
      __$$_AddItemInfoCopyWithImpl<_$_AddItemInfo>(this, _$identity);
}

abstract class _AddItemInfo implements AddItemInfo {
  const factory _AddItemInfo(
      {final String? code,
      final String? name,
      final int? categoryId,
      final String? stock,
      final String? unit,
      final String? image_url}) = _$_AddItemInfo;

  @override
  String? get code;
  @override
  String? get name;
  @override
  int? get categoryId;
  @override
  String? get stock;
  @override
  String? get unit;
  @override
  String? get image_url;
  @override
  @JsonKey(ignore: true)
  _$$_AddItemInfoCopyWith<_$_AddItemInfo> get copyWith =>
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
  String? get code => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get creatorId => throw _privateConstructorUsedError;
  int? get stock => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;
  int? get categoryId => throw _privateConstructorUsedError;
  List<AttachmentInfo>? get attachments => throw _privateConstructorUsedError;

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
      String? code,
      String? name,
      int? creatorId,
      int? stock,
      String? unit,
      int? categoryId,
      List<AttachmentInfo>? attachments});
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
    Object? code = freezed,
    Object? name = freezed,
    Object? creatorId = freezed,
    Object? stock = freezed,
    Object? unit = freezed,
    Object? categoryId = freezed,
    Object? attachments = freezed,
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
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
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
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      attachments: freezed == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentInfo>?,
    ) as $Val);
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
      String? code,
      String? name,
      int? creatorId,
      int? stock,
      String? unit,
      int? categoryId,
      List<AttachmentInfo>? attachments});
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
    Object? code = freezed,
    Object? name = freezed,
    Object? creatorId = freezed,
    Object? stock = freezed,
    Object? unit = freezed,
    Object? categoryId = freezed,
    Object? attachments = freezed,
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
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
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
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      attachments: freezed == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentInfo>?,
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
      this.code,
      this.name,
      this.creatorId,
      this.stock,
      this.unit,
      this.categoryId,
      final List<AttachmentInfo>? attachments})
      : _attachments = attachments;

  factory _$_ItemInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ItemInfoFromJson(json);

  @override
  final int? id;
  @override
  final String? updatedAt;
  @override
  final String? createdAt;
  @override
  final String? code;
  @override
  final String? name;
  @override
  final int? creatorId;
  @override
  final int? stock;
  @override
  final String? unit;
  @override
  final int? categoryId;
  final List<AttachmentInfo>? _attachments;
  @override
  List<AttachmentInfo>? get attachments {
    final value = _attachments;
    if (value == null) return null;
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ItemInfo(id: $id, updatedAt: $updatedAt, createdAt: $createdAt, code: $code, name: $name, creatorId: $creatorId, stock: $stock, unit: $unit, categoryId: $categoryId, attachments: $attachments)';
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
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      updatedAt,
      createdAt,
      code,
      name,
      creatorId,
      stock,
      unit,
      categoryId,
      const DeepCollectionEquality().hash(_attachments));

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
      final String? code,
      final String? name,
      final int? creatorId,
      final int? stock,
      final String? unit,
      final int? categoryId,
      final List<AttachmentInfo>? attachments}) = _$_ItemInfo;

  factory _ItemInfo.fromJson(Map<String, dynamic> json) = _$_ItemInfo.fromJson;

  @override
  int? get id;
  @override
  String? get updatedAt;
  @override
  String? get createdAt;
  @override
  String? get code;
  @override
  String? get name;
  @override
  int? get creatorId;
  @override
  int? get stock;
  @override
  String? get unit;
  @override
  int? get categoryId;
  @override
  List<AttachmentInfo>? get attachments;
  @override
  @JsonKey(ignore: true)
  _$$_ItemInfoCopyWith<_$_ItemInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

AttachmentInfo _$AttachmentInfoFromJson(Map<String, dynamic> json) {
  return _AttachmentInfo.fromJson(json);
}

/// @nodoc
mixin _$AttachmentInfo {
  String? get path => throw _privateConstructorUsedError;
  String? get nameFile => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttachmentInfoCopyWith<AttachmentInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentInfoCopyWith<$Res> {
  factory $AttachmentInfoCopyWith(
          AttachmentInfo value, $Res Function(AttachmentInfo) then) =
      _$AttachmentInfoCopyWithImpl<$Res, AttachmentInfo>;
  @useResult
  $Res call({String? path, String? nameFile, int? id});
}

/// @nodoc
class _$AttachmentInfoCopyWithImpl<$Res, $Val extends AttachmentInfo>
    implements $AttachmentInfoCopyWith<$Res> {
  _$AttachmentInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = freezed,
    Object? nameFile = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      nameFile: freezed == nameFile
          ? _value.nameFile
          : nameFile // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttachmentInfoCopyWith<$Res>
    implements $AttachmentInfoCopyWith<$Res> {
  factory _$$_AttachmentInfoCopyWith(
          _$_AttachmentInfo value, $Res Function(_$_AttachmentInfo) then) =
      __$$_AttachmentInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? path, String? nameFile, int? id});
}

/// @nodoc
class __$$_AttachmentInfoCopyWithImpl<$Res>
    extends _$AttachmentInfoCopyWithImpl<$Res, _$_AttachmentInfo>
    implements _$$_AttachmentInfoCopyWith<$Res> {
  __$$_AttachmentInfoCopyWithImpl(
      _$_AttachmentInfo _value, $Res Function(_$_AttachmentInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = freezed,
    Object? nameFile = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_AttachmentInfo(
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      nameFile: freezed == nameFile
          ? _value.nameFile
          : nameFile // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttachmentInfo implements _AttachmentInfo {
  const _$_AttachmentInfo({this.path, this.nameFile, this.id});

  factory _$_AttachmentInfo.fromJson(Map<String, dynamic> json) =>
      _$$_AttachmentInfoFromJson(json);

  @override
  final String? path;
  @override
  final String? nameFile;
  @override
  final int? id;

  @override
  String toString() {
    return 'AttachmentInfo(path: $path, nameFile: $nameFile, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttachmentInfo &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.nameFile, nameFile) ||
                other.nameFile == nameFile) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, path, nameFile, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttachmentInfoCopyWith<_$_AttachmentInfo> get copyWith =>
      __$$_AttachmentInfoCopyWithImpl<_$_AttachmentInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttachmentInfoToJson(
      this,
    );
  }
}

abstract class _AttachmentInfo implements AttachmentInfo {
  const factory _AttachmentInfo(
      {final String? path,
      final String? nameFile,
      final int? id}) = _$_AttachmentInfo;

  factory _AttachmentInfo.fromJson(Map<String, dynamic> json) =
      _$_AttachmentInfo.fromJson;

  @override
  String? get path;
  @override
  String? get nameFile;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_AttachmentInfoCopyWith<_$_AttachmentInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_storage_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchStorageState {
  bool get isForm => throw _privateConstructorUsedError;
  bool get isSearched => throw _privateConstructorUsedError;
  List<ItemInfo> get listItems => throw _privateConstructorUsedError;
  List<ItemInfo> get listSearch => throw _privateConstructorUsedError;
  List<FormInfoData> get formsData => throw _privateConstructorUsedError;
  List<FormInfoData> get formsSearch => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStorageStateCopyWith<SearchStorageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStorageStateCopyWith<$Res> {
  factory $SearchStorageStateCopyWith(
          SearchStorageState value, $Res Function(SearchStorageState) then) =
      _$SearchStorageStateCopyWithImpl<$Res, SearchStorageState>;
  @useResult
  $Res call(
      {bool isForm,
      bool isSearched,
      List<ItemInfo> listItems,
      List<ItemInfo> listSearch,
      List<FormInfoData> formsData,
      List<FormInfoData> formsSearch});
}

/// @nodoc
class _$SearchStorageStateCopyWithImpl<$Res, $Val extends SearchStorageState>
    implements $SearchStorageStateCopyWith<$Res> {
  _$SearchStorageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isForm = null,
    Object? isSearched = null,
    Object? listItems = null,
    Object? listSearch = null,
    Object? formsData = null,
    Object? formsSearch = null,
  }) {
    return _then(_value.copyWith(
      isForm: null == isForm
          ? _value.isForm
          : isForm // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearched: null == isSearched
          ? _value.isSearched
          : isSearched // ignore: cast_nullable_to_non_nullable
              as bool,
      listItems: null == listItems
          ? _value.listItems
          : listItems // ignore: cast_nullable_to_non_nullable
              as List<ItemInfo>,
      listSearch: null == listSearch
          ? _value.listSearch
          : listSearch // ignore: cast_nullable_to_non_nullable
              as List<ItemInfo>,
      formsData: null == formsData
          ? _value.formsData
          : formsData // ignore: cast_nullable_to_non_nullable
              as List<FormInfoData>,
      formsSearch: null == formsSearch
          ? _value.formsSearch
          : formsSearch // ignore: cast_nullable_to_non_nullable
              as List<FormInfoData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchStorageStateCopyWith<$Res>
    implements $SearchStorageStateCopyWith<$Res> {
  factory _$$_SearchStorageStateCopyWith(_$_SearchStorageState value,
          $Res Function(_$_SearchStorageState) then) =
      __$$_SearchStorageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isForm,
      bool isSearched,
      List<ItemInfo> listItems,
      List<ItemInfo> listSearch,
      List<FormInfoData> formsData,
      List<FormInfoData> formsSearch});
}

/// @nodoc
class __$$_SearchStorageStateCopyWithImpl<$Res>
    extends _$SearchStorageStateCopyWithImpl<$Res, _$_SearchStorageState>
    implements _$$_SearchStorageStateCopyWith<$Res> {
  __$$_SearchStorageStateCopyWithImpl(
      _$_SearchStorageState _value, $Res Function(_$_SearchStorageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isForm = null,
    Object? isSearched = null,
    Object? listItems = null,
    Object? listSearch = null,
    Object? formsData = null,
    Object? formsSearch = null,
  }) {
    return _then(_$_SearchStorageState(
      isForm: null == isForm
          ? _value.isForm
          : isForm // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearched: null == isSearched
          ? _value.isSearched
          : isSearched // ignore: cast_nullable_to_non_nullable
              as bool,
      listItems: null == listItems
          ? _value._listItems
          : listItems // ignore: cast_nullable_to_non_nullable
              as List<ItemInfo>,
      listSearch: null == listSearch
          ? _value._listSearch
          : listSearch // ignore: cast_nullable_to_non_nullable
              as List<ItemInfo>,
      formsData: null == formsData
          ? _value._formsData
          : formsData // ignore: cast_nullable_to_non_nullable
              as List<FormInfoData>,
      formsSearch: null == formsSearch
          ? _value._formsSearch
          : formsSearch // ignore: cast_nullable_to_non_nullable
              as List<FormInfoData>,
    ));
  }
}

/// @nodoc

class _$_SearchStorageState implements _SearchStorageState {
  const _$_SearchStorageState(
      {this.isForm = false,
      this.isSearched = false,
      final List<ItemInfo> listItems = const <ItemInfo>[],
      final List<ItemInfo> listSearch = const <ItemInfo>[],
      final List<FormInfoData> formsData = const <FormInfoData>[],
      final List<FormInfoData> formsSearch = const <FormInfoData>[]})
      : _listItems = listItems,
        _listSearch = listSearch,
        _formsData = formsData,
        _formsSearch = formsSearch;

  @override
  @JsonKey()
  final bool isForm;
  @override
  @JsonKey()
  final bool isSearched;
  final List<ItemInfo> _listItems;
  @override
  @JsonKey()
  List<ItemInfo> get listItems {
    if (_listItems is EqualUnmodifiableListView) return _listItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listItems);
  }

  final List<ItemInfo> _listSearch;
  @override
  @JsonKey()
  List<ItemInfo> get listSearch {
    if (_listSearch is EqualUnmodifiableListView) return _listSearch;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listSearch);
  }

  final List<FormInfoData> _formsData;
  @override
  @JsonKey()
  List<FormInfoData> get formsData {
    if (_formsData is EqualUnmodifiableListView) return _formsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_formsData);
  }

  final List<FormInfoData> _formsSearch;
  @override
  @JsonKey()
  List<FormInfoData> get formsSearch {
    if (_formsSearch is EqualUnmodifiableListView) return _formsSearch;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_formsSearch);
  }

  @override
  String toString() {
    return 'SearchStorageState(isForm: $isForm, isSearched: $isSearched, listItems: $listItems, listSearch: $listSearch, formsData: $formsData, formsSearch: $formsSearch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchStorageState &&
            (identical(other.isForm, isForm) || other.isForm == isForm) &&
            (identical(other.isSearched, isSearched) ||
                other.isSearched == isSearched) &&
            const DeepCollectionEquality()
                .equals(other._listItems, _listItems) &&
            const DeepCollectionEquality()
                .equals(other._listSearch, _listSearch) &&
            const DeepCollectionEquality()
                .equals(other._formsData, _formsData) &&
            const DeepCollectionEquality()
                .equals(other._formsSearch, _formsSearch));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isForm,
      isSearched,
      const DeepCollectionEquality().hash(_listItems),
      const DeepCollectionEquality().hash(_listSearch),
      const DeepCollectionEquality().hash(_formsData),
      const DeepCollectionEquality().hash(_formsSearch));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchStorageStateCopyWith<_$_SearchStorageState> get copyWith =>
      __$$_SearchStorageStateCopyWithImpl<_$_SearchStorageState>(
          this, _$identity);
}

abstract class _SearchStorageState implements SearchStorageState {
  const factory _SearchStorageState(
      {final bool isForm,
      final bool isSearched,
      final List<ItemInfo> listItems,
      final List<ItemInfo> listSearch,
      final List<FormInfoData> formsData,
      final List<FormInfoData> formsSearch}) = _$_SearchStorageState;

  @override
  bool get isForm;
  @override
  bool get isSearched;
  @override
  List<ItemInfo> get listItems;
  @override
  List<ItemInfo> get listSearch;
  @override
  List<FormInfoData> get formsData;
  @override
  List<FormInfoData> get formsSearch;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStorageStateCopyWith<_$_SearchStorageState> get copyWith =>
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

FormInfoData _$FormInfoDataFromJson(Map<String, dynamic> json) {
  return _FormInfoData.fromJson(json);
}

/// @nodoc
mixin _$FormInfoData {
  int? get id => throw _privateConstructorUsedError;
  String? get nameForm => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get sender => throw _privateConstructorUsedError;
  String? get addressSender => throw _privateConstructorUsedError;
  String? get phoneNumberSender => throw _privateConstructorUsedError;
  String? get actorSender => throw _privateConstructorUsedError;
  String? get receiver => throw _privateConstructorUsedError;
  String? get addressReceiver => throw _privateConstructorUsedError;
  String? get phoneNumberReceiver => throw _privateConstructorUsedError;
  String? get actorReceiver => throw _privateConstructorUsedError;
  String? get cmndReceiver => throw _privateConstructorUsedError;
  int? get creatorId => throw _privateConstructorUsedError;
  int? get categoryId => throw _privateConstructorUsedError;
  CategoryData? get category => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormInfoDataCopyWith<FormInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormInfoDataCopyWith<$Res> {
  factory $FormInfoDataCopyWith(
          FormInfoData value, $Res Function(FormInfoData) then) =
      _$FormInfoDataCopyWithImpl<$Res, FormInfoData>;
  @useResult
  $Res call(
      {int? id,
      String? nameForm,
      String? updatedAt,
      String? createdAt,
      String? sender,
      String? addressSender,
      String? phoneNumberSender,
      String? actorSender,
      String? receiver,
      String? addressReceiver,
      String? phoneNumberReceiver,
      String? actorReceiver,
      String? cmndReceiver,
      int? creatorId,
      int? categoryId,
      CategoryData? category,
      String? type,
      String? status});

  $CategoryDataCopyWith<$Res>? get category;
}

/// @nodoc
class _$FormInfoDataCopyWithImpl<$Res, $Val extends FormInfoData>
    implements $FormInfoDataCopyWith<$Res> {
  _$FormInfoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nameForm = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? sender = freezed,
    Object? addressSender = freezed,
    Object? phoneNumberSender = freezed,
    Object? actorSender = freezed,
    Object? receiver = freezed,
    Object? addressReceiver = freezed,
    Object? phoneNumberReceiver = freezed,
    Object? actorReceiver = freezed,
    Object? cmndReceiver = freezed,
    Object? creatorId = freezed,
    Object? categoryId = freezed,
    Object? category = freezed,
    Object? type = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nameForm: freezed == nameForm
          ? _value.nameForm
          : nameForm // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      sender: freezed == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String?,
      addressSender: freezed == addressSender
          ? _value.addressSender
          : addressSender // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumberSender: freezed == phoneNumberSender
          ? _value.phoneNumberSender
          : phoneNumberSender // ignore: cast_nullable_to_non_nullable
              as String?,
      actorSender: freezed == actorSender
          ? _value.actorSender
          : actorSender // ignore: cast_nullable_to_non_nullable
              as String?,
      receiver: freezed == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String?,
      addressReceiver: freezed == addressReceiver
          ? _value.addressReceiver
          : addressReceiver // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumberReceiver: freezed == phoneNumberReceiver
          ? _value.phoneNumberReceiver
          : phoneNumberReceiver // ignore: cast_nullable_to_non_nullable
              as String?,
      actorReceiver: freezed == actorReceiver
          ? _value.actorReceiver
          : actorReceiver // ignore: cast_nullable_to_non_nullable
              as String?,
      cmndReceiver: freezed == cmndReceiver
          ? _value.cmndReceiver
          : cmndReceiver // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorId: freezed == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryData?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryDataCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryDataCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FormInfoDataCopyWith<$Res>
    implements $FormInfoDataCopyWith<$Res> {
  factory _$$_FormInfoDataCopyWith(
          _$_FormInfoData value, $Res Function(_$_FormInfoData) then) =
      __$$_FormInfoDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? nameForm,
      String? updatedAt,
      String? createdAt,
      String? sender,
      String? addressSender,
      String? phoneNumberSender,
      String? actorSender,
      String? receiver,
      String? addressReceiver,
      String? phoneNumberReceiver,
      String? actorReceiver,
      String? cmndReceiver,
      int? creatorId,
      int? categoryId,
      CategoryData? category,
      String? type,
      String? status});

  @override
  $CategoryDataCopyWith<$Res>? get category;
}

/// @nodoc
class __$$_FormInfoDataCopyWithImpl<$Res>
    extends _$FormInfoDataCopyWithImpl<$Res, _$_FormInfoData>
    implements _$$_FormInfoDataCopyWith<$Res> {
  __$$_FormInfoDataCopyWithImpl(
      _$_FormInfoData _value, $Res Function(_$_FormInfoData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nameForm = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? sender = freezed,
    Object? addressSender = freezed,
    Object? phoneNumberSender = freezed,
    Object? actorSender = freezed,
    Object? receiver = freezed,
    Object? addressReceiver = freezed,
    Object? phoneNumberReceiver = freezed,
    Object? actorReceiver = freezed,
    Object? cmndReceiver = freezed,
    Object? creatorId = freezed,
    Object? categoryId = freezed,
    Object? category = freezed,
    Object? type = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_FormInfoData(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nameForm: freezed == nameForm
          ? _value.nameForm
          : nameForm // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      sender: freezed == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String?,
      addressSender: freezed == addressSender
          ? _value.addressSender
          : addressSender // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumberSender: freezed == phoneNumberSender
          ? _value.phoneNumberSender
          : phoneNumberSender // ignore: cast_nullable_to_non_nullable
              as String?,
      actorSender: freezed == actorSender
          ? _value.actorSender
          : actorSender // ignore: cast_nullable_to_non_nullable
              as String?,
      receiver: freezed == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String?,
      addressReceiver: freezed == addressReceiver
          ? _value.addressReceiver
          : addressReceiver // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumberReceiver: freezed == phoneNumberReceiver
          ? _value.phoneNumberReceiver
          : phoneNumberReceiver // ignore: cast_nullable_to_non_nullable
              as String?,
      actorReceiver: freezed == actorReceiver
          ? _value.actorReceiver
          : actorReceiver // ignore: cast_nullable_to_non_nullable
              as String?,
      cmndReceiver: freezed == cmndReceiver
          ? _value.cmndReceiver
          : cmndReceiver // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorId: freezed == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryData?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FormInfoData implements _FormInfoData {
  const _$_FormInfoData(
      {this.id,
      this.nameForm,
      this.updatedAt,
      this.createdAt,
      this.sender,
      this.addressSender,
      this.phoneNumberSender,
      this.actorSender,
      this.receiver,
      this.addressReceiver,
      this.phoneNumberReceiver,
      this.actorReceiver,
      this.cmndReceiver,
      this.creatorId,
      this.categoryId,
      this.category,
      this.type,
      this.status});

  factory _$_FormInfoData.fromJson(Map<String, dynamic> json) =>
      _$$_FormInfoDataFromJson(json);

  @override
  final int? id;
  @override
  final String? nameForm;
  @override
  final String? updatedAt;
  @override
  final String? createdAt;
  @override
  final String? sender;
  @override
  final String? addressSender;
  @override
  final String? phoneNumberSender;
  @override
  final String? actorSender;
  @override
  final String? receiver;
  @override
  final String? addressReceiver;
  @override
  final String? phoneNumberReceiver;
  @override
  final String? actorReceiver;
  @override
  final String? cmndReceiver;
  @override
  final int? creatorId;
  @override
  final int? categoryId;
  @override
  final CategoryData? category;
  @override
  final String? type;
  @override
  final String? status;

  @override
  String toString() {
    return 'FormInfoData(id: $id, nameForm: $nameForm, updatedAt: $updatedAt, createdAt: $createdAt, sender: $sender, addressSender: $addressSender, phoneNumberSender: $phoneNumberSender, actorSender: $actorSender, receiver: $receiver, addressReceiver: $addressReceiver, phoneNumberReceiver: $phoneNumberReceiver, actorReceiver: $actorReceiver, cmndReceiver: $cmndReceiver, creatorId: $creatorId, categoryId: $categoryId, category: $category, type: $type, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FormInfoData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nameForm, nameForm) ||
                other.nameForm == nameForm) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.addressSender, addressSender) ||
                other.addressSender == addressSender) &&
            (identical(other.phoneNumberSender, phoneNumberSender) ||
                other.phoneNumberSender == phoneNumberSender) &&
            (identical(other.actorSender, actorSender) ||
                other.actorSender == actorSender) &&
            (identical(other.receiver, receiver) ||
                other.receiver == receiver) &&
            (identical(other.addressReceiver, addressReceiver) ||
                other.addressReceiver == addressReceiver) &&
            (identical(other.phoneNumberReceiver, phoneNumberReceiver) ||
                other.phoneNumberReceiver == phoneNumberReceiver) &&
            (identical(other.actorReceiver, actorReceiver) ||
                other.actorReceiver == actorReceiver) &&
            (identical(other.cmndReceiver, cmndReceiver) ||
                other.cmndReceiver == cmndReceiver) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      nameForm,
      updatedAt,
      createdAt,
      sender,
      addressSender,
      phoneNumberSender,
      actorSender,
      receiver,
      addressReceiver,
      phoneNumberReceiver,
      actorReceiver,
      cmndReceiver,
      creatorId,
      categoryId,
      category,
      type,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FormInfoDataCopyWith<_$_FormInfoData> get copyWith =>
      __$$_FormInfoDataCopyWithImpl<_$_FormInfoData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FormInfoDataToJson(
      this,
    );
  }
}

abstract class _FormInfoData implements FormInfoData {
  const factory _FormInfoData(
      {final int? id,
      final String? nameForm,
      final String? updatedAt,
      final String? createdAt,
      final String? sender,
      final String? addressSender,
      final String? phoneNumberSender,
      final String? actorSender,
      final String? receiver,
      final String? addressReceiver,
      final String? phoneNumberReceiver,
      final String? actorReceiver,
      final String? cmndReceiver,
      final int? creatorId,
      final int? categoryId,
      final CategoryData? category,
      final String? type,
      final String? status}) = _$_FormInfoData;

  factory _FormInfoData.fromJson(Map<String, dynamic> json) =
      _$_FormInfoData.fromJson;

  @override
  int? get id;
  @override
  String? get nameForm;
  @override
  String? get updatedAt;
  @override
  String? get createdAt;
  @override
  String? get sender;
  @override
  String? get addressSender;
  @override
  String? get phoneNumberSender;
  @override
  String? get actorSender;
  @override
  String? get receiver;
  @override
  String? get addressReceiver;
  @override
  String? get phoneNumberReceiver;
  @override
  String? get actorReceiver;
  @override
  String? get cmndReceiver;
  @override
  int? get creatorId;
  @override
  int? get categoryId;
  @override
  CategoryData? get category;
  @override
  String? get type;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_FormInfoDataCopyWith<_$_FormInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryData _$CategoryDataFromJson(Map<String, dynamic> json) {
  return _CategoryData.fromJson(json);
}

/// @nodoc
mixin _$CategoryData {
  int? get id => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDataCopyWith<CategoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDataCopyWith<$Res> {
  factory $CategoryDataCopyWith(
          CategoryData value, $Res Function(CategoryData) then) =
      _$CategoryDataCopyWithImpl<$Res, CategoryData>;
  @useResult
  $Res call({int? id, String? updatedAt, String? createdAt, String? name});
}

/// @nodoc
class _$CategoryDataCopyWithImpl<$Res, $Val extends CategoryData>
    implements $CategoryDataCopyWith<$Res> {
  _$CategoryDataCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryDataCopyWith<$Res>
    implements $CategoryDataCopyWith<$Res> {
  factory _$$_CategoryDataCopyWith(
          _$_CategoryData value, $Res Function(_$_CategoryData) then) =
      __$$_CategoryDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? updatedAt, String? createdAt, String? name});
}

/// @nodoc
class __$$_CategoryDataCopyWithImpl<$Res>
    extends _$CategoryDataCopyWithImpl<$Res, _$_CategoryData>
    implements _$$_CategoryDataCopyWith<$Res> {
  __$$_CategoryDataCopyWithImpl(
      _$_CategoryData _value, $Res Function(_$_CategoryData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_CategoryData(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryData implements _CategoryData {
  const _$_CategoryData({this.id, this.updatedAt, this.createdAt, this.name});

  factory _$_CategoryData.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryDataFromJson(json);

  @override
  final int? id;
  @override
  final String? updatedAt;
  @override
  final String? createdAt;
  @override
  final String? name;

  @override
  String toString() {
    return 'CategoryData(id: $id, updatedAt: $updatedAt, createdAt: $createdAt, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, updatedAt, createdAt, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryDataCopyWith<_$_CategoryData> get copyWith =>
      __$$_CategoryDataCopyWithImpl<_$_CategoryData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryDataToJson(
      this,
    );
  }
}

abstract class _CategoryData implements CategoryData {
  const factory _CategoryData(
      {final int? id,
      final String? updatedAt,
      final String? createdAt,
      final String? name}) = _$_CategoryData;

  factory _CategoryData.fromJson(Map<String, dynamic> json) =
      _$_CategoryData.fromJson;

  @override
  int? get id;
  @override
  String? get updatedAt;
  @override
  String? get createdAt;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryDataCopyWith<_$_CategoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_storage_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FormStorageState {
  List<FormInfoData> get formsData => throw _privateConstructorUsedError;
  List<FormInfoData> get formsInData => throw _privateConstructorUsedError;
  List<FormInfoData> get formsOutData => throw _privateConstructorUsedError;
  bool get isIn => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormStorageStateCopyWith<FormStorageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormStorageStateCopyWith<$Res> {
  factory $FormStorageStateCopyWith(
          FormStorageState value, $Res Function(FormStorageState) then) =
      _$FormStorageStateCopyWithImpl<$Res, FormStorageState>;
  @useResult
  $Res call(
      {List<FormInfoData> formsData,
      List<FormInfoData> formsInData,
      List<FormInfoData> formsOutData,
      bool isIn});
}

/// @nodoc
class _$FormStorageStateCopyWithImpl<$Res, $Val extends FormStorageState>
    implements $FormStorageStateCopyWith<$Res> {
  _$FormStorageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formsData = null,
    Object? formsInData = null,
    Object? formsOutData = null,
    Object? isIn = null,
  }) {
    return _then(_value.copyWith(
      formsData: null == formsData
          ? _value.formsData
          : formsData // ignore: cast_nullable_to_non_nullable
              as List<FormInfoData>,
      formsInData: null == formsInData
          ? _value.formsInData
          : formsInData // ignore: cast_nullable_to_non_nullable
              as List<FormInfoData>,
      formsOutData: null == formsOutData
          ? _value.formsOutData
          : formsOutData // ignore: cast_nullable_to_non_nullable
              as List<FormInfoData>,
      isIn: null == isIn
          ? _value.isIn
          : isIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FormStorageStateCopyWith<$Res>
    implements $FormStorageStateCopyWith<$Res> {
  factory _$$_FormStorageStateCopyWith(
          _$_FormStorageState value, $Res Function(_$_FormStorageState) then) =
      __$$_FormStorageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<FormInfoData> formsData,
      List<FormInfoData> formsInData,
      List<FormInfoData> formsOutData,
      bool isIn});
}

/// @nodoc
class __$$_FormStorageStateCopyWithImpl<$Res>
    extends _$FormStorageStateCopyWithImpl<$Res, _$_FormStorageState>
    implements _$$_FormStorageStateCopyWith<$Res> {
  __$$_FormStorageStateCopyWithImpl(
      _$_FormStorageState _value, $Res Function(_$_FormStorageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formsData = null,
    Object? formsInData = null,
    Object? formsOutData = null,
    Object? isIn = null,
  }) {
    return _then(_$_FormStorageState(
      formsData: null == formsData
          ? _value._formsData
          : formsData // ignore: cast_nullable_to_non_nullable
              as List<FormInfoData>,
      formsInData: null == formsInData
          ? _value._formsInData
          : formsInData // ignore: cast_nullable_to_non_nullable
              as List<FormInfoData>,
      formsOutData: null == formsOutData
          ? _value._formsOutData
          : formsOutData // ignore: cast_nullable_to_non_nullable
              as List<FormInfoData>,
      isIn: null == isIn
          ? _value.isIn
          : isIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FormStorageState implements _FormStorageState {
  const _$_FormStorageState(
      {final List<FormInfoData> formsData = const <FormInfoData>[],
      final List<FormInfoData> formsInData = const <FormInfoData>[],
      final List<FormInfoData> formsOutData = const <FormInfoData>[],
      this.isIn = true})
      : _formsData = formsData,
        _formsInData = formsInData,
        _formsOutData = formsOutData;

  final List<FormInfoData> _formsData;
  @override
  @JsonKey()
  List<FormInfoData> get formsData {
    if (_formsData is EqualUnmodifiableListView) return _formsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_formsData);
  }

  final List<FormInfoData> _formsInData;
  @override
  @JsonKey()
  List<FormInfoData> get formsInData {
    if (_formsInData is EqualUnmodifiableListView) return _formsInData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_formsInData);
  }

  final List<FormInfoData> _formsOutData;
  @override
  @JsonKey()
  List<FormInfoData> get formsOutData {
    if (_formsOutData is EqualUnmodifiableListView) return _formsOutData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_formsOutData);
  }

  @override
  @JsonKey()
  final bool isIn;

  @override
  String toString() {
    return 'FormStorageState(formsData: $formsData, formsInData: $formsInData, formsOutData: $formsOutData, isIn: $isIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FormStorageState &&
            const DeepCollectionEquality()
                .equals(other._formsData, _formsData) &&
            const DeepCollectionEquality()
                .equals(other._formsInData, _formsInData) &&
            const DeepCollectionEquality()
                .equals(other._formsOutData, _formsOutData) &&
            (identical(other.isIn, isIn) || other.isIn == isIn));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_formsData),
      const DeepCollectionEquality().hash(_formsInData),
      const DeepCollectionEquality().hash(_formsOutData),
      isIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FormStorageStateCopyWith<_$_FormStorageState> get copyWith =>
      __$$_FormStorageStateCopyWithImpl<_$_FormStorageState>(this, _$identity);
}

abstract class _FormStorageState implements FormStorageState {
  const factory _FormStorageState(
      {final List<FormInfoData> formsData,
      final List<FormInfoData> formsInData,
      final List<FormInfoData> formsOutData,
      final bool isIn}) = _$_FormStorageState;

  @override
  List<FormInfoData> get formsData;
  @override
  List<FormInfoData> get formsInData;
  @override
  List<FormInfoData> get formsOutData;
  @override
  bool get isIn;
  @override
  @JsonKey(ignore: true)
  _$$_FormStorageStateCopyWith<_$_FormStorageState> get copyWith =>
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

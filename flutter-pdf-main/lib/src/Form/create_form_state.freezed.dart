// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateFormState {
  bool get isLoading => throw _privateConstructorUsedError;
  SenderInfo get senderInfo => throw _privateConstructorUsedError;
  ReceiverInfo get receiverInfo => throw _privateConstructorUsedError;
  List<ProductInfo> get listProduct => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateFormStateCopyWith<CreateFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFormStateCopyWith<$Res> {
  factory $CreateFormStateCopyWith(
          CreateFormState value, $Res Function(CreateFormState) then) =
      _$CreateFormStateCopyWithImpl<$Res, CreateFormState>;
  @useResult
  $Res call(
      {bool isLoading,
      SenderInfo senderInfo,
      ReceiverInfo receiverInfo,
      List<ProductInfo> listProduct});

  $SenderInfoCopyWith<$Res> get senderInfo;
  $ReceiverInfoCopyWith<$Res> get receiverInfo;
}

/// @nodoc
class _$CreateFormStateCopyWithImpl<$Res, $Val extends CreateFormState>
    implements $CreateFormStateCopyWith<$Res> {
  _$CreateFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? senderInfo = null,
    Object? receiverInfo = null,
    Object? listProduct = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      senderInfo: null == senderInfo
          ? _value.senderInfo
          : senderInfo // ignore: cast_nullable_to_non_nullable
              as SenderInfo,
      receiverInfo: null == receiverInfo
          ? _value.receiverInfo
          : receiverInfo // ignore: cast_nullable_to_non_nullable
              as ReceiverInfo,
      listProduct: null == listProduct
          ? _value.listProduct
          : listProduct // ignore: cast_nullable_to_non_nullable
              as List<ProductInfo>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SenderInfoCopyWith<$Res> get senderInfo {
    return $SenderInfoCopyWith<$Res>(_value.senderInfo, (value) {
      return _then(_value.copyWith(senderInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReceiverInfoCopyWith<$Res> get receiverInfo {
    return $ReceiverInfoCopyWith<$Res>(_value.receiverInfo, (value) {
      return _then(_value.copyWith(receiverInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreateFormStateCopyWith<$Res>
    implements $CreateFormStateCopyWith<$Res> {
  factory _$$_CreateFormStateCopyWith(
          _$_CreateFormState value, $Res Function(_$_CreateFormState) then) =
      __$$_CreateFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      SenderInfo senderInfo,
      ReceiverInfo receiverInfo,
      List<ProductInfo> listProduct});

  @override
  $SenderInfoCopyWith<$Res> get senderInfo;
  @override
  $ReceiverInfoCopyWith<$Res> get receiverInfo;
}

/// @nodoc
class __$$_CreateFormStateCopyWithImpl<$Res>
    extends _$CreateFormStateCopyWithImpl<$Res, _$_CreateFormState>
    implements _$$_CreateFormStateCopyWith<$Res> {
  __$$_CreateFormStateCopyWithImpl(
      _$_CreateFormState _value, $Res Function(_$_CreateFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? senderInfo = null,
    Object? receiverInfo = null,
    Object? listProduct = null,
  }) {
    return _then(_$_CreateFormState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      senderInfo: null == senderInfo
          ? _value.senderInfo
          : senderInfo // ignore: cast_nullable_to_non_nullable
              as SenderInfo,
      receiverInfo: null == receiverInfo
          ? _value.receiverInfo
          : receiverInfo // ignore: cast_nullable_to_non_nullable
              as ReceiverInfo,
      listProduct: null == listProduct
          ? _value._listProduct
          : listProduct // ignore: cast_nullable_to_non_nullable
              as List<ProductInfo>,
    ));
  }
}

/// @nodoc

class _$_CreateFormState implements _CreateFormState {
  const _$_CreateFormState(
      {this.isLoading = false,
      this.senderInfo = const SenderInfo(),
      this.receiverInfo = const ReceiverInfo(),
      final List<ProductInfo> listProduct = const <ProductInfo>[]})
      : _listProduct = listProduct;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final SenderInfo senderInfo;
  @override
  @JsonKey()
  final ReceiverInfo receiverInfo;
  final List<ProductInfo> _listProduct;
  @override
  @JsonKey()
  List<ProductInfo> get listProduct {
    if (_listProduct is EqualUnmodifiableListView) return _listProduct;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listProduct);
  }

  @override
  String toString() {
    return 'CreateFormState(isLoading: $isLoading, senderInfo: $senderInfo, receiverInfo: $receiverInfo, listProduct: $listProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateFormState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.senderInfo, senderInfo) ||
                other.senderInfo == senderInfo) &&
            (identical(other.receiverInfo, receiverInfo) ||
                other.receiverInfo == receiverInfo) &&
            const DeepCollectionEquality()
                .equals(other._listProduct, _listProduct));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, senderInfo,
      receiverInfo, const DeepCollectionEquality().hash(_listProduct));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateFormStateCopyWith<_$_CreateFormState> get copyWith =>
      __$$_CreateFormStateCopyWithImpl<_$_CreateFormState>(this, _$identity);
}

abstract class _CreateFormState implements CreateFormState {
  const factory _CreateFormState(
      {final bool isLoading,
      final SenderInfo senderInfo,
      final ReceiverInfo receiverInfo,
      final List<ProductInfo> listProduct}) = _$_CreateFormState;

  @override
  bool get isLoading;
  @override
  SenderInfo get senderInfo;
  @override
  ReceiverInfo get receiverInfo;
  @override
  List<ProductInfo> get listProduct;
  @override
  @JsonKey(ignore: true)
  _$$_CreateFormStateCopyWith<_$_CreateFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SenderInfo {
  String? get name => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get actor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SenderInfoCopyWith<SenderInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SenderInfoCopyWith<$Res> {
  factory $SenderInfoCopyWith(
          SenderInfo value, $Res Function(SenderInfo) then) =
      _$SenderInfoCopyWithImpl<$Res, SenderInfo>;
  @useResult
  $Res call({String? name, String? address, String? phone, String? actor});
}

/// @nodoc
class _$SenderInfoCopyWithImpl<$Res, $Val extends SenderInfo>
    implements $SenderInfoCopyWith<$Res> {
  _$SenderInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? actor = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      actor: freezed == actor
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SenderInfoCopyWith<$Res>
    implements $SenderInfoCopyWith<$Res> {
  factory _$$_SenderInfoCopyWith(
          _$_SenderInfo value, $Res Function(_$_SenderInfo) then) =
      __$$_SenderInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? address, String? phone, String? actor});
}

/// @nodoc
class __$$_SenderInfoCopyWithImpl<$Res>
    extends _$SenderInfoCopyWithImpl<$Res, _$_SenderInfo>
    implements _$$_SenderInfoCopyWith<$Res> {
  __$$_SenderInfoCopyWithImpl(
      _$_SenderInfo _value, $Res Function(_$_SenderInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? actor = freezed,
  }) {
    return _then(_$_SenderInfo(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      actor: freezed == actor
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SenderInfo implements _SenderInfo {
  const _$_SenderInfo({this.name, this.address, this.phone, this.actor});

  @override
  final String? name;
  @override
  final String? address;
  @override
  final String? phone;
  @override
  final String? actor;

  @override
  String toString() {
    return 'SenderInfo(name: $name, address: $address, phone: $phone, actor: $actor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SenderInfo &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.actor, actor) || other.actor == actor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, address, phone, actor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SenderInfoCopyWith<_$_SenderInfo> get copyWith =>
      __$$_SenderInfoCopyWithImpl<_$_SenderInfo>(this, _$identity);
}

abstract class _SenderInfo implements SenderInfo {
  const factory _SenderInfo(
      {final String? name,
      final String? address,
      final String? phone,
      final String? actor}) = _$_SenderInfo;

  @override
  String? get name;
  @override
  String? get address;
  @override
  String? get phone;
  @override
  String? get actor;
  @override
  @JsonKey(ignore: true)
  _$$_SenderInfoCopyWith<_$_SenderInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReceiverInfo {
  String? get name => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get actor => throw _privateConstructorUsedError;
  String? get cmnd => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReceiverInfoCopyWith<ReceiverInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiverInfoCopyWith<$Res> {
  factory $ReceiverInfoCopyWith(
          ReceiverInfo value, $Res Function(ReceiverInfo) then) =
      _$ReceiverInfoCopyWithImpl<$Res, ReceiverInfo>;
  @useResult
  $Res call(
      {String? name,
      String? address,
      String? phone,
      String? actor,
      String? cmnd});
}

/// @nodoc
class _$ReceiverInfoCopyWithImpl<$Res, $Val extends ReceiverInfo>
    implements $ReceiverInfoCopyWith<$Res> {
  _$ReceiverInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? actor = freezed,
    Object? cmnd = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      actor: freezed == actor
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as String?,
      cmnd: freezed == cmnd
          ? _value.cmnd
          : cmnd // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReceiverInfoCopyWith<$Res>
    implements $ReceiverInfoCopyWith<$Res> {
  factory _$$_ReceiverInfoCopyWith(
          _$_ReceiverInfo value, $Res Function(_$_ReceiverInfo) then) =
      __$$_ReceiverInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? address,
      String? phone,
      String? actor,
      String? cmnd});
}

/// @nodoc
class __$$_ReceiverInfoCopyWithImpl<$Res>
    extends _$ReceiverInfoCopyWithImpl<$Res, _$_ReceiverInfo>
    implements _$$_ReceiverInfoCopyWith<$Res> {
  __$$_ReceiverInfoCopyWithImpl(
      _$_ReceiverInfo _value, $Res Function(_$_ReceiverInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? actor = freezed,
    Object? cmnd = freezed,
  }) {
    return _then(_$_ReceiverInfo(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      actor: freezed == actor
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as String?,
      cmnd: freezed == cmnd
          ? _value.cmnd
          : cmnd // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ReceiverInfo implements _ReceiverInfo {
  const _$_ReceiverInfo(
      {this.name, this.address, this.phone, this.actor, this.cmnd});

  @override
  final String? name;
  @override
  final String? address;
  @override
  final String? phone;
  @override
  final String? actor;
  @override
  final String? cmnd;

  @override
  String toString() {
    return 'ReceiverInfo(name: $name, address: $address, phone: $phone, actor: $actor, cmnd: $cmnd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReceiverInfo &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.actor, actor) || other.actor == actor) &&
            (identical(other.cmnd, cmnd) || other.cmnd == cmnd));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, address, phone, actor, cmnd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReceiverInfoCopyWith<_$_ReceiverInfo> get copyWith =>
      __$$_ReceiverInfoCopyWithImpl<_$_ReceiverInfo>(this, _$identity);
}

abstract class _ReceiverInfo implements ReceiverInfo {
  const factory _ReceiverInfo(
      {final String? name,
      final String? address,
      final String? phone,
      final String? actor,
      final String? cmnd}) = _$_ReceiverInfo;

  @override
  String? get name;
  @override
  String? get address;
  @override
  String? get phone;
  @override
  String? get actor;
  @override
  String? get cmnd;
  @override
  @JsonKey(ignore: true)
  _$$_ReceiverInfoCopyWith<_$_ReceiverInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductInfo {
  String? get name => throw _privateConstructorUsedError;
  String? get cost => throw _privateConstructorUsedError;
  String? get size => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductInfoCopyWith<ProductInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductInfoCopyWith<$Res> {
  factory $ProductInfoCopyWith(
          ProductInfo value, $Res Function(ProductInfo) then) =
      _$ProductInfoCopyWithImpl<$Res, ProductInfo>;
  @useResult
  $Res call({String? name, String? cost, String? size, String? note});
}

/// @nodoc
class _$ProductInfoCopyWithImpl<$Res, $Val extends ProductInfo>
    implements $ProductInfoCopyWith<$Res> {
  _$ProductInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? cost = freezed,
    Object? size = freezed,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductInfoCopyWith<$Res>
    implements $ProductInfoCopyWith<$Res> {
  factory _$$_ProductInfoCopyWith(
          _$_ProductInfo value, $Res Function(_$_ProductInfo) then) =
      __$$_ProductInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? cost, String? size, String? note});
}

/// @nodoc
class __$$_ProductInfoCopyWithImpl<$Res>
    extends _$ProductInfoCopyWithImpl<$Res, _$_ProductInfo>
    implements _$$_ProductInfoCopyWith<$Res> {
  __$$_ProductInfoCopyWithImpl(
      _$_ProductInfo _value, $Res Function(_$_ProductInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? cost = freezed,
    Object? size = freezed,
    Object? note = freezed,
  }) {
    return _then(_$_ProductInfo(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ProductInfo implements _ProductInfo {
  const _$_ProductInfo({this.name, this.cost, this.size, this.note});

  @override
  final String? name;
  @override
  final String? cost;
  @override
  final String? size;
  @override
  final String? note;

  @override
  String toString() {
    return 'ProductInfo(name: $name, cost: $cost, size: $size, note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductInfo &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, cost, size, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductInfoCopyWith<_$_ProductInfo> get copyWith =>
      __$$_ProductInfoCopyWithImpl<_$_ProductInfo>(this, _$identity);
}

abstract class _ProductInfo implements ProductInfo {
  const factory _ProductInfo(
      {final String? name,
      final String? cost,
      final String? size,
      final String? note}) = _$_ProductInfo;

  @override
  String? get name;
  @override
  String? get cost;
  @override
  String? get size;
  @override
  String? get note;
  @override
  @JsonKey(ignore: true)
  _$$_ProductInfoCopyWith<_$_ProductInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

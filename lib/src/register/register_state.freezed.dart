// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;
  String get company => throw _privateConstructorUsedError;
  String get phone_number => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call(
      {String email,
      String password,
      String confirmPassword,
      String company,
      String phone_number,
      String name});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? company = null,
    Object? phone_number = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      phone_number: null == phone_number
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$_RegisterStateCopyWith(
          _$_RegisterState value, $Res Function(_$_RegisterState) then) =
      __$$_RegisterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      String confirmPassword,
      String company,
      String phone_number,
      String name});
}

/// @nodoc
class __$$_RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$_RegisterState>
    implements _$$_RegisterStateCopyWith<$Res> {
  __$$_RegisterStateCopyWithImpl(
      _$_RegisterState _value, $Res Function(_$_RegisterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? company = null,
    Object? phone_number = null,
    Object? name = null,
  }) {
    return _then(_$_RegisterState(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      phone_number: null == phone_number
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RegisterState implements _RegisterState {
  const _$_RegisterState(
      {this.email = '',
      this.password = '',
      this.confirmPassword = '',
      this.company = '',
      this.phone_number = '',
      this.name = ''});

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String confirmPassword;
  @override
  @JsonKey()
  final String company;
  @override
  @JsonKey()
  final String phone_number;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'RegisterState(email: $email, password: $password, confirmPassword: $confirmPassword, company: $company, phone_number: $phone_number, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.phone_number, phone_number) ||
                other.phone_number == phone_number) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, confirmPassword,
      company, phone_number, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      __$$_RegisterStateCopyWithImpl<_$_RegisterState>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
      {final String email,
      final String password,
      final String confirmPassword,
      final String company,
      final String phone_number,
      final String name}) = _$_RegisterState;

  @override
  String get email;
  @override
  String get password;
  @override
  String get confirmPassword;
  @override
  String get company;
  @override
  String get phone_number;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

AttachmentAvatar _$AttachmentAvatarFromJson(Map<String, dynamic> json) {
  return _AttachmentAvatar.fromJson(json);
}

/// @nodoc
mixin _$AttachmentAvatar {
  String? get path => throw _privateConstructorUsedError;
  String? get nameFile => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttachmentAvatarCopyWith<AttachmentAvatar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentAvatarCopyWith<$Res> {
  factory $AttachmentAvatarCopyWith(
          AttachmentAvatar value, $Res Function(AttachmentAvatar) then) =
      _$AttachmentAvatarCopyWithImpl<$Res, AttachmentAvatar>;
  @useResult
  $Res call({String? path, String? nameFile, int? id});
}

/// @nodoc
class _$AttachmentAvatarCopyWithImpl<$Res, $Val extends AttachmentAvatar>
    implements $AttachmentAvatarCopyWith<$Res> {
  _$AttachmentAvatarCopyWithImpl(this._value, this._then);

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
abstract class _$$_AttachmentAvatarCopyWith<$Res>
    implements $AttachmentAvatarCopyWith<$Res> {
  factory _$$_AttachmentAvatarCopyWith(
          _$_AttachmentAvatar value, $Res Function(_$_AttachmentAvatar) then) =
      __$$_AttachmentAvatarCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? path, String? nameFile, int? id});
}

/// @nodoc
class __$$_AttachmentAvatarCopyWithImpl<$Res>
    extends _$AttachmentAvatarCopyWithImpl<$Res, _$_AttachmentAvatar>
    implements _$$_AttachmentAvatarCopyWith<$Res> {
  __$$_AttachmentAvatarCopyWithImpl(
      _$_AttachmentAvatar _value, $Res Function(_$_AttachmentAvatar) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = freezed,
    Object? nameFile = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_AttachmentAvatar(
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
class _$_AttachmentAvatar implements _AttachmentAvatar {
  const _$_AttachmentAvatar({this.path, this.nameFile, this.id});

  factory _$_AttachmentAvatar.fromJson(Map<String, dynamic> json) =>
      _$$_AttachmentAvatarFromJson(json);

  @override
  final String? path;
  @override
  final String? nameFile;
  @override
  final int? id;

  @override
  String toString() {
    return 'AttachmentAvatar(path: $path, nameFile: $nameFile, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttachmentAvatar &&
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
  _$$_AttachmentAvatarCopyWith<_$_AttachmentAvatar> get copyWith =>
      __$$_AttachmentAvatarCopyWithImpl<_$_AttachmentAvatar>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttachmentAvatarToJson(
      this,
    );
  }
}

abstract class _AttachmentAvatar implements AttachmentAvatar {
  const factory _AttachmentAvatar(
      {final String? path,
      final String? nameFile,
      final int? id}) = _$_AttachmentAvatar;

  factory _AttachmentAvatar.fromJson(Map<String, dynamic> json) =
      _$_AttachmentAvatar.fromJson;

  @override
  String? get path;
  @override
  String? get nameFile;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_AttachmentAvatarCopyWith<_$_AttachmentAvatar> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signature_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignatureState {
  bool get isNew => throw _privateConstructorUsedError;
  bool get checkExportPdf => throw _privateConstructorUsedError;
  bool get isSignatureSenderFilled => throw _privateConstructorUsedError;
  bool get isSignatureReceiverFilled => throw _privateConstructorUsedError;
  List<AttachmentInfo>? get signatures => throw _privateConstructorUsedError;
  List<AttachmentInfo>? get listImages => throw _privateConstructorUsedError;
  List<AttachmentInfo>? get listVideos => throw _privateConstructorUsedError;
  AttachmentInfo? get pdf => throw _privateConstructorUsedError;
  AttachmentInfo? get imageSignatureSender =>
      throw _privateConstructorUsedError;
  AttachmentInfo? get imageSignatureReceiver =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignatureStateCopyWith<SignatureState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignatureStateCopyWith<$Res> {
  factory $SignatureStateCopyWith(
          SignatureState value, $Res Function(SignatureState) then) =
      _$SignatureStateCopyWithImpl<$Res, SignatureState>;
  @useResult
  $Res call(
      {bool isNew,
      bool checkExportPdf,
      bool isSignatureSenderFilled,
      bool isSignatureReceiverFilled,
      List<AttachmentInfo>? signatures,
      List<AttachmentInfo>? listImages,
      List<AttachmentInfo>? listVideos,
      AttachmentInfo? pdf,
      AttachmentInfo? imageSignatureSender,
      AttachmentInfo? imageSignatureReceiver});

  $AttachmentInfoCopyWith<$Res>? get pdf;
  $AttachmentInfoCopyWith<$Res>? get imageSignatureSender;
  $AttachmentInfoCopyWith<$Res>? get imageSignatureReceiver;
}

/// @nodoc
class _$SignatureStateCopyWithImpl<$Res, $Val extends SignatureState>
    implements $SignatureStateCopyWith<$Res> {
  _$SignatureStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isNew = null,
    Object? checkExportPdf = null,
    Object? isSignatureSenderFilled = null,
    Object? isSignatureReceiverFilled = null,
    Object? signatures = freezed,
    Object? listImages = freezed,
    Object? listVideos = freezed,
    Object? pdf = freezed,
    Object? imageSignatureSender = freezed,
    Object? imageSignatureReceiver = freezed,
  }) {
    return _then(_value.copyWith(
      isNew: null == isNew
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
      checkExportPdf: null == checkExportPdf
          ? _value.checkExportPdf
          : checkExportPdf // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignatureSenderFilled: null == isSignatureSenderFilled
          ? _value.isSignatureSenderFilled
          : isSignatureSenderFilled // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignatureReceiverFilled: null == isSignatureReceiverFilled
          ? _value.isSignatureReceiverFilled
          : isSignatureReceiverFilled // ignore: cast_nullable_to_non_nullable
              as bool,
      signatures: freezed == signatures
          ? _value.signatures
          : signatures // ignore: cast_nullable_to_non_nullable
              as List<AttachmentInfo>?,
      listImages: freezed == listImages
          ? _value.listImages
          : listImages // ignore: cast_nullable_to_non_nullable
              as List<AttachmentInfo>?,
      listVideos: freezed == listVideos
          ? _value.listVideos
          : listVideos // ignore: cast_nullable_to_non_nullable
              as List<AttachmentInfo>?,
      pdf: freezed == pdf
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as AttachmentInfo?,
      imageSignatureSender: freezed == imageSignatureSender
          ? _value.imageSignatureSender
          : imageSignatureSender // ignore: cast_nullable_to_non_nullable
              as AttachmentInfo?,
      imageSignatureReceiver: freezed == imageSignatureReceiver
          ? _value.imageSignatureReceiver
          : imageSignatureReceiver // ignore: cast_nullable_to_non_nullable
              as AttachmentInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AttachmentInfoCopyWith<$Res>? get pdf {
    if (_value.pdf == null) {
      return null;
    }

    return $AttachmentInfoCopyWith<$Res>(_value.pdf!, (value) {
      return _then(_value.copyWith(pdf: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AttachmentInfoCopyWith<$Res>? get imageSignatureSender {
    if (_value.imageSignatureSender == null) {
      return null;
    }

    return $AttachmentInfoCopyWith<$Res>(_value.imageSignatureSender!, (value) {
      return _then(_value.copyWith(imageSignatureSender: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AttachmentInfoCopyWith<$Res>? get imageSignatureReceiver {
    if (_value.imageSignatureReceiver == null) {
      return null;
    }

    return $AttachmentInfoCopyWith<$Res>(_value.imageSignatureReceiver!,
        (value) {
      return _then(_value.copyWith(imageSignatureReceiver: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SignatureStateCopyWith<$Res>
    implements $SignatureStateCopyWith<$Res> {
  factory _$$_SignatureStateCopyWith(
          _$_SignatureState value, $Res Function(_$_SignatureState) then) =
      __$$_SignatureStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isNew,
      bool checkExportPdf,
      bool isSignatureSenderFilled,
      bool isSignatureReceiverFilled,
      List<AttachmentInfo>? signatures,
      List<AttachmentInfo>? listImages,
      List<AttachmentInfo>? listVideos,
      AttachmentInfo? pdf,
      AttachmentInfo? imageSignatureSender,
      AttachmentInfo? imageSignatureReceiver});

  @override
  $AttachmentInfoCopyWith<$Res>? get pdf;
  @override
  $AttachmentInfoCopyWith<$Res>? get imageSignatureSender;
  @override
  $AttachmentInfoCopyWith<$Res>? get imageSignatureReceiver;
}

/// @nodoc
class __$$_SignatureStateCopyWithImpl<$Res>
    extends _$SignatureStateCopyWithImpl<$Res, _$_SignatureState>
    implements _$$_SignatureStateCopyWith<$Res> {
  __$$_SignatureStateCopyWithImpl(
      _$_SignatureState _value, $Res Function(_$_SignatureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isNew = null,
    Object? checkExportPdf = null,
    Object? isSignatureSenderFilled = null,
    Object? isSignatureReceiverFilled = null,
    Object? signatures = freezed,
    Object? listImages = freezed,
    Object? listVideos = freezed,
    Object? pdf = freezed,
    Object? imageSignatureSender = freezed,
    Object? imageSignatureReceiver = freezed,
  }) {
    return _then(_$_SignatureState(
      isNew: null == isNew
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
      checkExportPdf: null == checkExportPdf
          ? _value.checkExportPdf
          : checkExportPdf // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignatureSenderFilled: null == isSignatureSenderFilled
          ? _value.isSignatureSenderFilled
          : isSignatureSenderFilled // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignatureReceiverFilled: null == isSignatureReceiverFilled
          ? _value.isSignatureReceiverFilled
          : isSignatureReceiverFilled // ignore: cast_nullable_to_non_nullable
              as bool,
      signatures: freezed == signatures
          ? _value._signatures
          : signatures // ignore: cast_nullable_to_non_nullable
              as List<AttachmentInfo>?,
      listImages: freezed == listImages
          ? _value._listImages
          : listImages // ignore: cast_nullable_to_non_nullable
              as List<AttachmentInfo>?,
      listVideos: freezed == listVideos
          ? _value._listVideos
          : listVideos // ignore: cast_nullable_to_non_nullable
              as List<AttachmentInfo>?,
      pdf: freezed == pdf
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as AttachmentInfo?,
      imageSignatureSender: freezed == imageSignatureSender
          ? _value.imageSignatureSender
          : imageSignatureSender // ignore: cast_nullable_to_non_nullable
              as AttachmentInfo?,
      imageSignatureReceiver: freezed == imageSignatureReceiver
          ? _value.imageSignatureReceiver
          : imageSignatureReceiver // ignore: cast_nullable_to_non_nullable
              as AttachmentInfo?,
    ));
  }
}

/// @nodoc

class _$_SignatureState implements _SignatureState {
  const _$_SignatureState(
      {this.isNew = false,
      this.checkExportPdf = false,
      this.isSignatureSenderFilled = false,
      this.isSignatureReceiverFilled = false,
      final List<AttachmentInfo>? signatures = const <AttachmentInfo>[],
      final List<AttachmentInfo>? listImages = const <AttachmentInfo>[
        AttachmentInfo()
      ],
      final List<AttachmentInfo>? listVideos = const <AttachmentInfo>[
        AttachmentInfo()
      ],
      this.pdf = const AttachmentInfo(),
      this.imageSignatureSender = const AttachmentInfo(),
      this.imageSignatureReceiver = const AttachmentInfo()})
      : _signatures = signatures,
        _listImages = listImages,
        _listVideos = listVideos;

  @override
  @JsonKey()
  final bool isNew;
  @override
  @JsonKey()
  final bool checkExportPdf;
  @override
  @JsonKey()
  final bool isSignatureSenderFilled;
  @override
  @JsonKey()
  final bool isSignatureReceiverFilled;
  final List<AttachmentInfo>? _signatures;
  @override
  @JsonKey()
  List<AttachmentInfo>? get signatures {
    final value = _signatures;
    if (value == null) return null;
    if (_signatures is EqualUnmodifiableListView) return _signatures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AttachmentInfo>? _listImages;
  @override
  @JsonKey()
  List<AttachmentInfo>? get listImages {
    final value = _listImages;
    if (value == null) return null;
    if (_listImages is EqualUnmodifiableListView) return _listImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AttachmentInfo>? _listVideos;
  @override
  @JsonKey()
  List<AttachmentInfo>? get listVideos {
    final value = _listVideos;
    if (value == null) return null;
    if (_listVideos is EqualUnmodifiableListView) return _listVideos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final AttachmentInfo? pdf;
  @override
  @JsonKey()
  final AttachmentInfo? imageSignatureSender;
  @override
  @JsonKey()
  final AttachmentInfo? imageSignatureReceiver;

  @override
  String toString() {
    return 'SignatureState(isNew: $isNew, checkExportPdf: $checkExportPdf, isSignatureSenderFilled: $isSignatureSenderFilled, isSignatureReceiverFilled: $isSignatureReceiverFilled, signatures: $signatures, listImages: $listImages, listVideos: $listVideos, pdf: $pdf, imageSignatureSender: $imageSignatureSender, imageSignatureReceiver: $imageSignatureReceiver)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignatureState &&
            (identical(other.isNew, isNew) || other.isNew == isNew) &&
            (identical(other.checkExportPdf, checkExportPdf) ||
                other.checkExportPdf == checkExportPdf) &&
            (identical(
                    other.isSignatureSenderFilled, isSignatureSenderFilled) ||
                other.isSignatureSenderFilled == isSignatureSenderFilled) &&
            (identical(other.isSignatureReceiverFilled,
                    isSignatureReceiverFilled) ||
                other.isSignatureReceiverFilled == isSignatureReceiverFilled) &&
            const DeepCollectionEquality()
                .equals(other._signatures, _signatures) &&
            const DeepCollectionEquality()
                .equals(other._listImages, _listImages) &&
            const DeepCollectionEquality()
                .equals(other._listVideos, _listVideos) &&
            (identical(other.pdf, pdf) || other.pdf == pdf) &&
            (identical(other.imageSignatureSender, imageSignatureSender) ||
                other.imageSignatureSender == imageSignatureSender) &&
            (identical(other.imageSignatureReceiver, imageSignatureReceiver) ||
                other.imageSignatureReceiver == imageSignatureReceiver));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isNew,
      checkExportPdf,
      isSignatureSenderFilled,
      isSignatureReceiverFilled,
      const DeepCollectionEquality().hash(_signatures),
      const DeepCollectionEquality().hash(_listImages),
      const DeepCollectionEquality().hash(_listVideos),
      pdf,
      imageSignatureSender,
      imageSignatureReceiver);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignatureStateCopyWith<_$_SignatureState> get copyWith =>
      __$$_SignatureStateCopyWithImpl<_$_SignatureState>(this, _$identity);
}

abstract class _SignatureState implements SignatureState {
  const factory _SignatureState(
      {final bool isNew,
      final bool checkExportPdf,
      final bool isSignatureSenderFilled,
      final bool isSignatureReceiverFilled,
      final List<AttachmentInfo>? signatures,
      final List<AttachmentInfo>? listImages,
      final List<AttachmentInfo>? listVideos,
      final AttachmentInfo? pdf,
      final AttachmentInfo? imageSignatureSender,
      final AttachmentInfo? imageSignatureReceiver}) = _$_SignatureState;

  @override
  bool get isNew;
  @override
  bool get checkExportPdf;
  @override
  bool get isSignatureSenderFilled;
  @override
  bool get isSignatureReceiverFilled;
  @override
  List<AttachmentInfo>? get signatures;
  @override
  List<AttachmentInfo>? get listImages;
  @override
  List<AttachmentInfo>? get listVideos;
  @override
  AttachmentInfo? get pdf;
  @override
  AttachmentInfo? get imageSignatureSender;
  @override
  AttachmentInfo? get imageSignatureReceiver;
  @override
  @JsonKey(ignore: true)
  _$$_SignatureStateCopyWith<_$_SignatureState> get copyWith =>
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
  String? get ext => throw _privateConstructorUsedError;

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
  $Res call({String? path, String? nameFile, int? id, String? ext});
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
    Object? ext = freezed,
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
      ext: freezed == ext
          ? _value.ext
          : ext // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call({String? path, String? nameFile, int? id, String? ext});
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
    Object? ext = freezed,
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
      ext: freezed == ext
          ? _value.ext
          : ext // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttachmentInfo implements _AttachmentInfo {
  const _$_AttachmentInfo({this.path, this.nameFile, this.id, this.ext});

  factory _$_AttachmentInfo.fromJson(Map<String, dynamic> json) =>
      _$$_AttachmentInfoFromJson(json);

  @override
  final String? path;
  @override
  final String? nameFile;
  @override
  final int? id;
  @override
  final String? ext;

  @override
  String toString() {
    return 'AttachmentInfo(path: $path, nameFile: $nameFile, id: $id, ext: $ext)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttachmentInfo &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.nameFile, nameFile) ||
                other.nameFile == nameFile) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ext, ext) || other.ext == ext));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, path, nameFile, id, ext);

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
      final int? id,
      final String? ext}) = _$_AttachmentInfo;

  factory _AttachmentInfo.fromJson(Map<String, dynamic> json) =
      _$_AttachmentInfo.fromJson;

  @override
  String? get path;
  @override
  String? get nameFile;
  @override
  int? get id;
  @override
  String? get ext;
  @override
  @JsonKey(ignore: true)
  _$$_AttachmentInfoCopyWith<_$_AttachmentInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

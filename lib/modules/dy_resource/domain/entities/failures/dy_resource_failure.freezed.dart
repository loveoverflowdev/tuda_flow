// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dy_resource_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DyResourceFailure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) internalServer,
    required TResult Function(String message) undefined,
    required TResult Function(String message) notFound,
    required TResult Function(String message) structureNotFound,
    required TResult Function(String message) badRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? internalServer,
    TResult? Function(String message)? undefined,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? structureNotFound,
    TResult? Function(String message)? badRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? internalServer,
    TResult Function(String message)? undefined,
    TResult Function(String message)? notFound,
    TResult Function(String message)? structureNotFound,
    TResult Function(String message)? badRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_InternalServer value) internalServer,
    required TResult Function(_Undefined value) undefined,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_StructureNotFound value) structureNotFound,
    required TResult Function(_BadRequest value) badRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_InternalServer value)? internalServer,
    TResult? Function(_Undefined value)? undefined,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_StructureNotFound value)? structureNotFound,
    TResult? Function(_BadRequest value)? badRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_InternalServer value)? internalServer,
    TResult Function(_Undefined value)? undefined,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_StructureNotFound value)? structureNotFound,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of DyResourceFailure
  /// with the given dyFields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DyResourceFailureCopyWith<DyResourceFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DyResourceFailureCopyWith<$Res> {
  factory $DyResourceFailureCopyWith(
          DyResourceFailure value, $Res Function(DyResourceFailure) then) =
      _$DyResourceFailureCopyWithImpl<$Res, DyResourceFailure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$DyResourceFailureCopyWithImpl<$Res, $Val extends DyResourceFailure>
    implements $DyResourceFailureCopyWith<$Res> {
  _$DyResourceFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DyResourceFailure
  /// with the given dyFields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnauthorizedImplCopyWith<$Res>
    implements $DyResourceFailureCopyWith<$Res> {
  factory _$$UnauthorizedImplCopyWith(
          _$UnauthorizedImpl value, $Res Function(_$UnauthorizedImpl) then) =
      __$$UnauthorizedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnauthorizedImplCopyWithImpl<$Res>
    extends _$DyResourceFailureCopyWithImpl<$Res, _$UnauthorizedImpl>
    implements _$$UnauthorizedImplCopyWith<$Res> {
  __$$UnauthorizedImplCopyWithImpl(
      _$UnauthorizedImpl _value, $Res Function(_$UnauthorizedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DyResourceFailure
  /// with the given dyFields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnauthorizedImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnauthorizedImpl implements _Unauthorized {
  _$UnauthorizedImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'DyResourceFailure.unauthorized(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthorizedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of DyResourceFailure
  /// with the given dyFields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthorizedImplCopyWith<_$UnauthorizedImpl> get copyWith =>
      __$$UnauthorizedImplCopyWithImpl<_$UnauthorizedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) internalServer,
    required TResult Function(String message) undefined,
    required TResult Function(String message) notFound,
    required TResult Function(String message) structureNotFound,
    required TResult Function(String message) badRequest,
  }) {
    return unauthorized(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? internalServer,
    TResult? Function(String message)? undefined,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? structureNotFound,
    TResult? Function(String message)? badRequest,
  }) {
    return unauthorized?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? internalServer,
    TResult Function(String message)? undefined,
    TResult Function(String message)? notFound,
    TResult Function(String message)? structureNotFound,
    TResult Function(String message)? badRequest,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_InternalServer value) internalServer,
    required TResult Function(_Undefined value) undefined,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_StructureNotFound value) structureNotFound,
    required TResult Function(_BadRequest value) badRequest,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_InternalServer value)? internalServer,
    TResult? Function(_Undefined value)? undefined,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_StructureNotFound value)? structureNotFound,
    TResult? Function(_BadRequest value)? badRequest,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_InternalServer value)? internalServer,
    TResult Function(_Undefined value)? undefined,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_StructureNotFound value)? structureNotFound,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _Unauthorized implements DyResourceFailure {
  factory _Unauthorized({required final String message}) = _$UnauthorizedImpl;

  @override
  String get message;

  /// Create a copy of DyResourceFailure
  /// with the given dyFields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnauthorizedImplCopyWith<_$UnauthorizedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InternalServerImplCopyWith<$Res>
    implements $DyResourceFailureCopyWith<$Res> {
  factory _$$InternalServerImplCopyWith(_$InternalServerImpl value,
          $Res Function(_$InternalServerImpl) then) =
      __$$InternalServerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$InternalServerImplCopyWithImpl<$Res>
    extends _$DyResourceFailureCopyWithImpl<$Res, _$InternalServerImpl>
    implements _$$InternalServerImplCopyWith<$Res> {
  __$$InternalServerImplCopyWithImpl(
      _$InternalServerImpl _value, $Res Function(_$InternalServerImpl) _then)
      : super(_value, _then);

  /// Create a copy of DyResourceFailure
  /// with the given dyFields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$InternalServerImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InternalServerImpl implements _InternalServer {
  _$InternalServerImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'DyResourceFailure.internalServer(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternalServerImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of DyResourceFailure
  /// with the given dyFields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InternalServerImplCopyWith<_$InternalServerImpl> get copyWith =>
      __$$InternalServerImplCopyWithImpl<_$InternalServerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) internalServer,
    required TResult Function(String message) undefined,
    required TResult Function(String message) notFound,
    required TResult Function(String message) structureNotFound,
    required TResult Function(String message) badRequest,
  }) {
    return internalServer(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? internalServer,
    TResult? Function(String message)? undefined,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? structureNotFound,
    TResult? Function(String message)? badRequest,
  }) {
    return internalServer?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? internalServer,
    TResult Function(String message)? undefined,
    TResult Function(String message)? notFound,
    TResult Function(String message)? structureNotFound,
    TResult Function(String message)? badRequest,
    required TResult orElse(),
  }) {
    if (internalServer != null) {
      return internalServer(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_InternalServer value) internalServer,
    required TResult Function(_Undefined value) undefined,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_StructureNotFound value) structureNotFound,
    required TResult Function(_BadRequest value) badRequest,
  }) {
    return internalServer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_InternalServer value)? internalServer,
    TResult? Function(_Undefined value)? undefined,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_StructureNotFound value)? structureNotFound,
    TResult? Function(_BadRequest value)? badRequest,
  }) {
    return internalServer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_InternalServer value)? internalServer,
    TResult Function(_Undefined value)? undefined,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_StructureNotFound value)? structureNotFound,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (internalServer != null) {
      return internalServer(this);
    }
    return orElse();
  }
}

abstract class _InternalServer implements DyResourceFailure {
  factory _InternalServer({required final String message}) =
      _$InternalServerImpl;

  @override
  String get message;

  /// Create a copy of DyResourceFailure
  /// with the given dyFields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InternalServerImplCopyWith<_$InternalServerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UndefinedImplCopyWith<$Res>
    implements $DyResourceFailureCopyWith<$Res> {
  factory _$$UndefinedImplCopyWith(
          _$UndefinedImpl value, $Res Function(_$UndefinedImpl) then) =
      __$$UndefinedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UndefinedImplCopyWithImpl<$Res>
    extends _$DyResourceFailureCopyWithImpl<$Res, _$UndefinedImpl>
    implements _$$UndefinedImplCopyWith<$Res> {
  __$$UndefinedImplCopyWithImpl(
      _$UndefinedImpl _value, $Res Function(_$UndefinedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DyResourceFailure
  /// with the given dyFields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UndefinedImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UndefinedImpl implements _Undefined {
  _$UndefinedImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'DyResourceFailure.undefined(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UndefinedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of DyResourceFailure
  /// with the given dyFields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UndefinedImplCopyWith<_$UndefinedImpl> get copyWith =>
      __$$UndefinedImplCopyWithImpl<_$UndefinedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) internalServer,
    required TResult Function(String message) undefined,
    required TResult Function(String message) notFound,
    required TResult Function(String message) structureNotFound,
    required TResult Function(String message) badRequest,
  }) {
    return undefined(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? internalServer,
    TResult? Function(String message)? undefined,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? structureNotFound,
    TResult? Function(String message)? badRequest,
  }) {
    return undefined?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? internalServer,
    TResult Function(String message)? undefined,
    TResult Function(String message)? notFound,
    TResult Function(String message)? structureNotFound,
    TResult Function(String message)? badRequest,
    required TResult orElse(),
  }) {
    if (undefined != null) {
      return undefined(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_InternalServer value) internalServer,
    required TResult Function(_Undefined value) undefined,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_StructureNotFound value) structureNotFound,
    required TResult Function(_BadRequest value) badRequest,
  }) {
    return undefined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_InternalServer value)? internalServer,
    TResult? Function(_Undefined value)? undefined,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_StructureNotFound value)? structureNotFound,
    TResult? Function(_BadRequest value)? badRequest,
  }) {
    return undefined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_InternalServer value)? internalServer,
    TResult Function(_Undefined value)? undefined,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_StructureNotFound value)? structureNotFound,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (undefined != null) {
      return undefined(this);
    }
    return orElse();
  }
}

abstract class _Undefined implements DyResourceFailure {
  factory _Undefined({required final String message}) = _$UndefinedImpl;

  @override
  String get message;

  /// Create a copy of DyResourceFailure
  /// with the given dyFields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UndefinedImplCopyWith<_$UndefinedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundImplCopyWith<$Res>
    implements $DyResourceFailureCopyWith<$Res> {
  factory _$$NotFoundImplCopyWith(
          _$NotFoundImpl value, $Res Function(_$NotFoundImpl) then) =
      __$$NotFoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NotFoundImplCopyWithImpl<$Res>
    extends _$DyResourceFailureCopyWithImpl<$Res, _$NotFoundImpl>
    implements _$$NotFoundImplCopyWith<$Res> {
  __$$NotFoundImplCopyWithImpl(
      _$NotFoundImpl _value, $Res Function(_$NotFoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of DyResourceFailure
  /// with the given dyFields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NotFoundImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotFoundImpl implements _NotFound {
  _$NotFoundImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'DyResourceFailure.notFound(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFoundImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of DyResourceFailure
  /// with the given dyFields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotFoundImplCopyWith<_$NotFoundImpl> get copyWith =>
      __$$NotFoundImplCopyWithImpl<_$NotFoundImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) internalServer,
    required TResult Function(String message) undefined,
    required TResult Function(String message) notFound,
    required TResult Function(String message) structureNotFound,
    required TResult Function(String message) badRequest,
  }) {
    return notFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? internalServer,
    TResult? Function(String message)? undefined,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? structureNotFound,
    TResult? Function(String message)? badRequest,
  }) {
    return notFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? internalServer,
    TResult Function(String message)? undefined,
    TResult Function(String message)? notFound,
    TResult Function(String message)? structureNotFound,
    TResult Function(String message)? badRequest,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_InternalServer value) internalServer,
    required TResult Function(_Undefined value) undefined,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_StructureNotFound value) structureNotFound,
    required TResult Function(_BadRequest value) badRequest,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_InternalServer value)? internalServer,
    TResult? Function(_Undefined value)? undefined,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_StructureNotFound value)? structureNotFound,
    TResult? Function(_BadRequest value)? badRequest,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_InternalServer value)? internalServer,
    TResult Function(_Undefined value)? undefined,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_StructureNotFound value)? structureNotFound,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _NotFound implements DyResourceFailure {
  factory _NotFound({required final String message}) = _$NotFoundImpl;

  @override
  String get message;

  /// Create a copy of DyResourceFailure
  /// with the given dyFields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotFoundImplCopyWith<_$NotFoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StructureNotFoundImplCopyWith<$Res>
    implements $DyResourceFailureCopyWith<$Res> {
  factory _$$StructureNotFoundImplCopyWith(_$StructureNotFoundImpl value,
          $Res Function(_$StructureNotFoundImpl) then) =
      __$$StructureNotFoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$StructureNotFoundImplCopyWithImpl<$Res>
    extends _$DyResourceFailureCopyWithImpl<$Res, _$StructureNotFoundImpl>
    implements _$$StructureNotFoundImplCopyWith<$Res> {
  __$$StructureNotFoundImplCopyWithImpl(_$StructureNotFoundImpl _value,
      $Res Function(_$StructureNotFoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of DyResourceFailure
  /// with the given dyFields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$StructureNotFoundImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StructureNotFoundImpl implements _StructureNotFound {
  _$StructureNotFoundImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'DyResourceFailure.structureNotFound(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StructureNotFoundImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of DyResourceFailure
  /// with the given dyFields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StructureNotFoundImplCopyWith<_$StructureNotFoundImpl> get copyWith =>
      __$$StructureNotFoundImplCopyWithImpl<_$StructureNotFoundImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) internalServer,
    required TResult Function(String message) undefined,
    required TResult Function(String message) notFound,
    required TResult Function(String message) structureNotFound,
    required TResult Function(String message) badRequest,
  }) {
    return structureNotFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? internalServer,
    TResult? Function(String message)? undefined,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? structureNotFound,
    TResult? Function(String message)? badRequest,
  }) {
    return structureNotFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? internalServer,
    TResult Function(String message)? undefined,
    TResult Function(String message)? notFound,
    TResult Function(String message)? structureNotFound,
    TResult Function(String message)? badRequest,
    required TResult orElse(),
  }) {
    if (structureNotFound != null) {
      return structureNotFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_InternalServer value) internalServer,
    required TResult Function(_Undefined value) undefined,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_StructureNotFound value) structureNotFound,
    required TResult Function(_BadRequest value) badRequest,
  }) {
    return structureNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_InternalServer value)? internalServer,
    TResult? Function(_Undefined value)? undefined,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_StructureNotFound value)? structureNotFound,
    TResult? Function(_BadRequest value)? badRequest,
  }) {
    return structureNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_InternalServer value)? internalServer,
    TResult Function(_Undefined value)? undefined,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_StructureNotFound value)? structureNotFound,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (structureNotFound != null) {
      return structureNotFound(this);
    }
    return orElse();
  }
}

abstract class _StructureNotFound implements DyResourceFailure {
  factory _StructureNotFound({required final String message}) =
      _$StructureNotFoundImpl;

  @override
  String get message;

  /// Create a copy of DyResourceFailure
  /// with the given dyFields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StructureNotFoundImplCopyWith<_$StructureNotFoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BadRequestImplCopyWith<$Res>
    implements $DyResourceFailureCopyWith<$Res> {
  factory _$$BadRequestImplCopyWith(
          _$BadRequestImpl value, $Res Function(_$BadRequestImpl) then) =
      __$$BadRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$BadRequestImplCopyWithImpl<$Res>
    extends _$DyResourceFailureCopyWithImpl<$Res, _$BadRequestImpl>
    implements _$$BadRequestImplCopyWith<$Res> {
  __$$BadRequestImplCopyWithImpl(
      _$BadRequestImpl _value, $Res Function(_$BadRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of DyResourceFailure
  /// with the given dyFields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$BadRequestImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BadRequestImpl implements _BadRequest {
  _$BadRequestImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'DyResourceFailure.badRequest(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadRequestImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of DyResourceFailure
  /// with the given dyFields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BadRequestImplCopyWith<_$BadRequestImpl> get copyWith =>
      __$$BadRequestImplCopyWithImpl<_$BadRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) internalServer,
    required TResult Function(String message) undefined,
    required TResult Function(String message) notFound,
    required TResult Function(String message) structureNotFound,
    required TResult Function(String message) badRequest,
  }) {
    return badRequest(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? internalServer,
    TResult? Function(String message)? undefined,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? structureNotFound,
    TResult? Function(String message)? badRequest,
  }) {
    return badRequest?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? internalServer,
    TResult Function(String message)? undefined,
    TResult Function(String message)? notFound,
    TResult Function(String message)? structureNotFound,
    TResult Function(String message)? badRequest,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_InternalServer value) internalServer,
    required TResult Function(_Undefined value) undefined,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_StructureNotFound value) structureNotFound,
    required TResult Function(_BadRequest value) badRequest,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_InternalServer value)? internalServer,
    TResult? Function(_Undefined value)? undefined,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_StructureNotFound value)? structureNotFound,
    TResult? Function(_BadRequest value)? badRequest,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_InternalServer value)? internalServer,
    TResult Function(_Undefined value)? undefined,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_StructureNotFound value)? structureNotFound,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class _BadRequest implements DyResourceFailure {
  factory _BadRequest({required final String message}) = _$BadRequestImpl;

  @override
  String get message;

  /// Create a copy of DyResourceFailure
  /// with the given dyFields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BadRequestImplCopyWith<_$BadRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

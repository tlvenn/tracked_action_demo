// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tracked.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrackedActionResult<TParam> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() ok,
    required TResult Function(
            TrackedAction<dynamic> action, String failure, TParam? param)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? ok,
    TResult Function(
            TrackedAction<dynamic> action, String failure, TParam? param)?
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? ok,
    TResult Function(
            TrackedAction<dynamic> action, String failure, TParam? param)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState<TParam> value) initial,
    required TResult Function(_Ok<TParam> value) ok,
    required TResult Function(FailureActionResult<TParam> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialState<TParam> value)? initial,
    TResult Function(_Ok<TParam> value)? ok,
    TResult Function(FailureActionResult<TParam> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState<TParam> value)? initial,
    TResult Function(_Ok<TParam> value)? ok,
    TResult Function(FailureActionResult<TParam> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackedActionResultCopyWith<TParam, $Res> {
  factory $TrackedActionResultCopyWith(TrackedActionResult<TParam> value,
          $Res Function(TrackedActionResult<TParam>) then) =
      _$TrackedActionResultCopyWithImpl<TParam, $Res>;
}

/// @nodoc
class _$TrackedActionResultCopyWithImpl<TParam, $Res>
    implements $TrackedActionResultCopyWith<TParam, $Res> {
  _$TrackedActionResultCopyWithImpl(this._value, this._then);

  final TrackedActionResult<TParam> _value;
  // ignore: unused_field
  final $Res Function(TrackedActionResult<TParam>) _then;
}

/// @nodoc
abstract class _$$_InitialStateCopyWith<TParam, $Res> {
  factory _$$_InitialStateCopyWith(_$_InitialState<TParam> value,
          $Res Function(_$_InitialState<TParam>) then) =
      __$$_InitialStateCopyWithImpl<TParam, $Res>;
}

/// @nodoc
class __$$_InitialStateCopyWithImpl<TParam, $Res>
    extends _$TrackedActionResultCopyWithImpl<TParam, $Res>
    implements _$$_InitialStateCopyWith<TParam, $Res> {
  __$$_InitialStateCopyWithImpl(_$_InitialState<TParam> _value,
      $Res Function(_$_InitialState<TParam>) _then)
      : super(_value, (v) => _then(v as _$_InitialState<TParam>));

  @override
  _$_InitialState<TParam> get _value => super._value as _$_InitialState<TParam>;
}

/// @nodoc

class _$_InitialState<TParam> implements _InitialState<TParam> {
  const _$_InitialState();

  @override
  String toString() {
    return 'TrackedActionResult<$TParam>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialState<TParam>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() ok,
    required TResult Function(
            TrackedAction<dynamic> action, String failure, TParam? param)
        failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? ok,
    TResult Function(
            TrackedAction<dynamic> action, String failure, TParam? param)?
        failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? ok,
    TResult Function(
            TrackedAction<dynamic> action, String failure, TParam? param)?
        failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState<TParam> value) initial,
    required TResult Function(_Ok<TParam> value) ok,
    required TResult Function(FailureActionResult<TParam> value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialState<TParam> value)? initial,
    TResult Function(_Ok<TParam> value)? ok,
    TResult Function(FailureActionResult<TParam> value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState<TParam> value)? initial,
    TResult Function(_Ok<TParam> value)? ok,
    TResult Function(FailureActionResult<TParam> value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState<TParam> implements TrackedActionResult<TParam> {
  const factory _InitialState() = _$_InitialState<TParam>;
}

/// @nodoc
abstract class _$$_OkCopyWith<TParam, $Res> {
  factory _$$_OkCopyWith(
          _$_Ok<TParam> value, $Res Function(_$_Ok<TParam>) then) =
      __$$_OkCopyWithImpl<TParam, $Res>;
}

/// @nodoc
class __$$_OkCopyWithImpl<TParam, $Res>
    extends _$TrackedActionResultCopyWithImpl<TParam, $Res>
    implements _$$_OkCopyWith<TParam, $Res> {
  __$$_OkCopyWithImpl(_$_Ok<TParam> _value, $Res Function(_$_Ok<TParam>) _then)
      : super(_value, (v) => _then(v as _$_Ok<TParam>));

  @override
  _$_Ok<TParam> get _value => super._value as _$_Ok<TParam>;
}

/// @nodoc

class _$_Ok<TParam> implements _Ok<TParam> {
  const _$_Ok();

  @override
  String toString() {
    return 'TrackedActionResult<$TParam>.ok()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Ok<TParam>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() ok,
    required TResult Function(
            TrackedAction<dynamic> action, String failure, TParam? param)
        failure,
  }) {
    return ok();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? ok,
    TResult Function(
            TrackedAction<dynamic> action, String failure, TParam? param)?
        failure,
  }) {
    return ok?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? ok,
    TResult Function(
            TrackedAction<dynamic> action, String failure, TParam? param)?
        failure,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState<TParam> value) initial,
    required TResult Function(_Ok<TParam> value) ok,
    required TResult Function(FailureActionResult<TParam> value) failure,
  }) {
    return ok(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialState<TParam> value)? initial,
    TResult Function(_Ok<TParam> value)? ok,
    TResult Function(FailureActionResult<TParam> value)? failure,
  }) {
    return ok?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState<TParam> value)? initial,
    TResult Function(_Ok<TParam> value)? ok,
    TResult Function(FailureActionResult<TParam> value)? failure,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(this);
    }
    return orElse();
  }
}

abstract class _Ok<TParam> implements TrackedActionResult<TParam> {
  const factory _Ok() = _$_Ok<TParam>;
}

/// @nodoc
abstract class _$$FailureActionResultCopyWith<TParam, $Res> {
  factory _$$FailureActionResultCopyWith(_$FailureActionResult<TParam> value,
          $Res Function(_$FailureActionResult<TParam>) then) =
      __$$FailureActionResultCopyWithImpl<TParam, $Res>;
  $Res call({TrackedAction<dynamic> action, String failure, TParam? param});
}

/// @nodoc
class __$$FailureActionResultCopyWithImpl<TParam, $Res>
    extends _$TrackedActionResultCopyWithImpl<TParam, $Res>
    implements _$$FailureActionResultCopyWith<TParam, $Res> {
  __$$FailureActionResultCopyWithImpl(_$FailureActionResult<TParam> _value,
      $Res Function(_$FailureActionResult<TParam>) _then)
      : super(_value, (v) => _then(v as _$FailureActionResult<TParam>));

  @override
  _$FailureActionResult<TParam> get _value =>
      super._value as _$FailureActionResult<TParam>;

  @override
  $Res call({
    Object? action = freezed,
    Object? failure = freezed,
    Object? param = freezed,
  }) {
    return _then(_$FailureActionResult<TParam>(
      action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as TrackedAction<dynamic>,
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
      param: param == freezed
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as TParam?,
    ));
  }
}

/// @nodoc

class _$FailureActionResult<TParam> implements FailureActionResult<TParam> {
  const _$FailureActionResult(this.action, this.failure, {this.param});

  @override
  final TrackedAction<dynamic> action;
  @override
  final String failure;
  @override
  final TParam? param;

  @override
  String toString() {
    return 'TrackedActionResult<$TParam>.failure(action: $action, failure: $failure, param: $param)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureActionResult<TParam> &&
            const DeepCollectionEquality().equals(other.action, action) &&
            const DeepCollectionEquality().equals(other.failure, failure) &&
            const DeepCollectionEquality().equals(other.param, param));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(action),
      const DeepCollectionEquality().hash(failure),
      const DeepCollectionEquality().hash(param));

  @JsonKey(ignore: true)
  @override
  _$$FailureActionResultCopyWith<TParam, _$FailureActionResult<TParam>>
      get copyWith => __$$FailureActionResultCopyWithImpl<TParam,
          _$FailureActionResult<TParam>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() ok,
    required TResult Function(
            TrackedAction<dynamic> action, String failure, TParam? param)
        failure,
  }) {
    return failure(action, this.failure, param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? ok,
    TResult Function(
            TrackedAction<dynamic> action, String failure, TParam? param)?
        failure,
  }) {
    return failure?.call(action, this.failure, param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? ok,
    TResult Function(
            TrackedAction<dynamic> action, String failure, TParam? param)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(action, this.failure, param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState<TParam> value) initial,
    required TResult Function(_Ok<TParam> value) ok,
    required TResult Function(FailureActionResult<TParam> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialState<TParam> value)? initial,
    TResult Function(_Ok<TParam> value)? ok,
    TResult Function(FailureActionResult<TParam> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState<TParam> value)? initial,
    TResult Function(_Ok<TParam> value)? ok,
    TResult Function(FailureActionResult<TParam> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FailureActionResult<TParam>
    implements TrackedActionResult<TParam> {
  const factory FailureActionResult(
      final TrackedAction<dynamic> action, final String failure,
      {final TParam? param}) = _$FailureActionResult<TParam>;

  TrackedAction<dynamic> get action => throw _privateConstructorUsedError;
  String get failure => throw _privateConstructorUsedError;
  TParam? get param => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$FailureActionResultCopyWith<TParam, _$FailureActionResult<TParam>>
      get copyWith => throw _privateConstructorUsedError;
}

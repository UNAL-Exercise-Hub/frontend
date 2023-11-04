// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'routine_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoutineEvent {
  int get ID => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int ID) getRoutine,
    required TResult Function(int ID) deleteRoutine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int ID)? getRoutine,
    TResult? Function(int ID)? deleteRoutine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int ID)? getRoutine,
    TResult Function(int ID)? deleteRoutine,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRoutine value) getRoutine,
    required TResult Function(DeleteRoutine value) deleteRoutine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRoutine value)? getRoutine,
    TResult? Function(DeleteRoutine value)? deleteRoutine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRoutine value)? getRoutine,
    TResult Function(DeleteRoutine value)? deleteRoutine,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoutineEventCopyWith<RoutineEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutineEventCopyWith<$Res> {
  factory $RoutineEventCopyWith(
          RoutineEvent value, $Res Function(RoutineEvent) then) =
      _$RoutineEventCopyWithImpl<$Res, RoutineEvent>;
  @useResult
  $Res call({int ID});
}

/// @nodoc
class _$RoutineEventCopyWithImpl<$Res, $Val extends RoutineEvent>
    implements $RoutineEventCopyWith<$Res> {
  _$RoutineEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ID = null,
  }) {
    return _then(_value.copyWith(
      ID: null == ID
          ? _value.ID
          : ID // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetRoutineImplCopyWith<$Res>
    implements $RoutineEventCopyWith<$Res> {
  factory _$$GetRoutineImplCopyWith(
          _$GetRoutineImpl value, $Res Function(_$GetRoutineImpl) then) =
      __$$GetRoutineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int ID});
}

/// @nodoc
class __$$GetRoutineImplCopyWithImpl<$Res>
    extends _$RoutineEventCopyWithImpl<$Res, _$GetRoutineImpl>
    implements _$$GetRoutineImplCopyWith<$Res> {
  __$$GetRoutineImplCopyWithImpl(
      _$GetRoutineImpl _value, $Res Function(_$GetRoutineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ID = null,
  }) {
    return _then(_$GetRoutineImpl(
      null == ID
          ? _value.ID
          : ID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetRoutineImpl implements GetRoutine {
  const _$GetRoutineImpl(this.ID);

  @override
  final int ID;

  @override
  String toString() {
    return 'RoutineEvent.getRoutine(ID: $ID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRoutineImpl &&
            (identical(other.ID, ID) || other.ID == ID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRoutineImplCopyWith<_$GetRoutineImpl> get copyWith =>
      __$$GetRoutineImplCopyWithImpl<_$GetRoutineImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int ID) getRoutine,
    required TResult Function(int ID) deleteRoutine,
  }) {
    return getRoutine(ID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int ID)? getRoutine,
    TResult? Function(int ID)? deleteRoutine,
  }) {
    return getRoutine?.call(ID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int ID)? getRoutine,
    TResult Function(int ID)? deleteRoutine,
    required TResult orElse(),
  }) {
    if (getRoutine != null) {
      return getRoutine(ID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRoutine value) getRoutine,
    required TResult Function(DeleteRoutine value) deleteRoutine,
  }) {
    return getRoutine(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRoutine value)? getRoutine,
    TResult? Function(DeleteRoutine value)? deleteRoutine,
  }) {
    return getRoutine?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRoutine value)? getRoutine,
    TResult Function(DeleteRoutine value)? deleteRoutine,
    required TResult orElse(),
  }) {
    if (getRoutine != null) {
      return getRoutine(this);
    }
    return orElse();
  }
}

abstract class GetRoutine implements RoutineEvent {
  const factory GetRoutine(final int ID) = _$GetRoutineImpl;

  @override
  int get ID;
  @override
  @JsonKey(ignore: true)
  _$$GetRoutineImplCopyWith<_$GetRoutineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteRoutineImplCopyWith<$Res>
    implements $RoutineEventCopyWith<$Res> {
  factory _$$DeleteRoutineImplCopyWith(
          _$DeleteRoutineImpl value, $Res Function(_$DeleteRoutineImpl) then) =
      __$$DeleteRoutineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int ID});
}

/// @nodoc
class __$$DeleteRoutineImplCopyWithImpl<$Res>
    extends _$RoutineEventCopyWithImpl<$Res, _$DeleteRoutineImpl>
    implements _$$DeleteRoutineImplCopyWith<$Res> {
  __$$DeleteRoutineImplCopyWithImpl(
      _$DeleteRoutineImpl _value, $Res Function(_$DeleteRoutineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ID = null,
  }) {
    return _then(_$DeleteRoutineImpl(
      null == ID
          ? _value.ID
          : ID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteRoutineImpl implements DeleteRoutine {
  const _$DeleteRoutineImpl(this.ID);

  @override
  final int ID;

  @override
  String toString() {
    return 'RoutineEvent.deleteRoutine(ID: $ID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteRoutineImpl &&
            (identical(other.ID, ID) || other.ID == ID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteRoutineImplCopyWith<_$DeleteRoutineImpl> get copyWith =>
      __$$DeleteRoutineImplCopyWithImpl<_$DeleteRoutineImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int ID) getRoutine,
    required TResult Function(int ID) deleteRoutine,
  }) {
    return deleteRoutine(ID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int ID)? getRoutine,
    TResult? Function(int ID)? deleteRoutine,
  }) {
    return deleteRoutine?.call(ID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int ID)? getRoutine,
    TResult Function(int ID)? deleteRoutine,
    required TResult orElse(),
  }) {
    if (deleteRoutine != null) {
      return deleteRoutine(ID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRoutine value) getRoutine,
    required TResult Function(DeleteRoutine value) deleteRoutine,
  }) {
    return deleteRoutine(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRoutine value)? getRoutine,
    TResult? Function(DeleteRoutine value)? deleteRoutine,
  }) {
    return deleteRoutine?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRoutine value)? getRoutine,
    TResult Function(DeleteRoutine value)? deleteRoutine,
    required TResult orElse(),
  }) {
    if (deleteRoutine != null) {
      return deleteRoutine(this);
    }
    return orElse();
  }
}

abstract class DeleteRoutine implements RoutineEvent {
  const factory DeleteRoutine(final int ID) = _$DeleteRoutineImpl;

  @override
  int get ID;
  @override
  @JsonKey(ignore: true)
  _$$DeleteRoutineImplCopyWith<_$DeleteRoutineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RoutineState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() doneRoutine,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? doneRoutine,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? doneRoutine,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(DoneRoutine value) doneRoutine,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(DoneRoutine value)? doneRoutine,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(DoneRoutine value)? doneRoutine,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutineStateCopyWith<$Res> {
  factory $RoutineStateCopyWith(
          RoutineState value, $Res Function(RoutineState) then) =
      _$RoutineStateCopyWithImpl<$Res, RoutineState>;
}

/// @nodoc
class _$RoutineStateCopyWithImpl<$Res, $Val extends RoutineState>
    implements $RoutineStateCopyWith<$Res> {
  _$RoutineStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RoutineStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'RoutineState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() doneRoutine,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? doneRoutine,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? doneRoutine,
    TResult Function()? error,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(DoneRoutine value) doneRoutine,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(DoneRoutine value)? doneRoutine,
    TResult? Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(DoneRoutine value)? doneRoutine,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements RoutineState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$RoutineStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'RoutineState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() doneRoutine,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? doneRoutine,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? doneRoutine,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(DoneRoutine value) doneRoutine,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(DoneRoutine value)? doneRoutine,
    TResult? Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(DoneRoutine value)? doneRoutine,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements RoutineState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$DoneRoutineImplCopyWith<$Res> {
  factory _$$DoneRoutineImplCopyWith(
          _$DoneRoutineImpl value, $Res Function(_$DoneRoutineImpl) then) =
      __$$DoneRoutineImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DoneRoutineImplCopyWithImpl<$Res>
    extends _$RoutineStateCopyWithImpl<$Res, _$DoneRoutineImpl>
    implements _$$DoneRoutineImplCopyWith<$Res> {
  __$$DoneRoutineImplCopyWithImpl(
      _$DoneRoutineImpl _value, $Res Function(_$DoneRoutineImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DoneRoutineImpl implements DoneRoutine {
  const _$DoneRoutineImpl();

  @override
  String toString() {
    return 'RoutineState.doneRoutine()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DoneRoutineImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() doneRoutine,
    required TResult Function() error,
  }) {
    return doneRoutine();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? doneRoutine,
    TResult? Function()? error,
  }) {
    return doneRoutine?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? doneRoutine,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (doneRoutine != null) {
      return doneRoutine();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(DoneRoutine value) doneRoutine,
    required TResult Function(Error value) error,
  }) {
    return doneRoutine(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(DoneRoutine value)? doneRoutine,
    TResult? Function(Error value)? error,
  }) {
    return doneRoutine?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(DoneRoutine value)? doneRoutine,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (doneRoutine != null) {
      return doneRoutine(this);
    }
    return orElse();
  }
}

abstract class DoneRoutine implements RoutineState {
  const factory DoneRoutine() = _$DoneRoutineImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$RoutineStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'RoutineState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() doneRoutine,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? doneRoutine,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? doneRoutine,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(DoneRoutine value) doneRoutine,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(DoneRoutine value)? doneRoutine,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(DoneRoutine value)? doneRoutine,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements RoutineState {
  const factory Error() = _$ErrorImpl;
}

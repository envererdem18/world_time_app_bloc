// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function() getTimezones,
    required TResult Function(String param) filter,
    required TResult Function(Timezone param) goToDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function()? getTimezones,
    TResult? Function(String param)? filter,
    TResult? Function(Timezone param)? goToDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function()? getTimezones,
    TResult Function(String param)? filter,
    TResult Function(Timezone param)? goToDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStarted value) onStarted,
    required TResult Function(HomeGetTimezones value) getTimezones,
    required TResult Function(HomeFilterTimezone value) filter,
    required TResult Function(HomeGoToDetail value) goToDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStarted value)? onStarted,
    TResult? Function(HomeGetTimezones value)? getTimezones,
    TResult? Function(HomeFilterTimezone value)? filter,
    TResult? Function(HomeGoToDetail value)? goToDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStarted value)? onStarted,
    TResult Function(HomeGetTimezones value)? getTimezones,
    TResult Function(HomeFilterTimezone value)? filter,
    TResult Function(HomeGoToDetail value)? goToDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeStartedCopyWith<$Res> {
  factory _$$HomeStartedCopyWith(
          _$HomeStarted value, $Res Function(_$HomeStarted) then) =
      __$$HomeStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeStartedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeStarted>
    implements _$$HomeStartedCopyWith<$Res> {
  __$$HomeStartedCopyWithImpl(
      _$HomeStarted _value, $Res Function(_$HomeStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeStarted implements HomeStarted {
  const _$HomeStarted();

  @override
  String toString() {
    return 'HomeEvent.onStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function() getTimezones,
    required TResult Function(String param) filter,
    required TResult Function(Timezone param) goToDetail,
  }) {
    return onStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function()? getTimezones,
    TResult? Function(String param)? filter,
    TResult? Function(Timezone param)? goToDetail,
  }) {
    return onStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function()? getTimezones,
    TResult Function(String param)? filter,
    TResult Function(Timezone param)? goToDetail,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStarted value) onStarted,
    required TResult Function(HomeGetTimezones value) getTimezones,
    required TResult Function(HomeFilterTimezone value) filter,
    required TResult Function(HomeGoToDetail value) goToDetail,
  }) {
    return onStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStarted value)? onStarted,
    TResult? Function(HomeGetTimezones value)? getTimezones,
    TResult? Function(HomeFilterTimezone value)? filter,
    TResult? Function(HomeGoToDetail value)? goToDetail,
  }) {
    return onStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStarted value)? onStarted,
    TResult Function(HomeGetTimezones value)? getTimezones,
    TResult Function(HomeFilterTimezone value)? filter,
    TResult Function(HomeGoToDetail value)? goToDetail,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted(this);
    }
    return orElse();
  }
}

abstract class HomeStarted implements HomeEvent {
  const factory HomeStarted() = _$HomeStarted;
}

/// @nodoc
abstract class _$$HomeGetTimezonesCopyWith<$Res> {
  factory _$$HomeGetTimezonesCopyWith(
          _$HomeGetTimezones value, $Res Function(_$HomeGetTimezones) then) =
      __$$HomeGetTimezonesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeGetTimezonesCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeGetTimezones>
    implements _$$HomeGetTimezonesCopyWith<$Res> {
  __$$HomeGetTimezonesCopyWithImpl(
      _$HomeGetTimezones _value, $Res Function(_$HomeGetTimezones) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeGetTimezones implements HomeGetTimezones {
  const _$HomeGetTimezones();

  @override
  String toString() {
    return 'HomeEvent.getTimezones()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeGetTimezones);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function() getTimezones,
    required TResult Function(String param) filter,
    required TResult Function(Timezone param) goToDetail,
  }) {
    return getTimezones();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function()? getTimezones,
    TResult? Function(String param)? filter,
    TResult? Function(Timezone param)? goToDetail,
  }) {
    return getTimezones?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function()? getTimezones,
    TResult Function(String param)? filter,
    TResult Function(Timezone param)? goToDetail,
    required TResult orElse(),
  }) {
    if (getTimezones != null) {
      return getTimezones();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStarted value) onStarted,
    required TResult Function(HomeGetTimezones value) getTimezones,
    required TResult Function(HomeFilterTimezone value) filter,
    required TResult Function(HomeGoToDetail value) goToDetail,
  }) {
    return getTimezones(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStarted value)? onStarted,
    TResult? Function(HomeGetTimezones value)? getTimezones,
    TResult? Function(HomeFilterTimezone value)? filter,
    TResult? Function(HomeGoToDetail value)? goToDetail,
  }) {
    return getTimezones?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStarted value)? onStarted,
    TResult Function(HomeGetTimezones value)? getTimezones,
    TResult Function(HomeFilterTimezone value)? filter,
    TResult Function(HomeGoToDetail value)? goToDetail,
    required TResult orElse(),
  }) {
    if (getTimezones != null) {
      return getTimezones(this);
    }
    return orElse();
  }
}

abstract class HomeGetTimezones implements HomeEvent {
  const factory HomeGetTimezones() = _$HomeGetTimezones;
}

/// @nodoc
abstract class _$$HomeFilterTimezoneCopyWith<$Res> {
  factory _$$HomeFilterTimezoneCopyWith(_$HomeFilterTimezone value,
          $Res Function(_$HomeFilterTimezone) then) =
      __$$HomeFilterTimezoneCopyWithImpl<$Res>;
  @useResult
  $Res call({String param});
}

/// @nodoc
class __$$HomeFilterTimezoneCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeFilterTimezone>
    implements _$$HomeFilterTimezoneCopyWith<$Res> {
  __$$HomeFilterTimezoneCopyWithImpl(
      _$HomeFilterTimezone _value, $Res Function(_$HomeFilterTimezone) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$HomeFilterTimezone(
      null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeFilterTimezone implements HomeFilterTimezone {
  const _$HomeFilterTimezone(this.param);

  @override
  final String param;

  @override
  String toString() {
    return 'HomeEvent.filter(param: $param)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeFilterTimezone &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeFilterTimezoneCopyWith<_$HomeFilterTimezone> get copyWith =>
      __$$HomeFilterTimezoneCopyWithImpl<_$HomeFilterTimezone>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function() getTimezones,
    required TResult Function(String param) filter,
    required TResult Function(Timezone param) goToDetail,
  }) {
    return filter(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function()? getTimezones,
    TResult? Function(String param)? filter,
    TResult? Function(Timezone param)? goToDetail,
  }) {
    return filter?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function()? getTimezones,
    TResult Function(String param)? filter,
    TResult Function(Timezone param)? goToDetail,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStarted value) onStarted,
    required TResult Function(HomeGetTimezones value) getTimezones,
    required TResult Function(HomeFilterTimezone value) filter,
    required TResult Function(HomeGoToDetail value) goToDetail,
  }) {
    return filter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStarted value)? onStarted,
    TResult? Function(HomeGetTimezones value)? getTimezones,
    TResult? Function(HomeFilterTimezone value)? filter,
    TResult? Function(HomeGoToDetail value)? goToDetail,
  }) {
    return filter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStarted value)? onStarted,
    TResult Function(HomeGetTimezones value)? getTimezones,
    TResult Function(HomeFilterTimezone value)? filter,
    TResult Function(HomeGoToDetail value)? goToDetail,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(this);
    }
    return orElse();
  }
}

abstract class HomeFilterTimezone implements HomeEvent {
  const factory HomeFilterTimezone(final String param) = _$HomeFilterTimezone;

  String get param;
  @JsonKey(ignore: true)
  _$$HomeFilterTimezoneCopyWith<_$HomeFilterTimezone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeGoToDetailCopyWith<$Res> {
  factory _$$HomeGoToDetailCopyWith(
          _$HomeGoToDetail value, $Res Function(_$HomeGoToDetail) then) =
      __$$HomeGoToDetailCopyWithImpl<$Res>;
  @useResult
  $Res call({Timezone param});
}

/// @nodoc
class __$$HomeGoToDetailCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeGoToDetail>
    implements _$$HomeGoToDetailCopyWith<$Res> {
  __$$HomeGoToDetailCopyWithImpl(
      _$HomeGoToDetail _value, $Res Function(_$HomeGoToDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$HomeGoToDetail(
      null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as Timezone,
    ));
  }
}

/// @nodoc

class _$HomeGoToDetail implements HomeGoToDetail {
  const _$HomeGoToDetail(this.param);

  @override
  final Timezone param;

  @override
  String toString() {
    return 'HomeEvent.goToDetail(param: $param)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeGoToDetail &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeGoToDetailCopyWith<_$HomeGoToDetail> get copyWith =>
      __$$HomeGoToDetailCopyWithImpl<_$HomeGoToDetail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function() getTimezones,
    required TResult Function(String param) filter,
    required TResult Function(Timezone param) goToDetail,
  }) {
    return goToDetail(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function()? getTimezones,
    TResult? Function(String param)? filter,
    TResult? Function(Timezone param)? goToDetail,
  }) {
    return goToDetail?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function()? getTimezones,
    TResult Function(String param)? filter,
    TResult Function(Timezone param)? goToDetail,
    required TResult orElse(),
  }) {
    if (goToDetail != null) {
      return goToDetail(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStarted value) onStarted,
    required TResult Function(HomeGetTimezones value) getTimezones,
    required TResult Function(HomeFilterTimezone value) filter,
    required TResult Function(HomeGoToDetail value) goToDetail,
  }) {
    return goToDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStarted value)? onStarted,
    TResult? Function(HomeGetTimezones value)? getTimezones,
    TResult? Function(HomeFilterTimezone value)? filter,
    TResult? Function(HomeGoToDetail value)? goToDetail,
  }) {
    return goToDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStarted value)? onStarted,
    TResult Function(HomeGetTimezones value)? getTimezones,
    TResult Function(HomeFilterTimezone value)? filter,
    TResult Function(HomeGoToDetail value)? goToDetail,
    required TResult orElse(),
  }) {
    if (goToDetail != null) {
      return goToDetail(this);
    }
    return orElse();
  }
}

abstract class HomeGoToDetail implements HomeEvent {
  const factory HomeGoToDetail(final Timezone param) = _$HomeGoToDetail;

  Timezone get param;
  @JsonKey(ignore: true)
  _$$HomeGoToDetailCopyWith<_$HomeGoToDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) onError,
    required TResult Function(
            List<Timezone> timezones, List<Timezone>? filtered)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? onError,
    TResult? Function(List<Timezone> timezones, List<Timezone>? filtered)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? onError,
    TResult Function(List<Timezone> timezones, List<Timezone>? filtered)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OnError value) onError,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OnError value)? onError,
    TResult? Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OnError value)? onError,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) onError,
    required TResult Function(
            List<Timezone> timezones, List<Timezone>? filtered)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? onError,
    TResult? Function(List<Timezone> timezones, List<Timezone>? filtered)?
        loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? onError,
    TResult Function(List<Timezone> timezones, List<Timezone>? filtered)?
        loaded,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OnError value) onError,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OnError value)? onError,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OnError value)? onError,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) onError,
    required TResult Function(
            List<Timezone> timezones, List<Timezone>? filtered)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? onError,
    TResult? Function(List<Timezone> timezones, List<Timezone>? filtered)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? onError,
    TResult Function(List<Timezone> timezones, List<Timezone>? filtered)?
        loaded,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OnError value) onError,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OnError value)? onError,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OnError value)? onError,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HomeState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_OnErrorCopyWith<$Res> {
  factory _$$_OnErrorCopyWith(
          _$_OnError value, $Res Function(_$_OnError) then) =
      __$$_OnErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_OnErrorCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_OnError>
    implements _$$_OnErrorCopyWith<$Res> {
  __$$_OnErrorCopyWithImpl(_$_OnError _value, $Res Function(_$_OnError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_OnError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnError implements _OnError {
  const _$_OnError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HomeState.onError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnErrorCopyWith<_$_OnError> get copyWith =>
      __$$_OnErrorCopyWithImpl<_$_OnError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) onError,
    required TResult Function(
            List<Timezone> timezones, List<Timezone>? filtered)
        loaded,
  }) {
    return onError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? onError,
    TResult? Function(List<Timezone> timezones, List<Timezone>? filtered)?
        loaded,
  }) {
    return onError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? onError,
    TResult Function(List<Timezone> timezones, List<Timezone>? filtered)?
        loaded,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OnError value) onError,
    required TResult Function(_Loaded value) loaded,
  }) {
    return onError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OnError value)? onError,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return onError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OnError value)? onError,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(this);
    }
    return orElse();
  }
}

abstract class _OnError implements HomeState {
  const factory _OnError(final String message) = _$_OnError;

  String get message;
  @JsonKey(ignore: true)
  _$$_OnErrorCopyWith<_$_OnError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Timezone> timezones, List<Timezone>? filtered});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timezones = null,
    Object? filtered = freezed,
  }) {
    return _then(_$_Loaded(
      timezones: null == timezones
          ? _value._timezones
          : timezones // ignore: cast_nullable_to_non_nullable
              as List<Timezone>,
      filtered: freezed == filtered
          ? _value._filtered
          : filtered // ignore: cast_nullable_to_non_nullable
              as List<Timezone>?,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      {required final List<Timezone> timezones, final List<Timezone>? filtered})
      : _timezones = timezones,
        _filtered = filtered;

  final List<Timezone> _timezones;
  @override
  List<Timezone> get timezones {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timezones);
  }

  final List<Timezone>? _filtered;
  @override
  List<Timezone>? get filtered {
    final value = _filtered;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeState.loaded(timezones: $timezones, filtered: $filtered)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality()
                .equals(other._timezones, _timezones) &&
            const DeepCollectionEquality().equals(other._filtered, _filtered));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_timezones),
      const DeepCollectionEquality().hash(_filtered));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) onError,
    required TResult Function(
            List<Timezone> timezones, List<Timezone>? filtered)
        loaded,
  }) {
    return loaded(timezones, filtered);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? onError,
    TResult? Function(List<Timezone> timezones, List<Timezone>? filtered)?
        loaded,
  }) {
    return loaded?.call(timezones, filtered);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? onError,
    TResult Function(List<Timezone> timezones, List<Timezone>? filtered)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(timezones, filtered);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OnError value) onError,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OnError value)? onError,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OnError value)? onError,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements HomeState {
  const factory _Loaded(
      {required final List<Timezone> timezones,
      final List<Timezone>? filtered}) = _$_Loaded;

  List<Timezone> get timezones;
  List<Timezone>? get filtered;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

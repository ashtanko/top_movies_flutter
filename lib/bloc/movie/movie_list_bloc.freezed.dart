// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MovieListEventTearOff {
  const _$MovieListEventTearOff();

  _LoadMoviesEvent load() {
    return const _LoadMoviesEvent();
  }
}

/// @nodoc
const $MovieListEvent = _$MovieListEventTearOff();

/// @nodoc
mixin _$MovieListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMoviesEvent value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadMoviesEvent value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMoviesEvent value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieListEventCopyWith<$Res> {
  factory $MovieListEventCopyWith(
          MovieListEvent value, $Res Function(MovieListEvent) then) =
      _$MovieListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieListEventCopyWithImpl<$Res>
    implements $MovieListEventCopyWith<$Res> {
  _$MovieListEventCopyWithImpl(this._value, this._then);

  final MovieListEvent _value;
  // ignore: unused_field
  final $Res Function(MovieListEvent) _then;
}

/// @nodoc
abstract class _$LoadMoviesEventCopyWith<$Res> {
  factory _$LoadMoviesEventCopyWith(
          _LoadMoviesEvent value, $Res Function(_LoadMoviesEvent) then) =
      __$LoadMoviesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadMoviesEventCopyWithImpl<$Res>
    extends _$MovieListEventCopyWithImpl<$Res>
    implements _$LoadMoviesEventCopyWith<$Res> {
  __$LoadMoviesEventCopyWithImpl(
      _LoadMoviesEvent _value, $Res Function(_LoadMoviesEvent) _then)
      : super(_value, (v) => _then(v as _LoadMoviesEvent));

  @override
  _LoadMoviesEvent get _value => super._value as _LoadMoviesEvent;
}

/// @nodoc

class _$_LoadMoviesEvent implements _LoadMoviesEvent {
  const _$_LoadMoviesEvent();

  @override
  String toString() {
    return 'MovieListEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadMoviesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMoviesEvent value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadMoviesEvent value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMoviesEvent value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _LoadMoviesEvent implements MovieListEvent {
  const factory _LoadMoviesEvent() = _$_LoadMoviesEvent;
}

/// @nodoc
class _$MovieListStateTearOff {
  const _$MovieListStateTearOff();

  InitialMovieListState initial() {
    return const InitialMovieListState();
  }

  LoadingMovieListState loading() {
    return const LoadingMovieListState();
  }

  EmptyMovieListState emptyList() {
    return const EmptyMovieListState();
  }

  LoadedMovieListState loaded({required List<Movie> movies}) {
    return LoadedMovieListState(
      movies: movies,
    );
  }

  ErrorMovieListState error({Exception? exception}) {
    return ErrorMovieListState(
      exception: exception,
    );
  }
}

/// @nodoc
const $MovieListState = _$MovieListStateTearOff();

/// @nodoc
mixin _$MovieListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() emptyList,
    required TResult Function(List<Movie> movies) loaded,
    required TResult Function(Exception? exception) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? emptyList,
    TResult Function(List<Movie> movies)? loaded,
    TResult Function(Exception? exception)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? emptyList,
    TResult Function(List<Movie> movies)? loaded,
    TResult Function(Exception? exception)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialMovieListState value) initial,
    required TResult Function(LoadingMovieListState value) loading,
    required TResult Function(EmptyMovieListState value) emptyList,
    required TResult Function(LoadedMovieListState value) loaded,
    required TResult Function(ErrorMovieListState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialMovieListState value)? initial,
    TResult Function(LoadingMovieListState value)? loading,
    TResult Function(EmptyMovieListState value)? emptyList,
    TResult Function(LoadedMovieListState value)? loaded,
    TResult Function(ErrorMovieListState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMovieListState value)? initial,
    TResult Function(LoadingMovieListState value)? loading,
    TResult Function(EmptyMovieListState value)? emptyList,
    TResult Function(LoadedMovieListState value)? loaded,
    TResult Function(ErrorMovieListState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieListStateCopyWith<$Res> {
  factory $MovieListStateCopyWith(
          MovieListState value, $Res Function(MovieListState) then) =
      _$MovieListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieListStateCopyWithImpl<$Res>
    implements $MovieListStateCopyWith<$Res> {
  _$MovieListStateCopyWithImpl(this._value, this._then);

  final MovieListState _value;
  // ignore: unused_field
  final $Res Function(MovieListState) _then;
}

/// @nodoc
abstract class $InitialMovieListStateCopyWith<$Res> {
  factory $InitialMovieListStateCopyWith(InitialMovieListState value,
          $Res Function(InitialMovieListState) then) =
      _$InitialMovieListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialMovieListStateCopyWithImpl<$Res>
    extends _$MovieListStateCopyWithImpl<$Res>
    implements $InitialMovieListStateCopyWith<$Res> {
  _$InitialMovieListStateCopyWithImpl(
      InitialMovieListState _value, $Res Function(InitialMovieListState) _then)
      : super(_value, (v) => _then(v as InitialMovieListState));

  @override
  InitialMovieListState get _value => super._value as InitialMovieListState;
}

/// @nodoc

class _$InitialMovieListState implements InitialMovieListState {
  const _$InitialMovieListState();

  @override
  String toString() {
    return 'MovieListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitialMovieListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() emptyList,
    required TResult Function(List<Movie> movies) loaded,
    required TResult Function(Exception? exception) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? emptyList,
    TResult Function(List<Movie> movies)? loaded,
    TResult Function(Exception? exception)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? emptyList,
    TResult Function(List<Movie> movies)? loaded,
    TResult Function(Exception? exception)? error,
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
    required TResult Function(InitialMovieListState value) initial,
    required TResult Function(LoadingMovieListState value) loading,
    required TResult Function(EmptyMovieListState value) emptyList,
    required TResult Function(LoadedMovieListState value) loaded,
    required TResult Function(ErrorMovieListState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialMovieListState value)? initial,
    TResult Function(LoadingMovieListState value)? loading,
    TResult Function(EmptyMovieListState value)? emptyList,
    TResult Function(LoadedMovieListState value)? loaded,
    TResult Function(ErrorMovieListState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMovieListState value)? initial,
    TResult Function(LoadingMovieListState value)? loading,
    TResult Function(EmptyMovieListState value)? emptyList,
    TResult Function(LoadedMovieListState value)? loaded,
    TResult Function(ErrorMovieListState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialMovieListState implements MovieListState {
  const factory InitialMovieListState() = _$InitialMovieListState;
}

/// @nodoc
abstract class $LoadingMovieListStateCopyWith<$Res> {
  factory $LoadingMovieListStateCopyWith(LoadingMovieListState value,
          $Res Function(LoadingMovieListState) then) =
      _$LoadingMovieListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingMovieListStateCopyWithImpl<$Res>
    extends _$MovieListStateCopyWithImpl<$Res>
    implements $LoadingMovieListStateCopyWith<$Res> {
  _$LoadingMovieListStateCopyWithImpl(
      LoadingMovieListState _value, $Res Function(LoadingMovieListState) _then)
      : super(_value, (v) => _then(v as LoadingMovieListState));

  @override
  LoadingMovieListState get _value => super._value as LoadingMovieListState;
}

/// @nodoc

class _$LoadingMovieListState implements LoadingMovieListState {
  const _$LoadingMovieListState();

  @override
  String toString() {
    return 'MovieListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingMovieListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() emptyList,
    required TResult Function(List<Movie> movies) loaded,
    required TResult Function(Exception? exception) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? emptyList,
    TResult Function(List<Movie> movies)? loaded,
    TResult Function(Exception? exception)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? emptyList,
    TResult Function(List<Movie> movies)? loaded,
    TResult Function(Exception? exception)? error,
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
    required TResult Function(InitialMovieListState value) initial,
    required TResult Function(LoadingMovieListState value) loading,
    required TResult Function(EmptyMovieListState value) emptyList,
    required TResult Function(LoadedMovieListState value) loaded,
    required TResult Function(ErrorMovieListState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialMovieListState value)? initial,
    TResult Function(LoadingMovieListState value)? loading,
    TResult Function(EmptyMovieListState value)? emptyList,
    TResult Function(LoadedMovieListState value)? loaded,
    TResult Function(ErrorMovieListState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMovieListState value)? initial,
    TResult Function(LoadingMovieListState value)? loading,
    TResult Function(EmptyMovieListState value)? emptyList,
    TResult Function(LoadedMovieListState value)? loaded,
    TResult Function(ErrorMovieListState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingMovieListState implements MovieListState {
  const factory LoadingMovieListState() = _$LoadingMovieListState;
}

/// @nodoc
abstract class $EmptyMovieListStateCopyWith<$Res> {
  factory $EmptyMovieListStateCopyWith(
          EmptyMovieListState value, $Res Function(EmptyMovieListState) then) =
      _$EmptyMovieListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyMovieListStateCopyWithImpl<$Res>
    extends _$MovieListStateCopyWithImpl<$Res>
    implements $EmptyMovieListStateCopyWith<$Res> {
  _$EmptyMovieListStateCopyWithImpl(
      EmptyMovieListState _value, $Res Function(EmptyMovieListState) _then)
      : super(_value, (v) => _then(v as EmptyMovieListState));

  @override
  EmptyMovieListState get _value => super._value as EmptyMovieListState;
}

/// @nodoc

class _$EmptyMovieListState implements EmptyMovieListState {
  const _$EmptyMovieListState();

  @override
  String toString() {
    return 'MovieListState.emptyList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EmptyMovieListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() emptyList,
    required TResult Function(List<Movie> movies) loaded,
    required TResult Function(Exception? exception) error,
  }) {
    return emptyList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? emptyList,
    TResult Function(List<Movie> movies)? loaded,
    TResult Function(Exception? exception)? error,
  }) {
    return emptyList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? emptyList,
    TResult Function(List<Movie> movies)? loaded,
    TResult Function(Exception? exception)? error,
    required TResult orElse(),
  }) {
    if (emptyList != null) {
      return emptyList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialMovieListState value) initial,
    required TResult Function(LoadingMovieListState value) loading,
    required TResult Function(EmptyMovieListState value) emptyList,
    required TResult Function(LoadedMovieListState value) loaded,
    required TResult Function(ErrorMovieListState value) error,
  }) {
    return emptyList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialMovieListState value)? initial,
    TResult Function(LoadingMovieListState value)? loading,
    TResult Function(EmptyMovieListState value)? emptyList,
    TResult Function(LoadedMovieListState value)? loaded,
    TResult Function(ErrorMovieListState value)? error,
  }) {
    return emptyList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMovieListState value)? initial,
    TResult Function(LoadingMovieListState value)? loading,
    TResult Function(EmptyMovieListState value)? emptyList,
    TResult Function(LoadedMovieListState value)? loaded,
    TResult Function(ErrorMovieListState value)? error,
    required TResult orElse(),
  }) {
    if (emptyList != null) {
      return emptyList(this);
    }
    return orElse();
  }
}

abstract class EmptyMovieListState implements MovieListState {
  const factory EmptyMovieListState() = _$EmptyMovieListState;
}

/// @nodoc
abstract class $LoadedMovieListStateCopyWith<$Res> {
  factory $LoadedMovieListStateCopyWith(LoadedMovieListState value,
          $Res Function(LoadedMovieListState) then) =
      _$LoadedMovieListStateCopyWithImpl<$Res>;
  $Res call({List<Movie> movies});
}

/// @nodoc
class _$LoadedMovieListStateCopyWithImpl<$Res>
    extends _$MovieListStateCopyWithImpl<$Res>
    implements $LoadedMovieListStateCopyWith<$Res> {
  _$LoadedMovieListStateCopyWithImpl(
      LoadedMovieListState _value, $Res Function(LoadedMovieListState) _then)
      : super(_value, (v) => _then(v as LoadedMovieListState));

  @override
  LoadedMovieListState get _value => super._value as LoadedMovieListState;

  @override
  $Res call({
    Object? movies = freezed,
  }) {
    return _then(LoadedMovieListState(
      movies: movies == freezed
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _$LoadedMovieListState implements LoadedMovieListState {
  const _$LoadedMovieListState({required this.movies});

  @override
  final List<Movie> movies;

  @override
  String toString() {
    return 'MovieListState.loaded(movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedMovieListState &&
            const DeepCollectionEquality().equals(other.movies, movies));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(movies));

  @JsonKey(ignore: true)
  @override
  $LoadedMovieListStateCopyWith<LoadedMovieListState> get copyWith =>
      _$LoadedMovieListStateCopyWithImpl<LoadedMovieListState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() emptyList,
    required TResult Function(List<Movie> movies) loaded,
    required TResult Function(Exception? exception) error,
  }) {
    return loaded(movies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? emptyList,
    TResult Function(List<Movie> movies)? loaded,
    TResult Function(Exception? exception)? error,
  }) {
    return loaded?.call(movies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? emptyList,
    TResult Function(List<Movie> movies)? loaded,
    TResult Function(Exception? exception)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(movies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialMovieListState value) initial,
    required TResult Function(LoadingMovieListState value) loading,
    required TResult Function(EmptyMovieListState value) emptyList,
    required TResult Function(LoadedMovieListState value) loaded,
    required TResult Function(ErrorMovieListState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialMovieListState value)? initial,
    TResult Function(LoadingMovieListState value)? loading,
    TResult Function(EmptyMovieListState value)? emptyList,
    TResult Function(LoadedMovieListState value)? loaded,
    TResult Function(ErrorMovieListState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMovieListState value)? initial,
    TResult Function(LoadingMovieListState value)? loading,
    TResult Function(EmptyMovieListState value)? emptyList,
    TResult Function(LoadedMovieListState value)? loaded,
    TResult Function(ErrorMovieListState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedMovieListState implements MovieListState {
  const factory LoadedMovieListState({required List<Movie> movies}) =
      _$LoadedMovieListState;

  List<Movie> get movies;
  @JsonKey(ignore: true)
  $LoadedMovieListStateCopyWith<LoadedMovieListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorMovieListStateCopyWith<$Res> {
  factory $ErrorMovieListStateCopyWith(
          ErrorMovieListState value, $Res Function(ErrorMovieListState) then) =
      _$ErrorMovieListStateCopyWithImpl<$Res>;
  $Res call({Exception? exception});
}

/// @nodoc
class _$ErrorMovieListStateCopyWithImpl<$Res>
    extends _$MovieListStateCopyWithImpl<$Res>
    implements $ErrorMovieListStateCopyWith<$Res> {
  _$ErrorMovieListStateCopyWithImpl(
      ErrorMovieListState _value, $Res Function(ErrorMovieListState) _then)
      : super(_value, (v) => _then(v as ErrorMovieListState));

  @override
  ErrorMovieListState get _value => super._value as ErrorMovieListState;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(ErrorMovieListState(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$ErrorMovieListState implements ErrorMovieListState {
  const _$ErrorMovieListState({this.exception});

  @override
  final Exception? exception;

  @override
  String toString() {
    return 'MovieListState.error(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorMovieListState &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  $ErrorMovieListStateCopyWith<ErrorMovieListState> get copyWith =>
      _$ErrorMovieListStateCopyWithImpl<ErrorMovieListState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() emptyList,
    required TResult Function(List<Movie> movies) loaded,
    required TResult Function(Exception? exception) error,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? emptyList,
    TResult Function(List<Movie> movies)? loaded,
    TResult Function(Exception? exception)? error,
  }) {
    return error?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? emptyList,
    TResult Function(List<Movie> movies)? loaded,
    TResult Function(Exception? exception)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialMovieListState value) initial,
    required TResult Function(LoadingMovieListState value) loading,
    required TResult Function(EmptyMovieListState value) emptyList,
    required TResult Function(LoadedMovieListState value) loaded,
    required TResult Function(ErrorMovieListState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialMovieListState value)? initial,
    TResult Function(LoadingMovieListState value)? loading,
    TResult Function(EmptyMovieListState value)? emptyList,
    TResult Function(LoadedMovieListState value)? loaded,
    TResult Function(ErrorMovieListState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMovieListState value)? initial,
    TResult Function(LoadingMovieListState value)? loading,
    TResult Function(EmptyMovieListState value)? emptyList,
    TResult Function(LoadedMovieListState value)? loaded,
    TResult Function(ErrorMovieListState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorMovieListState implements MovieListState {
  const factory ErrorMovieListState({Exception? exception}) =
      _$ErrorMovieListState;

  Exception? get exception;
  @JsonKey(ignore: true)
  $ErrorMovieListStateCopyWith<ErrorMovieListState> get copyWith =>
      throw _privateConstructorUsedError;
}

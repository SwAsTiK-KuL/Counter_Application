// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ResourceDataDto> resources) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ResourceDataDto> resources)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ResourceDataDto> resources)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListInitial value) initial,
    required TResult Function(ListLoading value) loading,
    required TResult Function(ListLoaded value) loaded,
    required TResult Function(ListError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListInitial value)? initial,
    TResult? Function(ListLoading value)? loading,
    TResult? Function(ListLoaded value)? loaded,
    TResult? Function(ListError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListInitial value)? initial,
    TResult Function(ListLoading value)? loading,
    TResult Function(ListLoaded value)? loaded,
    TResult Function(ListError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListStateCopyWith<$Res> {
  factory $ListStateCopyWith(ListState value, $Res Function(ListState) then) =
      _$ListStateCopyWithImpl<$Res, ListState>;
}

/// @nodoc
class _$ListStateCopyWithImpl<$Res, $Val extends ListState>
    implements $ListStateCopyWith<$Res> {
  _$ListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ListInitialImplCopyWith<$Res> {
  factory _$$ListInitialImplCopyWith(
          _$ListInitialImpl value, $Res Function(_$ListInitialImpl) then) =
      __$$ListInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ListInitialImplCopyWithImpl<$Res>
    extends _$ListStateCopyWithImpl<$Res, _$ListInitialImpl>
    implements _$$ListInitialImplCopyWith<$Res> {
  __$$ListInitialImplCopyWithImpl(
      _$ListInitialImpl _value, $Res Function(_$ListInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ListInitialImpl implements ListInitial {
  const _$ListInitialImpl();

  @override
  String toString() {
    return 'ListState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ListInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ResourceDataDto> resources) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ResourceDataDto> resources)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ResourceDataDto> resources)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(ListInitial value) initial,
    required TResult Function(ListLoading value) loading,
    required TResult Function(ListLoaded value) loaded,
    required TResult Function(ListError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListInitial value)? initial,
    TResult? Function(ListLoading value)? loading,
    TResult? Function(ListLoaded value)? loaded,
    TResult? Function(ListError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListInitial value)? initial,
    TResult Function(ListLoading value)? loading,
    TResult Function(ListLoaded value)? loaded,
    TResult Function(ListError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ListInitial implements ListState {
  const factory ListInitial() = _$ListInitialImpl;
}

/// @nodoc
abstract class _$$ListLoadingImplCopyWith<$Res> {
  factory _$$ListLoadingImplCopyWith(
          _$ListLoadingImpl value, $Res Function(_$ListLoadingImpl) then) =
      __$$ListLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ListLoadingImplCopyWithImpl<$Res>
    extends _$ListStateCopyWithImpl<$Res, _$ListLoadingImpl>
    implements _$$ListLoadingImplCopyWith<$Res> {
  __$$ListLoadingImplCopyWithImpl(
      _$ListLoadingImpl _value, $Res Function(_$ListLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ListLoadingImpl implements ListLoading {
  const _$ListLoadingImpl();

  @override
  String toString() {
    return 'ListState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ListLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ResourceDataDto> resources) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ResourceDataDto> resources)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ResourceDataDto> resources)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(ListInitial value) initial,
    required TResult Function(ListLoading value) loading,
    required TResult Function(ListLoaded value) loaded,
    required TResult Function(ListError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListInitial value)? initial,
    TResult? Function(ListLoading value)? loading,
    TResult? Function(ListLoaded value)? loaded,
    TResult? Function(ListError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListInitial value)? initial,
    TResult Function(ListLoading value)? loading,
    TResult Function(ListLoaded value)? loaded,
    TResult Function(ListError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ListLoading implements ListState {
  const factory ListLoading() = _$ListLoadingImpl;
}

/// @nodoc
abstract class _$$ListLoadedImplCopyWith<$Res> {
  factory _$$ListLoadedImplCopyWith(
          _$ListLoadedImpl value, $Res Function(_$ListLoadedImpl) then) =
      __$$ListLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ResourceDataDto> resources});
}

/// @nodoc
class __$$ListLoadedImplCopyWithImpl<$Res>
    extends _$ListStateCopyWithImpl<$Res, _$ListLoadedImpl>
    implements _$$ListLoadedImplCopyWith<$Res> {
  __$$ListLoadedImplCopyWithImpl(
      _$ListLoadedImpl _value, $Res Function(_$ListLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resources = null,
  }) {
    return _then(_$ListLoadedImpl(
      null == resources
          ? _value._resources
          : resources // ignore: cast_nullable_to_non_nullable
              as List<ResourceDataDto>,
    ));
  }
}

/// @nodoc

class _$ListLoadedImpl implements ListLoaded {
  const _$ListLoadedImpl(final List<ResourceDataDto> resources)
      : _resources = resources;

  final List<ResourceDataDto> _resources;
  @override
  List<ResourceDataDto> get resources {
    if (_resources is EqualUnmodifiableListView) return _resources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_resources);
  }

  @override
  String toString() {
    return 'ListState.loaded(resources: $resources)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._resources, _resources));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_resources));

  /// Create a copy of ListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListLoadedImplCopyWith<_$ListLoadedImpl> get copyWith =>
      __$$ListLoadedImplCopyWithImpl<_$ListLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ResourceDataDto> resources) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(resources);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ResourceDataDto> resources)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(resources);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ResourceDataDto> resources)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(resources);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListInitial value) initial,
    required TResult Function(ListLoading value) loading,
    required TResult Function(ListLoaded value) loaded,
    required TResult Function(ListError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListInitial value)? initial,
    TResult? Function(ListLoading value)? loading,
    TResult? Function(ListLoaded value)? loaded,
    TResult? Function(ListError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListInitial value)? initial,
    TResult Function(ListLoading value)? loading,
    TResult Function(ListLoaded value)? loaded,
    TResult Function(ListError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ListLoaded implements ListState {
  const factory ListLoaded(final List<ResourceDataDto> resources) =
      _$ListLoadedImpl;

  List<ResourceDataDto> get resources;

  /// Create a copy of ListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListLoadedImplCopyWith<_$ListLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListErrorImplCopyWith<$Res> {
  factory _$$ListErrorImplCopyWith(
          _$ListErrorImpl value, $Res Function(_$ListErrorImpl) then) =
      __$$ListErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ListErrorImplCopyWithImpl<$Res>
    extends _$ListStateCopyWithImpl<$Res, _$ListErrorImpl>
    implements _$$ListErrorImplCopyWith<$Res> {
  __$$ListErrorImplCopyWithImpl(
      _$ListErrorImpl _value, $Res Function(_$ListErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ListErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ListErrorImpl implements ListError {
  const _$ListErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ListState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListErrorImplCopyWith<_$ListErrorImpl> get copyWith =>
      __$$ListErrorImplCopyWithImpl<_$ListErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ResourceDataDto> resources) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ResourceDataDto> resources)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ResourceDataDto> resources)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListInitial value) initial,
    required TResult Function(ListLoading value) loading,
    required TResult Function(ListLoaded value) loaded,
    required TResult Function(ListError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListInitial value)? initial,
    TResult? Function(ListLoading value)? loading,
    TResult? Function(ListLoaded value)? loaded,
    TResult? Function(ListError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListInitial value)? initial,
    TResult Function(ListLoading value)? loading,
    TResult Function(ListLoaded value)? loaded,
    TResult Function(ListError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ListError implements ListState {
  const factory ListError(final String message) = _$ListErrorImpl;

  String get message;

  /// Create a copy of ListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListErrorImplCopyWith<_$ListErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

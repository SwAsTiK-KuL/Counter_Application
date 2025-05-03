// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchListData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchListData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchListData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchListData value) fetchListData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchListData value)? fetchListData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchListData value)? fetchListData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListEventCopyWith<$Res> {
  factory $ListEventCopyWith(ListEvent value, $Res Function(ListEvent) then) =
      _$ListEventCopyWithImpl<$Res, ListEvent>;
}

/// @nodoc
class _$ListEventCopyWithImpl<$Res, $Val extends ListEvent>
    implements $ListEventCopyWith<$Res> {
  _$ListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchListDataImplCopyWith<$Res> {
  factory _$$FetchListDataImplCopyWith(
          _$FetchListDataImpl value, $Res Function(_$FetchListDataImpl) then) =
      __$$FetchListDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchListDataImplCopyWithImpl<$Res>
    extends _$ListEventCopyWithImpl<$Res, _$FetchListDataImpl>
    implements _$$FetchListDataImplCopyWith<$Res> {
  __$$FetchListDataImplCopyWithImpl(
      _$FetchListDataImpl _value, $Res Function(_$FetchListDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchListDataImpl implements FetchListData {
  const _$FetchListDataImpl();

  @override
  String toString() {
    return 'ListEvent.fetchListData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchListDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchListData,
  }) {
    return fetchListData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchListData,
  }) {
    return fetchListData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchListData,
    required TResult orElse(),
  }) {
    if (fetchListData != null) {
      return fetchListData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchListData value) fetchListData,
  }) {
    return fetchListData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchListData value)? fetchListData,
  }) {
    return fetchListData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchListData value)? fetchListData,
    required TResult orElse(),
  }) {
    if (fetchListData != null) {
      return fetchListData(this);
    }
    return orElse();
  }
}

abstract class FetchListData implements ListEvent {
  const factory FetchListData() = _$FetchListDataImpl;
}

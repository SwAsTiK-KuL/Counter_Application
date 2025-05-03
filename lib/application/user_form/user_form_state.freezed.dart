// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserFormState {
  String get name => throw _privateConstructorUsedError;
  String get job => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;

  /// Create a copy of UserFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserFormStateCopyWith<UserFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFormStateCopyWith<$Res> {
  factory $UserFormStateCopyWith(
          UserFormState value, $Res Function(UserFormState) then) =
      _$UserFormStateCopyWithImpl<$Res, UserFormState>;
  @useResult
  $Res call(
      {String name,
      String job,
      bool isSubmitting,
      bool isValid,
      String? errorMessage,
      bool? isSuccess});
}

/// @nodoc
class _$UserFormStateCopyWithImpl<$Res, $Val extends UserFormState>
    implements $UserFormStateCopyWith<$Res> {
  _$UserFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? job = null,
    Object? isSubmitting = null,
    Object? isValid = null,
    Object? errorMessage = freezed,
    Object? isSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      job: null == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserFormStateImplCopyWith<$Res>
    implements $UserFormStateCopyWith<$Res> {
  factory _$$UserFormStateImplCopyWith(
          _$UserFormStateImpl value, $Res Function(_$UserFormStateImpl) then) =
      __$$UserFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String job,
      bool isSubmitting,
      bool isValid,
      String? errorMessage,
      bool? isSuccess});
}

/// @nodoc
class __$$UserFormStateImplCopyWithImpl<$Res>
    extends _$UserFormStateCopyWithImpl<$Res, _$UserFormStateImpl>
    implements _$$UserFormStateImplCopyWith<$Res> {
  __$$UserFormStateImplCopyWithImpl(
      _$UserFormStateImpl _value, $Res Function(_$UserFormStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? job = null,
    Object? isSubmitting = null,
    Object? isValid = null,
    Object? errorMessage = freezed,
    Object? isSuccess = freezed,
  }) {
    return _then(_$UserFormStateImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      job: null == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$UserFormStateImpl implements _UserFormState {
  const _$UserFormStateImpl(
      {required this.name,
      required this.job,
      required this.isSubmitting,
      required this.isValid,
      this.errorMessage,
      this.isSuccess});

  @override
  final String name;
  @override
  final String job;
  @override
  final bool isSubmitting;
  @override
  final bool isValid;
  @override
  final String? errorMessage;
  @override
  final bool? isSuccess;

  @override
  String toString() {
    return 'UserFormState(name: $name, job: $job, isSubmitting: $isSubmitting, isValid: $isValid, errorMessage: $errorMessage, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserFormStateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.job, job) || other.job == job) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, job, isSubmitting, isValid, errorMessage, isSuccess);

  /// Create a copy of UserFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserFormStateImplCopyWith<_$UserFormStateImpl> get copyWith =>
      __$$UserFormStateImplCopyWithImpl<_$UserFormStateImpl>(this, _$identity);
}

abstract class _UserFormState implements UserFormState {
  const factory _UserFormState(
      {required final String name,
      required final String job,
      required final bool isSubmitting,
      required final bool isValid,
      final String? errorMessage,
      final bool? isSuccess}) = _$UserFormStateImpl;

  @override
  String get name;
  @override
  String get job;
  @override
  bool get isSubmitting;
  @override
  bool get isValid;
  @override
  String? get errorMessage;
  @override
  bool? get isSuccess;

  /// Create a copy of UserFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserFormStateImplCopyWith<_$UserFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

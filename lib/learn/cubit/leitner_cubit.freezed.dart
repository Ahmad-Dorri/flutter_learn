// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leitner_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LeitnerState {
  List<CardModel> get cards => throw _privateConstructorUsedError;

  /// Create a copy of LeitnerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeitnerStateCopyWith<LeitnerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeitnerStateCopyWith<$Res> {
  factory $LeitnerStateCopyWith(
          LeitnerState value, $Res Function(LeitnerState) then) =
      _$LeitnerStateCopyWithImpl<$Res, LeitnerState>;
  @useResult
  $Res call({List<CardModel> cards});
}

/// @nodoc
class _$LeitnerStateCopyWithImpl<$Res, $Val extends LeitnerState>
    implements $LeitnerStateCopyWith<$Res> {
  _$LeitnerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeitnerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cards = null,
  }) {
    return _then(_value.copyWith(
      cards: null == cards
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeitnerStateImplCopyWith<$Res>
    implements $LeitnerStateCopyWith<$Res> {
  factory _$$LeitnerStateImplCopyWith(
          _$LeitnerStateImpl value, $Res Function(_$LeitnerStateImpl) then) =
      __$$LeitnerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CardModel> cards});
}

/// @nodoc
class __$$LeitnerStateImplCopyWithImpl<$Res>
    extends _$LeitnerStateCopyWithImpl<$Res, _$LeitnerStateImpl>
    implements _$$LeitnerStateImplCopyWith<$Res> {
  __$$LeitnerStateImplCopyWithImpl(
      _$LeitnerStateImpl _value, $Res Function(_$LeitnerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeitnerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cards = null,
  }) {
    return _then(_$LeitnerStateImpl(
      cards: null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardModel>,
    ));
  }
}

/// @nodoc

class _$LeitnerStateImpl implements _LeitnerState {
  const _$LeitnerStateImpl({final List<CardModel> cards = const []})
      : _cards = cards;

  final List<CardModel> _cards;
  @override
  @JsonKey()
  List<CardModel> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  String toString() {
    return 'LeitnerState(cards: $cards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeitnerStateImpl &&
            const DeepCollectionEquality().equals(other._cards, _cards));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cards));

  /// Create a copy of LeitnerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeitnerStateImplCopyWith<_$LeitnerStateImpl> get copyWith =>
      __$$LeitnerStateImplCopyWithImpl<_$LeitnerStateImpl>(this, _$identity);
}

abstract class _LeitnerState implements LeitnerState {
  const factory _LeitnerState({final List<CardModel> cards}) =
      _$LeitnerStateImpl;

  @override
  List<CardModel> get cards;

  /// Create a copy of LeitnerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeitnerStateImplCopyWith<_$LeitnerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeAppState {
  List<CoinEntity> get coins => throw _privateConstructorUsedError;
  List<CoinEntity> get filteredCoins => throw _privateConstructorUsedError;
  String? get lastQuery => throw _privateConstructorUsedError;

  /// Create a copy of HomeAppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeAppStateCopyWith<HomeAppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeAppStateCopyWith<$Res> {
  factory $HomeAppStateCopyWith(
          HomeAppState value, $Res Function(HomeAppState) then) =
      _$HomeAppStateCopyWithImpl<$Res, HomeAppState>;
  @useResult
  $Res call(
      {List<CoinEntity> coins,
      List<CoinEntity> filteredCoins,
      String? lastQuery});
}

/// @nodoc
class _$HomeAppStateCopyWithImpl<$Res, $Val extends HomeAppState>
    implements $HomeAppStateCopyWith<$Res> {
  _$HomeAppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeAppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coins = null,
    Object? filteredCoins = null,
    Object? lastQuery = freezed,
  }) {
    return _then(_value.copyWith(
      coins: null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<CoinEntity>,
      filteredCoins: null == filteredCoins
          ? _value.filteredCoins
          : filteredCoins // ignore: cast_nullable_to_non_nullable
              as List<CoinEntity>,
      lastQuery: freezed == lastQuery
          ? _value.lastQuery
          : lastQuery // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeAppStateImplCopyWith<$Res>
    implements $HomeAppStateCopyWith<$Res> {
  factory _$$HomeAppStateImplCopyWith(
          _$HomeAppStateImpl value, $Res Function(_$HomeAppStateImpl) then) =
      __$$HomeAppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CoinEntity> coins,
      List<CoinEntity> filteredCoins,
      String? lastQuery});
}

/// @nodoc
class __$$HomeAppStateImplCopyWithImpl<$Res>
    extends _$HomeAppStateCopyWithImpl<$Res, _$HomeAppStateImpl>
    implements _$$HomeAppStateImplCopyWith<$Res> {
  __$$HomeAppStateImplCopyWithImpl(
      _$HomeAppStateImpl _value, $Res Function(_$HomeAppStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeAppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coins = null,
    Object? filteredCoins = null,
    Object? lastQuery = freezed,
  }) {
    return _then(_$HomeAppStateImpl(
      coins: null == coins
          ? _value._coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<CoinEntity>,
      filteredCoins: null == filteredCoins
          ? _value._filteredCoins
          : filteredCoins // ignore: cast_nullable_to_non_nullable
              as List<CoinEntity>,
      lastQuery: freezed == lastQuery
          ? _value.lastQuery
          : lastQuery // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$HomeAppStateImpl implements _HomeAppState {
  const _$HomeAppStateImpl(
      {required final List<CoinEntity> coins,
      required final List<CoinEntity> filteredCoins,
      this.lastQuery})
      : _coins = coins,
        _filteredCoins = filteredCoins;

  final List<CoinEntity> _coins;
  @override
  List<CoinEntity> get coins {
    if (_coins is EqualUnmodifiableListView) return _coins;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coins);
  }

  final List<CoinEntity> _filteredCoins;
  @override
  List<CoinEntity> get filteredCoins {
    if (_filteredCoins is EqualUnmodifiableListView) return _filteredCoins;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredCoins);
  }

  @override
  final String? lastQuery;

  @override
  String toString() {
    return 'HomeAppState(coins: $coins, filteredCoins: $filteredCoins, lastQuery: $lastQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeAppStateImpl &&
            const DeepCollectionEquality().equals(other._coins, _coins) &&
            const DeepCollectionEquality()
                .equals(other._filteredCoins, _filteredCoins) &&
            (identical(other.lastQuery, lastQuery) ||
                other.lastQuery == lastQuery));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_coins),
      const DeepCollectionEquality().hash(_filteredCoins),
      lastQuery);

  /// Create a copy of HomeAppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeAppStateImplCopyWith<_$HomeAppStateImpl> get copyWith =>
      __$$HomeAppStateImplCopyWithImpl<_$HomeAppStateImpl>(this, _$identity);
}

abstract class _HomeAppState implements HomeAppState {
  const factory _HomeAppState(
      {required final List<CoinEntity> coins,
      required final List<CoinEntity> filteredCoins,
      final String? lastQuery}) = _$HomeAppStateImpl;

  @override
  List<CoinEntity> get coins;
  @override
  List<CoinEntity> get filteredCoins;
  @override
  String? get lastQuery;

  /// Create a copy of HomeAppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeAppStateImplCopyWith<_$HomeAppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

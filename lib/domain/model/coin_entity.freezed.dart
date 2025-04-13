// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coin_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoinEntity _$CoinEntityFromJson(Map<String, dynamic> json) {
  return _CoinEntity.fromJson(json);
}

/// @nodoc
mixin _$CoinEntity {
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get symbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_price')
  double? get currentPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_change_percentage_24h')
  double? get priceChangePercentage24h => throw _privateConstructorUsedError;

  /// Create a copy of CoinEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoinEntityCopyWith<CoinEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinEntityCopyWith<$Res> {
  factory $CoinEntityCopyWith(
          CoinEntity value, $Res Function(CoinEntity) then) =
      _$CoinEntityCopyWithImpl<$Res, CoinEntity>;
  @useResult
  $Res call(
      {String id,
      String? name,
      String? image,
      String? symbol,
      @JsonKey(name: 'current_price') double? currentPrice,
      @JsonKey(name: 'price_change_percentage_24h')
      double? priceChangePercentage24h});
}

/// @nodoc
class _$CoinEntityCopyWithImpl<$Res, $Val extends CoinEntity>
    implements $CoinEntityCopyWith<$Res> {
  _$CoinEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoinEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? image = freezed,
    Object? symbol = freezed,
    Object? currentPrice = freezed,
    Object? priceChangePercentage24h = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPrice: freezed == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      priceChangePercentage24h: freezed == priceChangePercentage24h
          ? _value.priceChangePercentage24h
          : priceChangePercentage24h // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoinEntityImplCopyWith<$Res>
    implements $CoinEntityCopyWith<$Res> {
  factory _$$CoinEntityImplCopyWith(
          _$CoinEntityImpl value, $Res Function(_$CoinEntityImpl) then) =
      __$$CoinEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? name,
      String? image,
      String? symbol,
      @JsonKey(name: 'current_price') double? currentPrice,
      @JsonKey(name: 'price_change_percentage_24h')
      double? priceChangePercentage24h});
}

/// @nodoc
class __$$CoinEntityImplCopyWithImpl<$Res>
    extends _$CoinEntityCopyWithImpl<$Res, _$CoinEntityImpl>
    implements _$$CoinEntityImplCopyWith<$Res> {
  __$$CoinEntityImplCopyWithImpl(
      _$CoinEntityImpl _value, $Res Function(_$CoinEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoinEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? image = freezed,
    Object? symbol = freezed,
    Object? currentPrice = freezed,
    Object? priceChangePercentage24h = freezed,
  }) {
    return _then(_$CoinEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPrice: freezed == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      priceChangePercentage24h: freezed == priceChangePercentage24h
          ? _value.priceChangePercentage24h
          : priceChangePercentage24h // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$CoinEntityImpl implements _CoinEntity {
  const _$CoinEntityImpl(
      {required this.id,
      required this.name,
      required this.image,
      required this.symbol,
      @JsonKey(name: 'current_price') required this.currentPrice,
      @JsonKey(name: 'price_change_percentage_24h')
      required this.priceChangePercentage24h});

  factory _$CoinEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoinEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final String? symbol;
  @override
  @JsonKey(name: 'current_price')
  final double? currentPrice;
  @override
  @JsonKey(name: 'price_change_percentage_24h')
  final double? priceChangePercentage24h;

  @override
  String toString() {
    return 'CoinEntity(id: $id, name: $name, image: $image, symbol: $symbol, currentPrice: $currentPrice, priceChangePercentage24h: $priceChangePercentage24h)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoinEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice) &&
            (identical(
                    other.priceChangePercentage24h, priceChangePercentage24h) ||
                other.priceChangePercentage24h == priceChangePercentage24h));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image, symbol,
      currentPrice, priceChangePercentage24h);

  /// Create a copy of CoinEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoinEntityImplCopyWith<_$CoinEntityImpl> get copyWith =>
      __$$CoinEntityImplCopyWithImpl<_$CoinEntityImpl>(this, _$identity);
}

abstract class _CoinEntity implements CoinEntity {
  const factory _CoinEntity(
      {required final String id,
      required final String? name,
      required final String? image,
      required final String? symbol,
      @JsonKey(name: 'current_price') required final double? currentPrice,
      @JsonKey(name: 'price_change_percentage_24h')
      required final double? priceChangePercentage24h}) = _$CoinEntityImpl;

  factory _CoinEntity.fromJson(Map<String, dynamic> json) =
      _$CoinEntityImpl.fromJson;

  @override
  String get id;
  @override
  String? get name;
  @override
  String? get image;
  @override
  String? get symbol;
  @override
  @JsonKey(name: 'current_price')
  double? get currentPrice;
  @override
  @JsonKey(name: 'price_change_percentage_24h')
  double? get priceChangePercentage24h;

  /// Create a copy of CoinEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoinEntityImplCopyWith<_$CoinEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expenditure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Expenditure _$ExpenditureFromJson(Map<String, dynamic> json) {
  return _Expenditure.fromJson(json);
}

/// @nodoc
mixin _$Expenditure {
  String get expenditureDate => throw _privateConstructorUsedError;
  int get expenditureAmount => throw _privateConstructorUsedError;
  String get expenditureCategory => throw _privateConstructorUsedError;
  String get expenditureMemo => throw _privateConstructorUsedError;

  /// Serializes this Expenditure to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Expenditure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExpenditureCopyWith<Expenditure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenditureCopyWith<$Res> {
  factory $ExpenditureCopyWith(
    Expenditure value,
    $Res Function(Expenditure) then,
  ) = _$ExpenditureCopyWithImpl<$Res, Expenditure>;
  @useResult
  $Res call({
    String expenditureDate,
    int expenditureAmount,
    String expenditureCategory,
    String expenditureMemo,
  });
}

/// @nodoc
class _$ExpenditureCopyWithImpl<$Res, $Val extends Expenditure>
    implements $ExpenditureCopyWith<$Res> {
  _$ExpenditureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Expenditure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenditureDate = null,
    Object? expenditureAmount = null,
    Object? expenditureCategory = null,
    Object? expenditureMemo = null,
  }) {
    return _then(
      _value.copyWith(
            expenditureDate:
                null == expenditureDate
                    ? _value.expenditureDate
                    : expenditureDate // ignore: cast_nullable_to_non_nullable
                        as String,
            expenditureAmount:
                null == expenditureAmount
                    ? _value.expenditureAmount
                    : expenditureAmount // ignore: cast_nullable_to_non_nullable
                        as int,
            expenditureCategory:
                null == expenditureCategory
                    ? _value.expenditureCategory
                    : expenditureCategory // ignore: cast_nullable_to_non_nullable
                        as String,
            expenditureMemo:
                null == expenditureMemo
                    ? _value.expenditureMemo
                    : expenditureMemo // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ExpenditureImplCopyWith<$Res>
    implements $ExpenditureCopyWith<$Res> {
  factory _$$ExpenditureImplCopyWith(
    _$ExpenditureImpl value,
    $Res Function(_$ExpenditureImpl) then,
  ) = __$$ExpenditureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String expenditureDate,
    int expenditureAmount,
    String expenditureCategory,
    String expenditureMemo,
  });
}

/// @nodoc
class __$$ExpenditureImplCopyWithImpl<$Res>
    extends _$ExpenditureCopyWithImpl<$Res, _$ExpenditureImpl>
    implements _$$ExpenditureImplCopyWith<$Res> {
  __$$ExpenditureImplCopyWithImpl(
    _$ExpenditureImpl _value,
    $Res Function(_$ExpenditureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Expenditure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenditureDate = null,
    Object? expenditureAmount = null,
    Object? expenditureCategory = null,
    Object? expenditureMemo = null,
  }) {
    return _then(
      _$ExpenditureImpl(
        expenditureDate:
            null == expenditureDate
                ? _value.expenditureDate
                : expenditureDate // ignore: cast_nullable_to_non_nullable
                    as String,
        expenditureAmount:
            null == expenditureAmount
                ? _value.expenditureAmount
                : expenditureAmount // ignore: cast_nullable_to_non_nullable
                    as int,
        expenditureCategory:
            null == expenditureCategory
                ? _value.expenditureCategory
                : expenditureCategory // ignore: cast_nullable_to_non_nullable
                    as String,
        expenditureMemo:
            null == expenditureMemo
                ? _value.expenditureMemo
                : expenditureMemo // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenditureImpl implements _Expenditure {
  const _$ExpenditureImpl({
    required this.expenditureDate,
    required this.expenditureAmount,
    required this.expenditureCategory,
    required this.expenditureMemo,
  });

  factory _$ExpenditureImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpenditureImplFromJson(json);

  @override
  final String expenditureDate;
  @override
  final int expenditureAmount;
  @override
  final String expenditureCategory;
  @override
  final String expenditureMemo;

  @override
  String toString() {
    return 'Expenditure(expenditureDate: $expenditureDate, expenditureAmount: $expenditureAmount, expenditureCategory: $expenditureCategory, expenditureMemo: $expenditureMemo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenditureImpl &&
            (identical(other.expenditureDate, expenditureDate) ||
                other.expenditureDate == expenditureDate) &&
            (identical(other.expenditureAmount, expenditureAmount) ||
                other.expenditureAmount == expenditureAmount) &&
            (identical(other.expenditureCategory, expenditureCategory) ||
                other.expenditureCategory == expenditureCategory) &&
            (identical(other.expenditureMemo, expenditureMemo) ||
                other.expenditureMemo == expenditureMemo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    expenditureDate,
    expenditureAmount,
    expenditureCategory,
    expenditureMemo,
  );

  /// Create a copy of Expenditure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenditureImplCopyWith<_$ExpenditureImpl> get copyWith =>
      __$$ExpenditureImplCopyWithImpl<_$ExpenditureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenditureImplToJson(this);
  }
}

abstract class _Expenditure implements Expenditure {
  const factory _Expenditure({
    required final String expenditureDate,
    required final int expenditureAmount,
    required final String expenditureCategory,
    required final String expenditureMemo,
  }) = _$ExpenditureImpl;

  factory _Expenditure.fromJson(Map<String, dynamic> json) =
      _$ExpenditureImpl.fromJson;

  @override
  String get expenditureDate;
  @override
  int get expenditureAmount;
  @override
  String get expenditureCategory;
  @override
  String get expenditureMemo;

  /// Create a copy of Expenditure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExpenditureImplCopyWith<_$ExpenditureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

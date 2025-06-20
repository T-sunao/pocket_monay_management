// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expenditure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpenditureImpl _$$ExpenditureImplFromJson(Map<String, dynamic> json) =>
    _$ExpenditureImpl(
      expenditureDate: json['expenditureDate'] as String,
      expenditureAmount: (json['expenditureAmount'] as num).toInt(),
      expenditureCategory: json['expenditureCategory'] as String,
      expenditureMemo: json['expenditureMemo'] as String,
    );

Map<String, dynamic> _$$ExpenditureImplToJson(_$ExpenditureImpl instance) =>
    <String, dynamic>{
      'expenditureDate': instance.expenditureDate,
      'expenditureAmount': instance.expenditureAmount,
      'expenditureCategory': instance.expenditureCategory,
      'expenditureMemo': instance.expenditureMemo,
    };

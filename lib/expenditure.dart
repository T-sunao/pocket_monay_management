import 'package:freezed_annotation/freezed_annotation.dart';
part 'expenditure.freezed.dart';
part 'expenditure.g.dart';

@freezed
class Expenditure with _$Expenditure {
  const factory Expenditure({
    required String expenditureDate,
    required int expenditureAmount,
    required String expenditureCategory,
    required String expenditureMemo,
  }) = _Expenditure;
  factory Expenditure.fromJson(Map<String, dynamic> json) =>
      _$ExpenditureFromJson(json);
}

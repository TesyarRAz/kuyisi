import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'choice.freezed.dart';
part 'choice.g.dart';

@freezed
class Choice with _$Choice {
  factory Choice({
    String? id,
    String? questionId,
    String? choice,
    DateTime? createdAt,
  }) = _Choice;

  factory Choice.fromJson(Map<String, dynamic> json) => _$ChoiceFromJson(json);
}

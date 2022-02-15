import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'question_bank.freezed.dart';
part 'question_bank.g.dart';

@freezed
class QuestionBank with _$QuestionBank {
  factory QuestionBank({
    String? id,
    String? creatorId,
    String? name,
    String? isRandomized,
    String? isPublic,
    String? isGraded,
    DateTime? createdAt,
    DateTime? startAt,
    DateTime? endAt,
  }) = _QuestionBank;

  factory QuestionBank.fromJson(Map<String, dynamic> json) =>
      _$QuestionBankFromJson(json);
}

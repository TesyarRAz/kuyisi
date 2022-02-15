import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'answer.freezed.dart';
part 'answer.g.dart';

@freezed
class Answer with _$Answer {
  factory Answer({
    String? id,
    String? testId,
    String? questionId,
    String? choiceId,
    DateTime? createdAt,
  }) = _Answer;

  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);
}

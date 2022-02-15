import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:kuyisi/kuyisi/domain/entities/choice.dart';

part 'question.freezed.dart';
part 'question.g.dart';

enum QuestionType {
  @JsonValue('text')
  text,
  @JsonValue('radio')
  radio
}

@freezed
class Question with _$Question {
  factory Question({
    String? id,
    String? questionBankId,
    String? question,
    QuestionType? type,
    DateTime? createdAt,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}

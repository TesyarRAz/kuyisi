// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
      id: json['id'] as String?,
      questionBankId: json['questionBankId'] as String?,
      question: json['question'] as String?,
      type: $enumDecodeNullable(_$QuestionTypeEnumMap, json['type']),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_QuestionToJson(_$_Question instance) =>
    <String, dynamic>{
      'id': instance.id,
      'questionBankId': instance.questionBankId,
      'question': instance.question,
      'type': _$QuestionTypeEnumMap[instance.type],
      'createdAt': instance.createdAt?.toIso8601String(),
    };

const _$QuestionTypeEnumMap = {
  QuestionType.text: 'text',
  QuestionType.radio: 'radio',
};

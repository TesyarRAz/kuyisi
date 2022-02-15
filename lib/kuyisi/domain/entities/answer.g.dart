// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Answer _$$_AnswerFromJson(Map<String, dynamic> json) => _$_Answer(
      id: json['id'] as String?,
      testId: json['testId'] as String?,
      questionId: json['questionId'] as String?,
      choiceId: json['choiceId'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_AnswerToJson(_$_Answer instance) => <String, dynamic>{
      'id': instance.id,
      'testId': instance.testId,
      'questionId': instance.questionId,
      'choiceId': instance.choiceId,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

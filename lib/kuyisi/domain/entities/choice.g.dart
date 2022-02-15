// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Choice _$$_ChoiceFromJson(Map<String, dynamic> json) => _$_Choice(
      id: json['id'] as String?,
      questionId: json['questionId'] as String?,
      choice: json['choice'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_ChoiceToJson(_$_Choice instance) => <String, dynamic>{
      'id': instance.id,
      'questionId': instance.questionId,
      'choice': instance.choice,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

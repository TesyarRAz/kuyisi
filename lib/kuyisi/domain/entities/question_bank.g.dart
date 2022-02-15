// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_bank.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionBank _$$_QuestionBankFromJson(Map<String, dynamic> json) =>
    _$_QuestionBank(
      id: json['id'] as String?,
      creatorId: json['creatorId'] as String?,
      name: json['name'] as String?,
      isRandomized: json['isRandomized'] as String?,
      isPublic: json['isPublic'] as String?,
      isGraded: json['isGraded'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      startAt: json['startAt'] == null
          ? null
          : DateTime.parse(json['startAt'] as String),
      endAt: json['endAt'] == null
          ? null
          : DateTime.parse(json['endAt'] as String),
    );

Map<String, dynamic> _$$_QuestionBankToJson(_$_QuestionBank instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creatorId': instance.creatorId,
      'name': instance.name,
      'isRandomized': instance.isRandomized,
      'isPublic': instance.isPublic,
      'isGraded': instance.isGraded,
      'createdAt': instance.createdAt?.toIso8601String(),
      'startAt': instance.startAt?.toIso8601String(),
      'endAt': instance.endAt?.toIso8601String(),
    };

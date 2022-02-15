// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Test _$$_TestFromJson(Map<String, dynamic> json) => _$_Test(
      id: json['id'] as String?,
      userId: json['userId'] as String?,
      questionBankId: json['questionBankId'] as String?,
      grade: (json['grade'] as num?)?.toDouble(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_TestToJson(_$_Test instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'questionBankId': instance.questionBankId,
      'grade': instance.grade,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

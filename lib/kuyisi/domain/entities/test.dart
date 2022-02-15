import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'test.freezed.dart';
part 'test.g.dart';

@freezed
class Test with _$Test {
  factory Test({
    String? id,
    String? userId,
    String? questionBankId,
    double? grade,
    DateTime? createdAt,
  }) = _Test;

  factory Test.fromJson(Map<String, dynamic> json) => _$TestFromJson(json);
}

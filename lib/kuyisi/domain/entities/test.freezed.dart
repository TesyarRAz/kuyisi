// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'test.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Test _$TestFromJson(Map<String, dynamic> json) {
  return _Test.fromJson(json);
}

/// @nodoc
class _$TestTearOff {
  const _$TestTearOff();

  _Test call(
      {String? id,
      String? userId,
      String? questionBankId,
      double? grade,
      DateTime? createdAt}) {
    return _Test(
      id: id,
      userId: userId,
      questionBankId: questionBankId,
      grade: grade,
      createdAt: createdAt,
    );
  }

  Test fromJson(Map<String, Object?> json) {
    return Test.fromJson(json);
  }
}

/// @nodoc
const $Test = _$TestTearOff();

/// @nodoc
mixin _$Test {
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get questionBankId => throw _privateConstructorUsedError;
  double? get grade => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestCopyWith<Test> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestCopyWith<$Res> {
  factory $TestCopyWith(Test value, $Res Function(Test) then) =
      _$TestCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? userId,
      String? questionBankId,
      double? grade,
      DateTime? createdAt});
}

/// @nodoc
class _$TestCopyWithImpl<$Res> implements $TestCopyWith<$Res> {
  _$TestCopyWithImpl(this._value, this._then);

  final Test _value;
  // ignore: unused_field
  final $Res Function(Test) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? questionBankId = freezed,
    Object? grade = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      questionBankId: questionBankId == freezed
          ? _value.questionBankId
          : questionBankId // ignore: cast_nullable_to_non_nullable
              as String?,
      grade: grade == freezed
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$TestCopyWith<$Res> implements $TestCopyWith<$Res> {
  factory _$TestCopyWith(_Test value, $Res Function(_Test) then) =
      __$TestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? userId,
      String? questionBankId,
      double? grade,
      DateTime? createdAt});
}

/// @nodoc
class __$TestCopyWithImpl<$Res> extends _$TestCopyWithImpl<$Res>
    implements _$TestCopyWith<$Res> {
  __$TestCopyWithImpl(_Test _value, $Res Function(_Test) _then)
      : super(_value, (v) => _then(v as _Test));

  @override
  _Test get _value => super._value as _Test;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? questionBankId = freezed,
    Object? grade = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_Test(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      questionBankId: questionBankId == freezed
          ? _value.questionBankId
          : questionBankId // ignore: cast_nullable_to_non_nullable
              as String?,
      grade: grade == freezed
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Test with DiagnosticableTreeMixin implements _Test {
  _$_Test(
      {this.id, this.userId, this.questionBankId, this.grade, this.createdAt});

  factory _$_Test.fromJson(Map<String, dynamic> json) => _$$_TestFromJson(json);

  @override
  final String? id;
  @override
  final String? userId;
  @override
  final String? questionBankId;
  @override
  final double? grade;
  @override
  final DateTime? createdAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Test(id: $id, userId: $userId, questionBankId: $questionBankId, grade: $grade, createdAt: $createdAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Test'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('questionBankId', questionBankId))
      ..add(DiagnosticsProperty('grade', grade))
      ..add(DiagnosticsProperty('createdAt', createdAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Test &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality()
                .equals(other.questionBankId, questionBankId) &&
            const DeepCollectionEquality().equals(other.grade, grade) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(questionBankId),
      const DeepCollectionEquality().hash(grade),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$TestCopyWith<_Test> get copyWith =>
      __$TestCopyWithImpl<_Test>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TestToJson(this);
  }
}

abstract class _Test implements Test {
  factory _Test(
      {String? id,
      String? userId,
      String? questionBankId,
      double? grade,
      DateTime? createdAt}) = _$_Test;

  factory _Test.fromJson(Map<String, dynamic> json) = _$_Test.fromJson;

  @override
  String? get id;
  @override
  String? get userId;
  @override
  String? get questionBankId;
  @override
  double? get grade;
  @override
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$TestCopyWith<_Test> get copyWith => throw _privateConstructorUsedError;
}

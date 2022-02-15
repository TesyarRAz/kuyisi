// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Answer _$AnswerFromJson(Map<String, dynamic> json) {
  return _Answer.fromJson(json);
}

/// @nodoc
class _$AnswerTearOff {
  const _$AnswerTearOff();

  _Answer call(
      {String? id,
      String? testId,
      String? questionId,
      String? choiceId,
      DateTime? createdAt}) {
    return _Answer(
      id: id,
      testId: testId,
      questionId: questionId,
      choiceId: choiceId,
      createdAt: createdAt,
    );
  }

  Answer fromJson(Map<String, Object?> json) {
    return Answer.fromJson(json);
  }
}

/// @nodoc
const $Answer = _$AnswerTearOff();

/// @nodoc
mixin _$Answer {
  String? get id => throw _privateConstructorUsedError;
  String? get testId => throw _privateConstructorUsedError;
  String? get questionId => throw _privateConstructorUsedError;
  String? get choiceId => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerCopyWith<Answer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerCopyWith<$Res> {
  factory $AnswerCopyWith(Answer value, $Res Function(Answer) then) =
      _$AnswerCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? testId,
      String? questionId,
      String? choiceId,
      DateTime? createdAt});
}

/// @nodoc
class _$AnswerCopyWithImpl<$Res> implements $AnswerCopyWith<$Res> {
  _$AnswerCopyWithImpl(this._value, this._then);

  final Answer _value;
  // ignore: unused_field
  final $Res Function(Answer) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? testId = freezed,
    Object? questionId = freezed,
    Object? choiceId = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      testId: testId == freezed
          ? _value.testId
          : testId // ignore: cast_nullable_to_non_nullable
              as String?,
      questionId: questionId == freezed
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String?,
      choiceId: choiceId == freezed
          ? _value.choiceId
          : choiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$AnswerCopyWith<$Res> implements $AnswerCopyWith<$Res> {
  factory _$AnswerCopyWith(_Answer value, $Res Function(_Answer) then) =
      __$AnswerCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? testId,
      String? questionId,
      String? choiceId,
      DateTime? createdAt});
}

/// @nodoc
class __$AnswerCopyWithImpl<$Res> extends _$AnswerCopyWithImpl<$Res>
    implements _$AnswerCopyWith<$Res> {
  __$AnswerCopyWithImpl(_Answer _value, $Res Function(_Answer) _then)
      : super(_value, (v) => _then(v as _Answer));

  @override
  _Answer get _value => super._value as _Answer;

  @override
  $Res call({
    Object? id = freezed,
    Object? testId = freezed,
    Object? questionId = freezed,
    Object? choiceId = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_Answer(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      testId: testId == freezed
          ? _value.testId
          : testId // ignore: cast_nullable_to_non_nullable
              as String?,
      questionId: questionId == freezed
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String?,
      choiceId: choiceId == freezed
          ? _value.choiceId
          : choiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Answer with DiagnosticableTreeMixin implements _Answer {
  _$_Answer(
      {this.id, this.testId, this.questionId, this.choiceId, this.createdAt});

  factory _$_Answer.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerFromJson(json);

  @override
  final String? id;
  @override
  final String? testId;
  @override
  final String? questionId;
  @override
  final String? choiceId;
  @override
  final DateTime? createdAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Answer(id: $id, testId: $testId, questionId: $questionId, choiceId: $choiceId, createdAt: $createdAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Answer'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('testId', testId))
      ..add(DiagnosticsProperty('questionId', questionId))
      ..add(DiagnosticsProperty('choiceId', choiceId))
      ..add(DiagnosticsProperty('createdAt', createdAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Answer &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.testId, testId) &&
            const DeepCollectionEquality()
                .equals(other.questionId, questionId) &&
            const DeepCollectionEquality().equals(other.choiceId, choiceId) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(testId),
      const DeepCollectionEquality().hash(questionId),
      const DeepCollectionEquality().hash(choiceId),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$AnswerCopyWith<_Answer> get copyWith =>
      __$AnswerCopyWithImpl<_Answer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswerToJson(this);
  }
}

abstract class _Answer implements Answer {
  factory _Answer(
      {String? id,
      String? testId,
      String? questionId,
      String? choiceId,
      DateTime? createdAt}) = _$_Answer;

  factory _Answer.fromJson(Map<String, dynamic> json) = _$_Answer.fromJson;

  @override
  String? get id;
  @override
  String? get testId;
  @override
  String? get questionId;
  @override
  String? get choiceId;
  @override
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$AnswerCopyWith<_Answer> get copyWith => throw _privateConstructorUsedError;
}

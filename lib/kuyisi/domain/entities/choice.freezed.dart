// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'choice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Choice _$ChoiceFromJson(Map<String, dynamic> json) {
  return _Choice.fromJson(json);
}

/// @nodoc
class _$ChoiceTearOff {
  const _$ChoiceTearOff();

  _Choice call(
      {String? id, String? questionId, String? choice, DateTime? createdAt}) {
    return _Choice(
      id: id,
      questionId: questionId,
      choice: choice,
      createdAt: createdAt,
    );
  }

  Choice fromJson(Map<String, Object?> json) {
    return Choice.fromJson(json);
  }
}

/// @nodoc
const $Choice = _$ChoiceTearOff();

/// @nodoc
mixin _$Choice {
  String? get id => throw _privateConstructorUsedError;
  String? get questionId => throw _privateConstructorUsedError;
  String? get choice => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoiceCopyWith<Choice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceCopyWith<$Res> {
  factory $ChoiceCopyWith(Choice value, $Res Function(Choice) then) =
      _$ChoiceCopyWithImpl<$Res>;
  $Res call(
      {String? id, String? questionId, String? choice, DateTime? createdAt});
}

/// @nodoc
class _$ChoiceCopyWithImpl<$Res> implements $ChoiceCopyWith<$Res> {
  _$ChoiceCopyWithImpl(this._value, this._then);

  final Choice _value;
  // ignore: unused_field
  final $Res Function(Choice) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? questionId = freezed,
    Object? choice = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      questionId: questionId == freezed
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String?,
      choice: choice == freezed
          ? _value.choice
          : choice // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$ChoiceCopyWith<$Res> implements $ChoiceCopyWith<$Res> {
  factory _$ChoiceCopyWith(_Choice value, $Res Function(_Choice) then) =
      __$ChoiceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id, String? questionId, String? choice, DateTime? createdAt});
}

/// @nodoc
class __$ChoiceCopyWithImpl<$Res> extends _$ChoiceCopyWithImpl<$Res>
    implements _$ChoiceCopyWith<$Res> {
  __$ChoiceCopyWithImpl(_Choice _value, $Res Function(_Choice) _then)
      : super(_value, (v) => _then(v as _Choice));

  @override
  _Choice get _value => super._value as _Choice;

  @override
  $Res call({
    Object? id = freezed,
    Object? questionId = freezed,
    Object? choice = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_Choice(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      questionId: questionId == freezed
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String?,
      choice: choice == freezed
          ? _value.choice
          : choice // ignore: cast_nullable_to_non_nullable
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
class _$_Choice with DiagnosticableTreeMixin implements _Choice {
  _$_Choice({this.id, this.questionId, this.choice, this.createdAt});

  factory _$_Choice.fromJson(Map<String, dynamic> json) =>
      _$$_ChoiceFromJson(json);

  @override
  final String? id;
  @override
  final String? questionId;
  @override
  final String? choice;
  @override
  final DateTime? createdAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Choice(id: $id, questionId: $questionId, choice: $choice, createdAt: $createdAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Choice'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('questionId', questionId))
      ..add(DiagnosticsProperty('choice', choice))
      ..add(DiagnosticsProperty('createdAt', createdAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Choice &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.questionId, questionId) &&
            const DeepCollectionEquality().equals(other.choice, choice) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(questionId),
      const DeepCollectionEquality().hash(choice),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$ChoiceCopyWith<_Choice> get copyWith =>
      __$ChoiceCopyWithImpl<_Choice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChoiceToJson(this);
  }
}

abstract class _Choice implements Choice {
  factory _Choice(
      {String? id,
      String? questionId,
      String? choice,
      DateTime? createdAt}) = _$_Choice;

  factory _Choice.fromJson(Map<String, dynamic> json) = _$_Choice.fromJson;

  @override
  String? get id;
  @override
  String? get questionId;
  @override
  String? get choice;
  @override
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$ChoiceCopyWith<_Choice> get copyWith => throw _privateConstructorUsedError;
}

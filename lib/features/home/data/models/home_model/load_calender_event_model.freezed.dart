// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'load_calender_event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventEntityModel _$EventEntityModelFromJson(Map<String, dynamic> json) {
  return _EventEntityModel.fromJson(json);
}

/// @nodoc
mixin _$EventEntityModel {
  String? get employeeId => throw _privateConstructorUsedError;
  DateTime? get dateTime => throw _privateConstructorUsedError;
  String? get leaveReason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventEntityModelCopyWith<EventEntityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventEntityModelCopyWith<$Res> {
  factory $EventEntityModelCopyWith(
          EventEntityModel value, $Res Function(EventEntityModel) then) =
      _$EventEntityModelCopyWithImpl<$Res, EventEntityModel>;
  @useResult
  $Res call({String? employeeId, DateTime? dateTime, String? leaveReason});
}

/// @nodoc
class _$EventEntityModelCopyWithImpl<$Res, $Val extends EventEntityModel>
    implements $EventEntityModelCopyWith<$Res> {
  _$EventEntityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeId = freezed,
    Object? dateTime = freezed,
    Object? leaveReason = freezed,
  }) {
    return _then(_value.copyWith(
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      leaveReason: freezed == leaveReason
          ? _value.leaveReason
          : leaveReason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventEntityModelImplCopyWith<$Res>
    implements $EventEntityModelCopyWith<$Res> {
  factory _$$EventEntityModelImplCopyWith(_$EventEntityModelImpl value,
          $Res Function(_$EventEntityModelImpl) then) =
      __$$EventEntityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? employeeId, DateTime? dateTime, String? leaveReason});
}

/// @nodoc
class __$$EventEntityModelImplCopyWithImpl<$Res>
    extends _$EventEntityModelCopyWithImpl<$Res, _$EventEntityModelImpl>
    implements _$$EventEntityModelImplCopyWith<$Res> {
  __$$EventEntityModelImplCopyWithImpl(_$EventEntityModelImpl _value,
      $Res Function(_$EventEntityModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeId = freezed,
    Object? dateTime = freezed,
    Object? leaveReason = freezed,
  }) {
    return _then(_$EventEntityModelImpl(
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      leaveReason: freezed == leaveReason
          ? _value.leaveReason
          : leaveReason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventEntityModelImpl
    with DiagnosticableTreeMixin
    implements _EventEntityModel {
  const _$EventEntityModelImpl(
      {required this.employeeId,
      required this.dateTime,
      required this.leaveReason});

  factory _$EventEntityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventEntityModelImplFromJson(json);

  @override
  final String? employeeId;
  @override
  final DateTime? dateTime;
  @override
  final String? leaveReason;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EventEntityModel(employeeId: $employeeId, dateTime: $dateTime, leaveReason: $leaveReason)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EventEntityModel'))
      ..add(DiagnosticsProperty('employeeId', employeeId))
      ..add(DiagnosticsProperty('dateTime', dateTime))
      ..add(DiagnosticsProperty('leaveReason', leaveReason));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventEntityModelImpl &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.leaveReason, leaveReason) ||
                other.leaveReason == leaveReason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, employeeId, dateTime, leaveReason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventEntityModelImplCopyWith<_$EventEntityModelImpl> get copyWith =>
      __$$EventEntityModelImplCopyWithImpl<_$EventEntityModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventEntityModelImplToJson(
      this,
    );
  }
}

abstract class _EventEntityModel implements EventEntityModel {
  const factory _EventEntityModel(
      {required final String? employeeId,
      required final DateTime? dateTime,
      required final String? leaveReason}) = _$EventEntityModelImpl;

  factory _EventEntityModel.fromJson(Map<String, dynamic> json) =
      _$EventEntityModelImpl.fromJson;

  @override
  String? get employeeId;
  @override
  DateTime? get dateTime;
  @override
  String? get leaveReason;
  @override
  @JsonKey(ignore: true)
  _$$EventEntityModelImplCopyWith<_$EventEntityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

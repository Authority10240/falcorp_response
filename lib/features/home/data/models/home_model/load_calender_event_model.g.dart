// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load_calender_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventEntityModelImpl _$$EventEntityModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EventEntityModelImpl(
      employeeId: json['employeeId'] as String?,
      dateTime: json['dateTime'] == null
          ? null
          : DateTime.parse(json['dateTime'] as String),
      leaveReason: json['leaveReason'] as String?,
    );

Map<String, dynamic> _$$EventEntityModelImplToJson(
        _$EventEntityModelImpl instance) =>
    <String, dynamic>{
      'employeeId': instance.employeeId,
      'dateTime': instance.dateTime?.toIso8601String(),
      'leaveReason': instance.leaveReason,
    };

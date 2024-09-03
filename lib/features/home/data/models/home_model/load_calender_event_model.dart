
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'load_calender_event_model.freezed.dart';
part 'load_calender_event_model.g.dart';

@freezed
class EventEntityModel with _$EventEntityModel{
  const factory EventEntityModel({
    required String? employeeId,
    required DateTime? dateTime,
    required String? leaveReason
  }) = _EventEntityModel;

  factory EventEntityModel.fromJson(
          Map<String, Object?> json) =>
      _$EventEntityModelFromJson(json);
}


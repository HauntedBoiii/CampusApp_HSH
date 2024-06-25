// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CreateEventStruct extends BaseStruct {
  CreateEventStruct({
    int? eventID,
  }) : _eventID = eventID;

  // "eventID" field.
  int? _eventID;
  int get eventID => _eventID ?? 0;
  set eventID(int? val) => _eventID = val;

  void incrementEventID(int amount) => eventID = eventID + amount;

  bool hasEventID() => _eventID != null;

  static CreateEventStruct fromMap(Map<String, dynamic> data) =>
      CreateEventStruct(
        eventID: castToType<int>(data['eventID']),
      );

  static CreateEventStruct? maybeFromMap(dynamic data) => data is Map
      ? CreateEventStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'eventID': _eventID,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'eventID': serializeParam(
          _eventID,
          ParamType.int,
        ),
      }.withoutNulls;

  static CreateEventStruct fromSerializableMap(Map<String, dynamic> data) =>
      CreateEventStruct(
        eventID: deserializeParam(
          data['eventID'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CreateEventStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CreateEventStruct && eventID == other.eventID;
  }

  @override
  int get hashCode => const ListEquality().hash([eventID]);
}

CreateEventStruct createCreateEventStruct({
  int? eventID,
}) =>
    CreateEventStruct(
      eventID: eventID,
    );

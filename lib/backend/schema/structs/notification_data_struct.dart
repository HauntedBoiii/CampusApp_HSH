// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationDataStruct extends BaseStruct {
  NotificationDataStruct({
    String? name,
    String? descriptrion,
    bool? visible,
  })  : _name = name,
        _descriptrion = descriptrion,
        _visible = visible;

  // "Name" field.
  String? _name;
  String get name => _name ?? 'Notification Name';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "Descriptrion" field.
  String? _descriptrion;
  String get descriptrion => _descriptrion ?? 'Beschreibung';
  set descriptrion(String? val) => _descriptrion = val;
  bool hasDescriptrion() => _descriptrion != null;

  // "visible" field.
  bool? _visible;
  bool get visible => _visible ?? false;
  set visible(bool? val) => _visible = val;
  bool hasVisible() => _visible != null;

  static NotificationDataStruct fromMap(Map<String, dynamic> data) =>
      NotificationDataStruct(
        name: data['Name'] as String?,
        descriptrion: data['Descriptrion'] as String?,
        visible: data['visible'] as bool?,
      );

  static NotificationDataStruct? maybeFromMap(dynamic data) => data is Map
      ? NotificationDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Name': _name,
        'Descriptrion': _descriptrion,
        'visible': _visible,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Name': serializeParam(
          _name,
          ParamType.String,
        ),
        'Descriptrion': serializeParam(
          _descriptrion,
          ParamType.String,
        ),
        'visible': serializeParam(
          _visible,
          ParamType.bool,
        ),
      }.withoutNulls;

  static NotificationDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      NotificationDataStruct(
        name: deserializeParam(
          data['Name'],
          ParamType.String,
          false,
        ),
        descriptrion: deserializeParam(
          data['Descriptrion'],
          ParamType.String,
          false,
        ),
        visible: deserializeParam(
          data['visible'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'NotificationDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NotificationDataStruct &&
        name == other.name &&
        descriptrion == other.descriptrion &&
        visible == other.visible;
  }

  @override
  int get hashCode => const ListEquality().hash([name, descriptrion, visible]);
}

NotificationDataStruct createNotificationDataStruct({
  String? name,
  String? descriptrion,
  bool? visible,
}) =>
    NotificationDataStruct(
      name: name,
      descriptrion: descriptrion,
      visible: visible,
    );

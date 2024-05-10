import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<NotificationDataStruct> _notificationdata = [
    NotificationDataStruct.fromSerializableMap(jsonDecode(
        '{\"Name\":\"Mitteilungen\",\"Descriptrion\":\"Mittelungen der verschiedenen Institutionen.\",\"visible\":\"true\"}')),
    NotificationDataStruct.fromSerializableMap(jsonDecode(
        '{\"Name\":\"Mensaplan\",\"Descriptrion\":\"Speiseplan der Mensa\",\"visible\":\"true\"}')),
    NotificationDataStruct.fromSerializableMap(jsonDecode(
        '{\"Name\":\"Essensrettung\",\"Descriptrion\":\"Wie TooGoodToGo\",\"visible\":\"false\"}'))
  ];
  List<NotificationDataStruct> get notificationdata => _notificationdata;
  set notificationdata(List<NotificationDataStruct> value) {
    _notificationdata = value;
  }

  void addToNotificationdata(NotificationDataStruct value) {
    _notificationdata.add(value);
  }

  void removeFromNotificationdata(NotificationDataStruct value) {
    _notificationdata.remove(value);
  }

  void removeAtIndexFromNotificationdata(int index) {
    _notificationdata.removeAt(index);
  }

  void updateNotificationdataAtIndex(
    int index,
    NotificationDataStruct Function(NotificationDataStruct) updateFn,
  ) {
    _notificationdata[index] = updateFn(_notificationdata[index]);
  }

  void insertAtIndexInNotificationdata(
      int index, NotificationDataStruct value) {
    _notificationdata.insert(index, value);
  }
}

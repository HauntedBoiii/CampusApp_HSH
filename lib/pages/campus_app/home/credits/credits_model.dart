import '/flutter_flow/flutter_flow_util.dart';
import 'credits_widget.dart' show CreditsWidget;
import 'package:flutter/material.dart';

class CreditsModel extends FlutterFlowModel<CreditsWidget> {
  ///  Local state fields for this page.

  DateTime? currentDate;

  int selectedWeek = 0;

  DateTime? selectedDate;

  List<DateTime> datesOfTheWeek = [];
  void addToDatesOfTheWeek(DateTime item) => datesOfTheWeek.add(item);
  void removeFromDatesOfTheWeek(DateTime item) => datesOfTheWeek.remove(item);
  void removeAtIndexFromDatesOfTheWeek(int index) =>
      datesOfTheWeek.removeAt(index);
  void insertAtIndexInDatesOfTheWeek(int index, DateTime item) =>
      datesOfTheWeek.insert(index, item);
  void updateDatesOfTheWeekAtIndex(int index, Function(DateTime) updateFn) =>
      datesOfTheWeek[index] = updateFn(datesOfTheWeek[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

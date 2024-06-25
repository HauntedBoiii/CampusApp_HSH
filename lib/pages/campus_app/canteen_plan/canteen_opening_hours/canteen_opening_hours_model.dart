import '/flutter_flow/flutter_flow_util.dart';
import '/pages/campus_app/canteen_plan/canteen_opening_hour/canteen_opening_hour_widget.dart';
import 'canteen_opening_hours_widget.dart' show CanteenOpeningHoursWidget;
import 'package:flutter/material.dart';

class CanteenOpeningHoursModel
    extends FlutterFlowModel<CanteenOpeningHoursWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for canteenOpeningHour component.
  late CanteenOpeningHourModel canteenOpeningHourModel;

  @override
  void initState(BuildContext context) {
    canteenOpeningHourModel =
        createModel(context, () => CanteenOpeningHourModel());
  }

  @override
  void dispose() {
    canteenOpeningHourModel.dispose();
  }
}

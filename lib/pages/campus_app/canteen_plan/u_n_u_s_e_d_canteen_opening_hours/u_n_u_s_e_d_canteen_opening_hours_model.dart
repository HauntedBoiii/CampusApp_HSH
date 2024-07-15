import '/flutter_flow/flutter_flow_util.dart';
import '/pages/campus_app/canteen_plan/u_n_u_s_e_dcanteen_opening_hour/u_n_u_s_e_dcanteen_opening_hour_widget.dart';
import 'u_n_u_s_e_d_canteen_opening_hours_widget.dart'
    show UNUSEDCanteenOpeningHoursWidget;
import 'package:flutter/material.dart';

class UNUSEDCanteenOpeningHoursModel
    extends FlutterFlowModel<UNUSEDCanteenOpeningHoursWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for UNUSEDcanteenOpeningHour component.
  late UNUSEDcanteenOpeningHourModel uNUSEDcanteenOpeningHourModel;

  @override
  void initState(BuildContext context) {
    uNUSEDcanteenOpeningHourModel =
        createModel(context, () => UNUSEDcanteenOpeningHourModel());
  }

  @override
  void dispose() {
    uNUSEDcanteenOpeningHourModel.dispose();
  }
}

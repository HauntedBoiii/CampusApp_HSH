import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'calender_pop_up_model.dart';
export 'calender_pop_up_model.dart';

class CalenderPopUpWidget extends StatefulWidget {
  const CalenderPopUpWidget({super.key});

  @override
  State<CalenderPopUpWidget> createState() => _CalenderPopUpWidgetState();
}

class _CalenderPopUpWidgetState extends State<CalenderPopUpWidget> {
  late CalenderPopUpModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalenderPopUpModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 131.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: FlutterFlowCalendar(
        color: FlutterFlowTheme.of(context).primary,
        iconColor: FlutterFlowTheme.of(context).secondaryText,
        weekFormat: true,
        weekStartsMonday: true,
        rowHeight: 46.0,
        onChange: (DateTimeRange? newSelectedDate) {
          setState(() => _model.calendarSelectedDay = newSelectedDate);
        },
        titleStyle: FlutterFlowTheme.of(context).headlineSmall.override(
              fontFamily: 'Roboto',
              letterSpacing: 0.0,
            ),
        dayOfWeekStyle: FlutterFlowTheme.of(context).labelLarge.override(
              fontFamily: 'Roboto',
              letterSpacing: 0.0,
            ),
        dateStyle: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Roboto',
              letterSpacing: 0.0,
            ),
        selectedDateStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: 'Roboto',
              letterSpacing: 0.0,
            ),
        inactiveDateStyle: FlutterFlowTheme.of(context).labelMedium.override(
              fontFamily: 'Roboto',
              letterSpacing: 0.0,
            ),
        locale: FFLocalizations.of(context).languageCode,
      ),
    );
  }
}

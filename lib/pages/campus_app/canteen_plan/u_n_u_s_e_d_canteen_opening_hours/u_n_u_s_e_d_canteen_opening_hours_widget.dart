import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/campus_app/canteen_plan/u_n_u_s_e_dcanteen_opening_hour/u_n_u_s_e_dcanteen_opening_hour_widget.dart';
import 'package:flutter/material.dart';
import 'u_n_u_s_e_d_canteen_opening_hours_model.dart';
export 'u_n_u_s_e_d_canteen_opening_hours_model.dart';

class UNUSEDCanteenOpeningHoursWidget extends StatefulWidget {
  const UNUSEDCanteenOpeningHoursWidget({super.key});

  @override
  State<UNUSEDCanteenOpeningHoursWidget> createState() =>
      _UNUSEDCanteenOpeningHoursWidgetState();
}

class _UNUSEDCanteenOpeningHoursWidgetState
    extends State<UNUSEDCanteenOpeningHoursWidget> {
  late UNUSEDCanteenOpeningHoursModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UNUSEDCanteenOpeningHoursModel());
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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 24.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100.0,
                      height: 3.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryText,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Text(
                    'Oeffnungszeiten',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Roboto',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ),
              ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  FutureBuilder<List<CanteensRow>>(
                    future: CanteensTable().querySingleRow(
                      queryFn: (q) => q,
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<CanteensRow>
                          uNUSEDcanteenOpeningHourCanteensRowList =
                          snapshot.data!;

                      final uNUSEDcanteenOpeningHourCanteensRow =
                          uNUSEDcanteenOpeningHourCanteensRowList.isNotEmpty
                              ? uNUSEDcanteenOpeningHourCanteensRowList.first
                              : null;
                      return wrapWithModel(
                        model: _model.uNUSEDcanteenOpeningHourModel,
                        updateCallback: () => setState(() {}),
                        child: UNUSEDcanteenOpeningHourWidget(
                          canteenName:
                              uNUSEDcanteenOpeningHourCanteensRow!.canteenName!,
                          duringLectureTime:
                              uNUSEDcanteenOpeningHourCanteensRow
                                  .foodDistributionDuringLectureTime!,
                          duringFreePeriod: uNUSEDcanteenOpeningHourCanteensRow
                              .foodDistributionDuringLectureFreePeriod!,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

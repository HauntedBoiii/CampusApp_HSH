import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/campus_app/canteen_plan/mensa_dish/mensa_dish_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'mensa_plan_model.dart';
export 'mensa_plan_model.dart';

class MensaPlanWidget extends StatefulWidget {
  const MensaPlanWidget({super.key});

  @override
  State<MensaPlanWidget> createState() => _MensaPlanWidgetState();
}

class _MensaPlanWidgetState extends State<MensaPlanWidget> {
  late MensaPlanModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MensaPlanModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.selectedDate = getCurrentTimestamp;
      setState(() {});
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('FloatingActionButton pressed ...');
          },
          backgroundColor: FlutterFlowTheme.of(context).primary,
          elevation: 8.0,
          child: Icon(
            Icons.other_houses_outlined,
            color: FlutterFlowTheme.of(context).info,
            size: 24.0,
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Mensa',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Roboto',
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
            child: FutureBuilder<List<CanteensRow>>(
              future: CanteensTable().querySingleRow(
                queryFn: (q) => q.eq(
                  'canteen name',
                  FFAppState().Mensa,
                ),
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
                List<CanteensRow> columnCanteensRowList = snapshot.data!;
                final columnCanteensRow = columnCanteensRowList.isNotEmpty
                    ? columnCanteensRowList.first
                    : null;
                return SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 5.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 6.0, 0.0, 6.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  FFAppState().Mensa,
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Roboto',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Text(
                                  '${columnCanteensRow?.foodDistributionDuringLectureTime}',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: MediaQuery.sizeOf(context).height * 0.08,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: FlutterFlowIconButton(
                                      borderRadius: 20.0,
                                      buttonSize: 40.0,
                                      icon: Icon(
                                        Icons.arrow_back_ios,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 24.0,
                                      ),
                                      onPressed: () async {
                                        _model.selectedWeek =
                                            _model.selectedWeek + -1;
                                        setState(() {});
                                      },
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Mo',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Roboto',
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: (functions
                                                    .getWeekTimestamps(
                                                        _model.selectedWeek)[0]
                                                    .secondsSinceEpoch ==
                                                _model.selectedDate
                                                    ?.secondsSinceEpoch)
                                            ? null
                                            : () async {
                                                _model.selectedDate = functions
                                                    .getWeekTimestamps(
                                                        _model.selectedWeek)
                                                    .first;
                                                setState(() {});
                                              },
                                        text: dateTimeFormat(
                                          'd',
                                          functions
                                              .getWeekTimestamps(
                                                  _model.selectedWeek)
                                              .first,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ),
                                        options: FFButtonOptions(
                                          width: 35.0,
                                          height: 35.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .override(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          disabledColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Di',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Roboto',
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: (functions
                                                    .getWeekTimestamps(
                                                        _model.selectedWeek)[1]
                                                    .secondsSinceEpoch ==
                                                _model.selectedDate
                                                    ?.secondsSinceEpoch)
                                            ? null
                                            : () async {
                                                _model.selectedDate =
                                                    functions.getWeekTimestamps(
                                                        _model.selectedWeek)[1];
                                                setState(() {});
                                              },
                                        text: dateTimeFormat(
                                          'd',
                                          functions.getWeekTimestamps(
                                              _model.selectedWeek)[1],
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ),
                                        options: FFButtonOptions(
                                          width: 35.0,
                                          height: 35.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .override(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          disabledColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Mi',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Roboto',
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: (functions
                                                    .getWeekTimestamps(
                                                        _model.selectedWeek)[2]
                                                    .secondsSinceEpoch ==
                                                _model.selectedDate
                                                    ?.secondsSinceEpoch)
                                            ? null
                                            : () async {
                                                _model.selectedDate =
                                                    functions.getWeekTimestamps(
                                                        _model.selectedWeek)[2];
                                                setState(() {});
                                              },
                                        text: dateTimeFormat(
                                          'd',
                                          functions.getWeekTimestamps(
                                              _model.selectedWeek)[2],
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ),
                                        options: FFButtonOptions(
                                          width: 35.0,
                                          height: 35.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .override(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          disabledColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Do',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Roboto',
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: (functions
                                                    .getWeekTimestamps(
                                                        _model.selectedWeek)[3]
                                                    .secondsSinceEpoch ==
                                                _model.selectedDate
                                                    ?.secondsSinceEpoch)
                                            ? null
                                            : () async {
                                                _model.selectedDate =
                                                    functions.getWeekTimestamps(
                                                        _model.selectedWeek)[3];
                                                setState(() {});
                                              },
                                        text: dateTimeFormat(
                                          'd',
                                          functions.getWeekTimestamps(
                                              _model.selectedWeek)[3],
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ),
                                        options: FFButtonOptions(
                                          width: 35.0,
                                          height: 35.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .override(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          disabledColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Fr',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Roboto',
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: (functions
                                                    .getWeekTimestamps(
                                                        _model.selectedWeek)[4]
                                                    .secondsSinceEpoch ==
                                                _model.selectedDate
                                                    ?.secondsSinceEpoch)
                                            ? null
                                            : () async {
                                                _model.selectedDate =
                                                    functions.getWeekTimestamps(
                                                        _model.selectedWeek)[4];
                                                setState(() {});
                                              },
                                        text: dateTimeFormat(
                                          'd',
                                          functions.getWeekTimestamps(
                                              _model.selectedWeek)[4],
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ),
                                        options: FFButtonOptions(
                                          width: 35.0,
                                          height: 35.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .override(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          disabledColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Sa',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Roboto',
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: (functions
                                                    .getWeekTimestamps(
                                                        _model.selectedWeek)[5]
                                                    .secondsSinceEpoch ==
                                                _model.selectedDate
                                                    ?.secondsSinceEpoch)
                                            ? null
                                            : () async {
                                                _model.selectedDate =
                                                    functions.getWeekTimestamps(
                                                        _model.selectedWeek)[5];
                                                setState(() {});
                                              },
                                        text: dateTimeFormat(
                                          'd',
                                          functions.getWeekTimestamps(
                                              _model.selectedWeek)[5],
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ),
                                        options: FFButtonOptions(
                                          width: 35.0,
                                          height: 35.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .override(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          disabledColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'So',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Roboto',
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: (functions
                                                    .getWeekTimestamps(
                                                        _model.selectedWeek)[6]
                                                    .secondsSinceEpoch ==
                                                _model.selectedDate
                                                    ?.secondsSinceEpoch)
                                            ? null
                                            : () async {
                                                _model.selectedDate =
                                                    functions.getWeekTimestamps(
                                                        _model.selectedWeek)[6];
                                                setState(() {});
                                              },
                                        text: dateTimeFormat(
                                          'd',
                                          functions
                                              .getWeekTimestamps(
                                                  _model.selectedWeek)
                                              .last,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ),
                                        options: FFButtonOptions(
                                          width: 35.0,
                                          height: 35.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .override(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          disabledColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: FlutterFlowIconButton(
                                      borderRadius: 20.0,
                                      buttonSize: 40.0,
                                      icon: Icon(
                                        Icons.arrow_forward_ios,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 24.0,
                                      ),
                                      onPressed: () async {
                                        _model.selectedWeek =
                                            _model.selectedWeek + 1;
                                        setState(() {});
                                      },
                                    ),
                                  ),
                                ].divide(const SizedBox(width: 5.0)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      FutureBuilder<List<CanteenMealPlanRow>>(
                        future: CanteenMealPlanTable().queryRows(
                          queryFn: (q) => q
                              .eq(
                                'date',
                                supaSerialize<DateTime>(_model.selectedDate),
                              )
                              .eq(
                                'canteen_name',
                                FFAppState().Mensa,
                              ),
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
                          List<CanteenMealPlanRow>
                              listViewCanteenMealPlanRowList = snapshot.data!;
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewCanteenMealPlanRowList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewCanteenMealPlanRow =
                                  listViewCanteenMealPlanRowList[listViewIndex];
                              return MensaDishWidget(
                                key: Key(
                                    'Keylll_${listViewIndex}_of_${listViewCanteenMealPlanRowList.length}'),
                                category: listViewCanteenMealPlanRow.category,
                                description:
                                    listViewCanteenMealPlanRow.description,
                                labels: listViewCanteenMealPlanRow.labels,
                                price: () {
                                  if (FFAppState().MensaPriceType ==
                                      'Student') {
                                    return listViewCanteenMealPlanRow
                                        .priceStudent;
                                  } else if (FFAppState().MensaPriceType ==
                                      'Bediensteter') {
                                    return listViewCanteenMealPlanRow
                                        .priceEmployee;
                                  } else {
                                    return listViewCanteenMealPlanRow
                                        .preisGuest;
                                  }
                                }(),
                                nutritionEnergyKj: listViewCanteenMealPlanRow
                                    .nutritionEnergyKj,
                                nutritionEnergyKcal: listViewCanteenMealPlanRow
                                    .nutritionEnergyKcal,
                                nutritionFat:
                                    listViewCanteenMealPlanRow.nutritionFat,
                                nutritionFatSaturates:
                                    listViewCanteenMealPlanRow
                                        .nutritionFatSaturates,
                                nutritionCarbohydrate:
                                    listViewCanteenMealPlanRow
                                        .nutritionCarbohydrate,
                                nutritionCarbohydrateSugar:
                                    listViewCanteenMealPlanRow
                                        .nutritionCarbohydrateSugar,
                                nutritionFiber:
                                    listViewCanteenMealPlanRow.nutritionFiber,
                                nutritionProtein:
                                    listViewCanteenMealPlanRow.nutritionProtein,
                                nutritionSalt:
                                    listViewCanteenMealPlanRow.nutritionSalt,
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

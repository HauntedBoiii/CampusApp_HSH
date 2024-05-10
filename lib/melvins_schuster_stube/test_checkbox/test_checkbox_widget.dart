import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'test_checkbox_model.dart';
export 'test_checkbox_model.dart';

class TestCheckboxWidget extends StatefulWidget {
  const TestCheckboxWidget({super.key});

  @override
  State<TestCheckboxWidget> createState() => _TestCheckboxWidgetState();
}

class _TestCheckboxWidgetState extends State<TestCheckboxWidget> {
  late TestCheckboxModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TestCheckboxModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
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
            'Page Title',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Roboto',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Theme(
                data: ThemeData(
                  checkboxTheme: const CheckboxThemeData(
                    visualDensity: VisualDensity.compact,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  unselectedWidgetColor:
                      FlutterFlowTheme.of(context).secondaryText,
                ),
                child: CheckboxListTile(
                  value: _model.checkboxListTileValue1 ??= true,
                  onChanged: (newValue) async {
                    setState(() => _model.checkboxListTileValue1 = newValue!);
                    if (newValue!) {
                      setState(() {
                        FFAppState().updateWidgetdataAtIndex(
                          0,
                          (e) => e..visible = true,
                        );
                      });
                    } else {
                      setState(() {
                        FFAppState().updateWidgetdataAtIndex(
                          0,
                          (e) => e..visible = false,
                        );
                      });
                    }
                  },
                  title: Text(
                    'Mitteilung',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Roboto',
                          letterSpacing: 0.0,
                        ),
                  ),
                  subtitle: Text(
                    'Subtitle goes here...',
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Roboto',
                          letterSpacing: 0.0,
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                  activeColor: FlutterFlowTheme.of(context).primary,
                  checkColor: FlutterFlowTheme.of(context).info,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
              ),
              Theme(
                data: ThemeData(
                  checkboxTheme: const CheckboxThemeData(
                    visualDensity: VisualDensity.compact,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  unselectedWidgetColor:
                      FlutterFlowTheme.of(context).secondaryText,
                ),
                child: CheckboxListTile(
                  value: _model.checkboxListTileValue2 ??= true,
                  onChanged: (newValue) async {
                    setState(() => _model.checkboxListTileValue2 = newValue!);
                    if (newValue!) {
                      setState(() {
                        FFAppState().updateWidgetdataAtIndex(
                          1,
                          (e) => e..visible = true,
                        );
                      });
                    } else {
                      setState(() {
                        FFAppState().updateWidgetdataAtIndex(
                          1,
                          (e) => e..visible = false,
                        );
                      });
                    }
                  },
                  title: Text(
                    'MensaPlan',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Roboto',
                          letterSpacing: 0.0,
                        ),
                  ),
                  subtitle: Text(
                    'Subtitle goes here...',
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Roboto',
                          letterSpacing: 0.0,
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                  activeColor: FlutterFlowTheme.of(context).primary,
                  checkColor: FlutterFlowTheme.of(context).info,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
              ),
              Theme(
                data: ThemeData(
                  checkboxTheme: const CheckboxThemeData(
                    visualDensity: VisualDensity.compact,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  unselectedWidgetColor:
                      FlutterFlowTheme.of(context).secondaryText,
                ),
                child: CheckboxListTile(
                  value: _model.checkboxListTileValue3 ??= true,
                  onChanged: (newValue) async {
                    setState(() => _model.checkboxListTileValue3 = newValue!);
                    if (newValue!) {
                      setState(() {
                        FFAppState().updateWidgetdataAtIndex(
                          2,
                          (e) => e..visible = true,
                        );
                      });
                    } else {
                      setState(() {
                        FFAppState().updateWidgetdataAtIndex(
                          2,
                          (e) => e..visible = false,
                        );
                      });
                    }
                  },
                  title: Text(
                    'Essen retten',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Roboto',
                          letterSpacing: 0.0,
                        ),
                  ),
                  subtitle: Text(
                    'Subtitle goes here...',
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Roboto',
                          letterSpacing: 0.0,
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                  activeColor: FlutterFlowTheme.of(context).primary,
                  checkColor: FlutterFlowTheme.of(context).info,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

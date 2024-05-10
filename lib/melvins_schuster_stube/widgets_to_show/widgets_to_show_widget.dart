import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'widgets_to_show_model.dart';
export 'widgets_to_show_model.dart';

class WidgetsToShowWidget extends StatefulWidget {
  const WidgetsToShowWidget({super.key});

  @override
  State<WidgetsToShowWidget> createState() => _WidgetsToShowWidgetState();
}

class _WidgetsToShowWidgetState extends State<WidgetsToShowWidget> {
  late WidgetsToShowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetsToShowModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1000.0,
      height: MediaQuery.sizeOf(context).height * 100.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: const [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x33000000),
            offset: Offset(
              0.0,
              2.0,
            ),
          )
        ],
      ),
    );
  }
}

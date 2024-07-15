import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'no_canteen_dish_widget_model.dart';
export 'no_canteen_dish_widget_model.dart';

class NoCanteenDishWidgetWidget extends StatefulWidget {
  const NoCanteenDishWidgetWidget({super.key});

  @override
  State<NoCanteenDishWidgetWidget> createState() =>
      _NoCanteenDishWidgetWidgetState();
}

class _NoCanteenDishWidgetWidgetState extends State<NoCanteenDishWidgetWidget> {
  late NoCanteenDishWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoCanteenDishWidgetModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      'Heute keine Angebote',
      style: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'Roboto',
            letterSpacing: 0.0,
          ),
    );
  }
}

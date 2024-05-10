import '/flutter_flow/flutter_flow_util.dart';
import 'mensa_dish_widget.dart' show MensaDishWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class MensaDishModel extends FlutterFlowModel<MensaDishWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
  }
}

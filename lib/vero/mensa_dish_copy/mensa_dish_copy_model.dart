import '/flutter_flow/flutter_flow_util.dart';
import 'mensa_dish_copy_widget.dart' show MensaDishCopyWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class MensaDishCopyModel extends FlutterFlowModel<MensaDishCopyWidget> {
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

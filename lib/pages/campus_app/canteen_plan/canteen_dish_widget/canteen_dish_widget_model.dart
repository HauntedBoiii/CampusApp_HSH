import '/flutter_flow/flutter_flow_util.dart';
import 'canteen_dish_widget_widget.dart' show CanteenDishWidgetWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class CanteenDishWidgetModel extends FlutterFlowModel<CanteenDishWidgetWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - excludeSymbols] action in CanteenDish_Widget widget.
  List<String>? labelList;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
  }
}

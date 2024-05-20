import '/flutter_flow/flutter_flow_util.dart';
import 'spare_food_widget.dart' show SpareFoodWidget;
import 'package:flutter/material.dart';

class SpareFoodModel extends FlutterFlowModel<SpareFoodWidget> {
  ///  Local state fields for this page.

  DateTime? currentDate;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

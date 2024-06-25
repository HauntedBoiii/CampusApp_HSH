import '/flutter_flow/flutter_flow_util.dart';
import 'save_food_widget.dart' show SaveFoodWidget;
import 'package:flutter/material.dart';

class SaveFoodModel extends FlutterFlowModel<SaveFoodWidget> {
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

import '/flutter_flow/flutter_flow_util.dart';
import 'test_checkbox_widget.dart' show TestCheckboxWidget;
import 'package:flutter/material.dart';

class TestCheckboxModel extends FlutterFlowModel<TestCheckboxWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue1;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue2;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

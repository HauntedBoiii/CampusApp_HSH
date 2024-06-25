import '/flutter_flow/flutter_flow_util.dart';
import 'test_tag_widget.dart' show TestTagWidget;
import 'package:flutter/material.dart';

class TestTagModel extends FlutterFlowModel<TestTagWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

import '/flutter_flow/flutter_flow_util.dart';
import 'board_post_widget.dart' show BoardPostWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class BoardPostModel extends FlutterFlowModel<BoardPostWidget> {
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

import '/flutter_flow/flutter_flow_util.dart';
import 'single_message_widget_widget.dart' show SingleMessageWidgetWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class SingleMessageWidgetModel
    extends FlutterFlowModel<SingleMessageWidgetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PostExpandable widget.
  late ExpandableController postExpandableExpandableController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    postExpandableExpandableController.dispose();
  }
}

import '/flutter_flow/flutter_flow_util.dart';
import 'mensa_overview_page_widget.dart' show MensaOverviewPageWidget;
import 'package:flutter/material.dart';

class MensaOverviewPageModel extends FlutterFlowModel<MensaOverviewPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

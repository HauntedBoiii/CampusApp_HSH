import '/flutter_flow/flutter_flow_util.dart';
import 'sucess_page_widget.dart' show SucessPageWidget;
import 'package:flutter/material.dart';

class SucessPageModel extends FlutterFlowModel<SucessPageWidget> {
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

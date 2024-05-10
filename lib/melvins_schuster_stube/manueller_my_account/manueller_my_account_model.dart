import '/flutter_flow/flutter_flow_util.dart';
import 'manueller_my_account_widget.dart' show ManuellerMyAccountWidget;
import 'package:flutter/material.dart';

class ManuellerMyAccountModel
    extends FlutterFlowModel<ManuellerMyAccountWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

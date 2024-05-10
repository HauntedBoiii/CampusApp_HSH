import '/flutter_flow/flutter_flow_util.dart';
import 'manueller_my_account_copy_widget.dart'
    show ManuellerMyAccountCopyWidget;
import 'package:flutter/material.dart';

class ManuellerMyAccountCopyModel
    extends FlutterFlowModel<ManuellerMyAccountCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

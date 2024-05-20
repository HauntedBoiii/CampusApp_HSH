import '/flutter_flow/flutter_flow_util.dart';
import '/pages/click_dummy/board_post/board_post_widget.dart';
import 'such_umsetzung1_widget.dart' show SuchUmsetzung1Widget;
import 'package:flutter/material.dart';

class SuchUmsetzung1Model extends FlutterFlowModel<SuchUmsetzung1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Models for BoardPost dynamic component.
  late FlutterFlowDynamicModels<BoardPostModel> boardPostModels;

  @override
  void initState(BuildContext context) {
    boardPostModels = FlutterFlowDynamicModels(() => BoardPostModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    boardPostModels.dispose();
  }
}

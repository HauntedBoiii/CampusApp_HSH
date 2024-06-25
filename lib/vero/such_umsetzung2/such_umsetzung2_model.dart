import '/flutter_flow/flutter_flow_util.dart';
import '/pages/campus_app/messages/board_post/board_post_widget.dart';
import 'such_umsetzung2_widget.dart' show SuchUmsetzung2Widget;
import 'package:flutter/material.dart';

class SuchUmsetzung2Model extends FlutterFlowModel<SuchUmsetzung2Widget> {
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

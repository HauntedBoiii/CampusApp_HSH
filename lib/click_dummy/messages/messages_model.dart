import '/click_dummy/board_post/board_post_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'messages_widget.dart' show MessagesWidget;
import 'package:flutter/material.dart';

class MessagesModel extends FlutterFlowModel<MessagesWidget> {
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

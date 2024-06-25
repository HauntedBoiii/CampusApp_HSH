import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/campus_app/messages/board_post/board_post_widget.dart';
import 'messages_widget.dart' show MessagesWidget;
import 'package:flutter/material.dart';

class MessagesModel extends FlutterFlowModel<MessagesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - searchMessages] action in Messages widget.
  List<MessagesRow>? allMessages;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Custom Action - searchMessages] action in TextField widget.
  List<MessagesRow>? searchedMessages;
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

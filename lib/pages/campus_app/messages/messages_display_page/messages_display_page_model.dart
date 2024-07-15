import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/campus_app/messages/single_message_widget/single_message_widget_widget.dart';
import 'messages_display_page_widget.dart' show MessagesDisplayPageWidget;
import 'package:flutter/material.dart';

class MessagesDisplayPageModel
    extends FlutterFlowModel<MessagesDisplayPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - searchMessages] action in MessagesDisplay_Page widget.
  List<MessagesRow>? allMessages;
  // State field(s) for SearchPostTextField widget.
  FocusNode? searchPostTextFieldFocusNode;
  TextEditingController? searchPostTextFieldTextController;
  String? Function(BuildContext, String?)?
      searchPostTextFieldTextControllerValidator;
  // Stores action output result for [Custom Action - searchMessages] action in SearchPostTextField widget.
  List<MessagesRow>? searchedMessages;
  // Models for MessagePost.
  late FlutterFlowDynamicModels<SingleMessageWidgetModel> messagePostModels;

  @override
  void initState(BuildContext context) {
    messagePostModels =
        FlutterFlowDynamicModels(() => SingleMessageWidgetModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    searchPostTextFieldFocusNode?.dispose();
    searchPostTextFieldTextController?.dispose();

    messagePostModels.dispose();
  }
}

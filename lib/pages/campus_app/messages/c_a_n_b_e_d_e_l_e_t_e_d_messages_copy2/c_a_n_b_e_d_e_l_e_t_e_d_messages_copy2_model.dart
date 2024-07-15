import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/campus_app/messages/single_message_widget/single_message_widget_widget.dart';
import 'c_a_n_b_e_d_e_l_e_t_e_d_messages_copy2_widget.dart'
    show CANBEDELETEDMessagesCopy2Widget;
import 'package:flutter/material.dart';

class CANBEDELETEDMessagesCopy2Model
    extends FlutterFlowModel<CANBEDELETEDMessagesCopy2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - searchMessages] action in CANBEDELETEDMessagesCopy2 widget.
  List<MessagesRow>? allMessages;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Custom Action - searchMessages] action in TextField widget.
  List<MessagesRow>? searchedMessages;
  // Models for SingleMessage_Widget dynamic component.
  late FlutterFlowDynamicModels<SingleMessageWidgetModel>
      singleMessageWidgetModels;

  @override
  void initState(BuildContext context) {
    singleMessageWidgetModels =
        FlutterFlowDynamicModels(() => SingleMessageWidgetModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    singleMessageWidgetModels.dispose();
  }
}

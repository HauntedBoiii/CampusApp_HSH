import '/flutter_flow/flutter_flow_util.dart';
import '/pages/campus_app/messages/single_message_widget/single_message_widget_widget.dart';
import 'c_a_n_b_e_d_e_l_e_t_e_d_such_umsetzung2_copy_widget.dart'
    show CANBEDELETEDSuchUmsetzung2CopyWidget;
import 'package:flutter/material.dart';

class CANBEDELETEDSuchUmsetzung2CopyModel
    extends FlutterFlowModel<CANBEDELETEDSuchUmsetzung2CopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
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

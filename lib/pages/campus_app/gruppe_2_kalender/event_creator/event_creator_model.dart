import '/flutter_flow/flutter_flow_util.dart';
import 'event_creator_widget.dart' show EventCreatorWidget;
import 'package:flutter/material.dart';

class EventCreatorModel extends FlutterFlowModel<EventCreatorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for tf_Message widget.
  FocusNode? tfMessageFocusNode;
  TextEditingController? tfMessageTextController;
  String? Function(BuildContext, String?)? tfMessageTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  DateTime? datePicked3;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    tfMessageFocusNode?.dispose();
    tfMessageTextController?.dispose();

    textFieldFocusNode2?.dispose();
    textController3?.dispose();
  }
}

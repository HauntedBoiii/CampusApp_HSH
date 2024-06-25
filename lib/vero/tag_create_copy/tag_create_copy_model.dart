import '/flutter_flow/flutter_flow_util.dart';
import 'tag_create_copy_widget.dart' show TagCreateCopyWidget;
import 'package:flutter/material.dart';

class TagCreateCopyModel extends FlutterFlowModel<TagCreateCopyWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

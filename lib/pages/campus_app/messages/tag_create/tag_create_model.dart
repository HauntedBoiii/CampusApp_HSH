import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tag_create_widget.dart' show TagCreateWidget;
import 'package:flutter/material.dart';

class TagCreateModel extends FlutterFlowModel<TagCreateWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  MessageTagsRow? temp;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  MessageTagPermissionsRow? tempPermission;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

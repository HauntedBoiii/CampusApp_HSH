import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tag_create_widget_widget.dart' show TagCreateWidgetWidget;
import 'package:flutter/material.dart';

class TagCreateWidgetModel extends FlutterFlowModel<TagCreateWidgetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TagNameTextField widget.
  FocusNode? tagNameTextFieldFocusNode;
  TextEditingController? tagNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      tagNameTextFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in TagCreateButton widget.
  MessageTagsRow? temp;
  // Stores action output result for [Backend Call - Insert Row] action in TagCreateButton widget.
  MessageTagPermissionsRow? tempPermission;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tagNameTextFieldFocusNode?.dispose();
    tagNameTextFieldTextController?.dispose();
  }
}

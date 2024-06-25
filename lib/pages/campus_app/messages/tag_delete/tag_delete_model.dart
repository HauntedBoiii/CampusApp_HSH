import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'tag_delete_widget.dart' show TagDeleteWidget;
import 'package:flutter/material.dart';

class TagDeleteModel extends FlutterFlowModel<TagDeleteWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<MessageTagsRow>? tag;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

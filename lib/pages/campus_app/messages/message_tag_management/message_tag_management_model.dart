import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'message_tag_management_widget.dart' show MessageTagManagementWidget;
import 'package:flutter/material.dart';

class MessageTagManagementModel
    extends FlutterFlowModel<MessageTagManagementWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;
  // State field(s) for CheckboxListTile widget.
  Map<MessageTagPermissionsRow, bool> checkboxListTileValueMap = {};
  List<MessageTagPermissionsRow> get checkboxListTileCheckedItems =>
      checkboxListTileValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

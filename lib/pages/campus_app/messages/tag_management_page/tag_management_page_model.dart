import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'tag_management_page_widget.dart' show TagManagementPageWidget;
import 'package:flutter/material.dart';

class TagManagementPageModel extends FlutterFlowModel<TagManagementPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TagDropDown widget.
  int? tagDropDownValue;
  FormFieldController<int>? tagDropDownValueController;
  // State field(s) for UserCheckboxListTile widget.
  Map<MessageTagPermissionsRow, bool> userCheckboxListTileValueMap = {};
  List<MessageTagPermissionsRow> get userCheckboxListTileCheckedItems =>
      userCheckboxListTileValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for TagUserSwitch widget.
  bool? tagUserSwitchValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

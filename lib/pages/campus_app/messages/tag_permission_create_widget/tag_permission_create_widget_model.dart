import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'tag_permission_create_widget_widget.dart'
    show TagPermissionCreateWidgetWidget;
import 'package:flutter/material.dart';

class TagPermissionCreateWidgetModel
    extends FlutterFlowModel<TagPermissionCreateWidgetWidget> {
  ///  Local state fields for this component.

  List<String> ids = [];
  void addToIds(String item) => ids.add(item);
  void removeFromIds(String item) => ids.remove(item);
  void removeAtIndexFromIds(int index) => ids.removeAt(index);
  void insertAtIndexInIds(int index, String item) => ids.insert(index, item);
  void updateIdsAtIndex(int index, Function(String) updateFn) =>
      ids[index] = updateFn(ids[index]);

  int startcount = 0;

  int maxCount = 1;

  ///  State fields for stateful widgets in this component.

  // State field(s) for UserSelectDropDown widget.
  String? userSelectDropDownValue;
  FormFieldController<String>? userSelectDropDownValueController;
  // State field(s) for TagModifyCheckbox widget.
  bool? tagModifyCheckboxValue;
  // Stores action output result for [Backend Call - Insert Row] action in AcceptButton widget.
  MessageTagPermissionsRow? temp;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

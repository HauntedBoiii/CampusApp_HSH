import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_tag_permission_widget.dart' show CreateTagPermissionWidget;
import 'package:flutter/material.dart';

class CreateTagPermissionModel
    extends FlutterFlowModel<CreateTagPermissionWidget> {
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

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  MessageTagPermissionsRow? temp;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'permission_list_widget_widget.dart' show PermissionListWidgetWidget;
import 'package:flutter/material.dart';

class PermissionListWidgetModel
    extends FlutterFlowModel<PermissionListWidgetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PermissionCheckbox widget.
  Map<Permission, bool> permissionCheckboxValueMap = {};
  List<Permission> get permissionCheckboxCheckedItems =>
      permissionCheckboxValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

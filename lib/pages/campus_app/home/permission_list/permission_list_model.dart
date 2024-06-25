import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'permission_list_widget.dart' show PermissionListWidget;
import 'package:flutter/material.dart';

class PermissionListModel extends FlutterFlowModel<PermissionListWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Checkbox widget.
  Map<Permission, bool> checkboxValueMap = {};
  List<Permission> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

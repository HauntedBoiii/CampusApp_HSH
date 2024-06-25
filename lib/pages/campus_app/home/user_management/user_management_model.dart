import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'user_management_widget.dart' show UserManagementWidget;
import 'package:flutter/material.dart';

class UserManagementModel extends FlutterFlowModel<UserManagementWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - Query Rows] action in DropDown widget.
  List<UserPermissionsRow>? selectedUserPermisssions;
  // State field(s) for manageUserSwitch widget.
  bool? manageUserSwitchValue;
  // State field(s) for createOfferSwitch widget.
  bool? createOfferSwitchValue;
  // State field(s) for manageTagsSwitch widget.
  bool? manageTagsSwitchValue;
  // State field(s) for pinMessagesSwitch widget.
  bool? pinMessagesSwitchValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks.
  Future changePermission(
    BuildContext context, {
    required Permission? permission,
    required bool? granted,
    required String? userId,
  }) async {
    if (granted!) {
      await UserPermissionsTable().insert({
        'user_id': userId,
        'permission': '${permission?.name}',
      });
    } else {
      await UserPermissionsTable().delete(
        matchingRows: (rows) => rows
            .eq(
              'user_id',
              userId,
            )
            .eq(
              'permission',
              '${permission?.name}',
            ),
      );
    }
  }
}

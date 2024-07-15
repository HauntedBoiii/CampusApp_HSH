import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'user_management_page_widget.dart' show UserManagementPageWidget;
import 'package:flutter/material.dart';

class UserManagementPageModel
    extends FlutterFlowModel<UserManagementPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for UserSelectDropDown widget.
  String? userSelectDropDownValue;
  FormFieldController<String>? userSelectDropDownValueController;
  // Stores action output result for [Backend Call - Query Rows] action in UserSelectDropDown widget.
  List<UserPermissionsRow>? selectedUserPermisssions;
  // State field(s) for ManageUserSwitch widget.
  bool? manageUserSwitchValue;
  // State field(s) for CreateOfferSwitch widget.
  bool? createOfferSwitchValue;
  // State field(s) for ManageTagsSwitch widget.
  bool? manageTagsSwitchValue;
  // State field(s) for PinMessagesSwitch widget.
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

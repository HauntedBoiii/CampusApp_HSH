import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'profile_settings_page_widget.dart' show ProfileSettingsPageWidget;
import 'package:flutter/material.dart';

class ProfileSettingsPageModel
    extends FlutterFlowModel<ProfileSettingsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ActivateMessagesSwitch widget.
  bool? activateMessagesSwitchValue;
  // State field(s) for ActivateCanteenPlanSwitch widget.
  bool? activateCanteenPlanSwitchValue;
  // State field(s) for ActivateSavefoodSwitch widget.
  bool? activateSavefoodSwitchValue;
  // State field(s) for ActivateEventCalendarSwitch widget.
  bool? activateEventCalendarSwitchValue;
  // State field(s) for ActivateMarketplaceSwitch widget.
  bool? activateMarketplaceSwitchValue;
  // State field(s) for CanteenSelectDropDown widget.
  String? canteenSelectDropDownValue;
  FormFieldController<String>? canteenSelectDropDownValueController;
  // State field(s) for PricetypeSelectDropDown widget.
  String? pricetypeSelectDropDownValue;
  FormFieldController<String>? pricetypeSelectDropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

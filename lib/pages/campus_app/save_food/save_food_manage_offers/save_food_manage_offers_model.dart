import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'save_food_manage_offers_widget.dart' show SaveFoodManageOffersWidget;
import 'package:flutter/material.dart';

class SaveFoodManageOffersModel
    extends FlutterFlowModel<SaveFoodManageOffersWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;
  // Stores action output result for [Backend Call - Query Rows] action in DropDown widget.
  List<SavefoodOfferRow>? offersOfSelectedSeller;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

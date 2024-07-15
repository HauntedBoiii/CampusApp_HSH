import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'savefood_offer_management_page_widget.dart'
    show SavefoodOfferManagementPageWidget;
import 'package:flutter/material.dart';

class SavefoodOfferManagementPageModel
    extends FlutterFlowModel<SavefoodOfferManagementPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for SellerDropDown widget.
  int? sellerDropDownValue;
  FormFieldController<int>? sellerDropDownValueController;
  // Stores action output result for [Backend Call - Query Rows] action in SellerDropDown widget.
  List<SavefoodOfferRow>? offersOfSelectedSeller;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

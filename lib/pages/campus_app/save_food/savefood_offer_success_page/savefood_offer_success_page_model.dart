import '/flutter_flow/flutter_flow_util.dart';
import 'savefood_offer_success_page_widget.dart'
    show SavefoodOfferSuccessPageWidget;
import 'package:flutter/material.dart';

class SavefoodOfferSuccessPageModel
    extends FlutterFlowModel<SavefoodOfferSuccessPageWidget> {
  ///  Local state fields for this page.

  DateTime? currentDate;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

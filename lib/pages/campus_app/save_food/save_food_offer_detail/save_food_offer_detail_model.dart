import '/flutter_flow/flutter_flow_util.dart';
import 'save_food_offer_detail_widget.dart' show SaveFoodOfferDetailWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SaveFoodOfferDetailModel
    extends FlutterFlowModel<SaveFoodOfferDetailWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.isEmpty) {
      return 'Bitte gebe eine Beschreibung ein';
    }

    return null;
  }

  // State field(s) for pickUpTime widget.
  FocusNode? pickUpTimeFocusNode;
  TextEditingController? pickUpTimeTextController;
  String? Function(BuildContext, String?)? pickUpTimeTextControllerValidator;
  String? _pickUpTimeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.isEmpty) {
      return 'Bitte wähle eine Abholzeit';
    }

    return null;
  }

  DateTime? datePicked;
  // State field(s) for price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  String? _priceTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.isEmpty) {
      return 'Bitte füge einen Preis hinzu';
    }

    if (!RegExp('^[0-9\\.\\,]+( €)?\$').hasMatch(val)) {
      return 'Bitte im Format 2.50 € eingeben';
    }
    return null;
  }

  // State field(s) for quantity widget.
  FocusNode? quantityFocusNode;
  TextEditingController? quantityTextController;
  String? Function(BuildContext, String?)? quantityTextControllerValidator;
  String? _quantityTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.isEmpty) {
      return 'Bitte gebe eine Menge ein';
    }

    if (!RegExp('^\\d+\$').hasMatch(val)) {
      return 'Bitte eine Zahl eingeben';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    nameTextControllerValidator = _nameTextControllerValidator;
    pickUpTimeTextControllerValidator = _pickUpTimeTextControllerValidator;
    priceTextControllerValidator = _priceTextControllerValidator;
    quantityTextControllerValidator = _quantityTextControllerValidator;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    pickUpTimeFocusNode?.dispose();
    pickUpTimeTextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();

    quantityFocusNode?.dispose();
    quantityTextController?.dispose();
  }
}

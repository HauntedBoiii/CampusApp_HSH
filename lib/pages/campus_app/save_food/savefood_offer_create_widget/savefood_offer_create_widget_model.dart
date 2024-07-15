import '/flutter_flow/flutter_flow_util.dart';
import 'savefood_offer_create_widget_widget.dart'
    show SavefoodOfferCreateWidgetWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SavefoodOfferCreateWidgetModel
    extends FlutterFlowModel<SavefoodOfferCreateWidgetWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for ProductNameTextfield widget.
  FocusNode? productNameTextfieldFocusNode;
  TextEditingController? productNameTextfieldTextController;
  String? Function(BuildContext, String?)?
      productNameTextfieldTextControllerValidator;
  String? _productNameTextfieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.isEmpty) {
      return 'Bitte gebe eine Beschreibung ein';
    }

    return null;
  }

  // State field(s) for PickUpTimeTextfield widget.
  FocusNode? pickUpTimeTextfieldFocusNode;
  TextEditingController? pickUpTimeTextfieldTextController;
  String? Function(BuildContext, String?)?
      pickUpTimeTextfieldTextControllerValidator;
  String? _pickUpTimeTextfieldTextControllerValidator(
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
  // State field(s) for PriceTextfield widget.
  FocusNode? priceTextfieldFocusNode;
  TextEditingController? priceTextfieldTextController;
  String? Function(BuildContext, String?)?
      priceTextfieldTextControllerValidator;
  String? _priceTextfieldTextControllerValidator(
      BuildContext context, String? val) {
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

  // State field(s) for QuantityTextfield widget.
  FocusNode? quantityTextfieldFocusNode;
  TextEditingController? quantityTextfieldTextController;
  String? Function(BuildContext, String?)?
      quantityTextfieldTextControllerValidator;
  String? _quantityTextfieldTextControllerValidator(
      BuildContext context, String? val) {
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
    productNameTextfieldTextControllerValidator =
        _productNameTextfieldTextControllerValidator;
    pickUpTimeTextfieldTextControllerValidator =
        _pickUpTimeTextfieldTextControllerValidator;
    priceTextfieldTextControllerValidator =
        _priceTextfieldTextControllerValidator;
    quantityTextfieldTextControllerValidator =
        _quantityTextfieldTextControllerValidator;
  }

  @override
  void dispose() {
    productNameTextfieldFocusNode?.dispose();
    productNameTextfieldTextController?.dispose();

    pickUpTimeTextfieldFocusNode?.dispose();
    pickUpTimeTextfieldTextController?.dispose();

    priceTextfieldFocusNode?.dispose();
    priceTextfieldTextController?.dispose();

    quantityTextfieldFocusNode?.dispose();
    quantityTextfieldTextController?.dispose();
  }
}

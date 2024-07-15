import '/flutter_flow/flutter_flow_util.dart';
import 'login_register_page_widget.dart' show LoginRegisterPageWidget;
import 'package:flutter/material.dart';

class LoginRegisterPageModel extends FlutterFlowModel<LoginRegisterPageWidget> {
  ///  Local state fields for this page.

  bool registering = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for SSOTextfield widget.
  FocusNode? sSOTextfieldFocusNode1;
  TextEditingController? sSOTextfieldTextController1;
  String? Function(BuildContext, String?)? sSOTextfieldTextController1Validator;
  // State field(s) for LoginPassword widget.
  FocusNode? loginPasswordFocusNode;
  TextEditingController? loginPasswordTextController;
  late bool loginPasswordVisibility;
  String? Function(BuildContext, String?)? loginPasswordTextControllerValidator;
  // State field(s) for SSOTextfield widget.
  FocusNode? sSOTextfieldFocusNode2;
  TextEditingController? sSOTextfieldTextController2;
  String? Function(BuildContext, String?)? sSOTextfieldTextController2Validator;
  // State field(s) for RegisterPassword widget.
  FocusNode? registerPasswordFocusNode;
  TextEditingController? registerPasswordTextController;
  late bool registerPasswordVisibility;
  String? Function(BuildContext, String?)?
      registerPasswordTextControllerValidator;
  // State field(s) for RegsiterPasswordConfirm widget.
  FocusNode? regsiterPasswordConfirmFocusNode;
  TextEditingController? regsiterPasswordConfirmTextController;
  late bool regsiterPasswordConfirmVisibility;
  String? Function(BuildContext, String?)?
      regsiterPasswordConfirmTextControllerValidator;

  @override
  void initState(BuildContext context) {
    loginPasswordVisibility = false;
    registerPasswordVisibility = false;
    regsiterPasswordConfirmVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sSOTextfieldFocusNode1?.dispose();
    sSOTextfieldTextController1?.dispose();

    loginPasswordFocusNode?.dispose();
    loginPasswordTextController?.dispose();

    sSOTextfieldFocusNode2?.dispose();
    sSOTextfieldTextController2?.dispose();

    registerPasswordFocusNode?.dispose();
    registerPasswordTextController?.dispose();

    regsiterPasswordConfirmFocusNode?.dispose();
    regsiterPasswordConfirmTextController?.dispose();
  }
}

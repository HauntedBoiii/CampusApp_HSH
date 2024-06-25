import '/flutter_flow/flutter_flow_util.dart';
import 'login_page_copy_widget.dart' show LoginPageCopyWidget;
import 'package:flutter/material.dart';

class LoginPageCopyModel extends FlutterFlowModel<LoginPageCopyWidget> {
  ///  Local state fields for this page.

  bool registering = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for SSO-Acc widget.
  FocusNode? sSOAccFocusNode1;
  TextEditingController? sSOAccTextController1;
  String? Function(BuildContext, String?)? sSOAccTextController1Validator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode1;
  TextEditingController? passwordTextController1;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? passwordTextController1Validator;
  // State field(s) for SSO-Acc widget.
  FocusNode? sSOAccFocusNode2;
  TextEditingController? sSOAccTextController2;
  String? Function(BuildContext, String?)? sSOAccTextController2Validator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode2;
  TextEditingController? passwordTextController2;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)? passwordTextController2Validator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode3;
  TextEditingController? passwordTextController3;
  late bool passwordVisibility3;
  String? Function(BuildContext, String?)? passwordTextController3Validator;

  @override
  void initState(BuildContext context) {
    passwordVisibility1 = false;
    passwordVisibility2 = false;
    passwordVisibility3 = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sSOAccFocusNode1?.dispose();
    sSOAccTextController1?.dispose();

    passwordFocusNode1?.dispose();
    passwordTextController1?.dispose();

    sSOAccFocusNode2?.dispose();
    sSOAccTextController2?.dispose();

    passwordFocusNode2?.dispose();
    passwordTextController2?.dispose();

    passwordFocusNode3?.dispose();
    passwordTextController3?.dispose();
  }
}

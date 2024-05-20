import '/flutter_flow/flutter_flow_util.dart';
import 'login_page_v1_widget.dart' show LoginPageV1Widget;
import 'package:flutter/material.dart';

class LoginPageV1Model extends FlutterFlowModel<LoginPageV1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for SSO-Acc widget.
  FocusNode? sSOAccFocusNode;
  TextEditingController? sSOAccTextController;
  String? Function(BuildContext, String?)? sSOAccTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sSOAccFocusNode?.dispose();
    sSOAccTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}

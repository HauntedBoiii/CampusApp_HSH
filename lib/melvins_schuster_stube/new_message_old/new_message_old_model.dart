import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'new_message_old_widget.dart' show NewMessageOldWidget;
import 'package:flutter/material.dart';

class NewMessageOldModel extends FlutterFlowModel<NewMessageOldWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for tf_Title widget.
  FocusNode? tfTitleFocusNode;
  TextEditingController? tfTitleTextController;
  String? Function(BuildContext, String?)? tfTitleTextControllerValidator;
  String? _tfTitleTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Der Titel darf nicht leer sein';
    }

    return null;
  }

  // State field(s) for tf_Message widget.
  FocusNode? tfMessageFocusNode;
  TextEditingController? tfMessageTextController;
  String? Function(BuildContext, String?)? tfMessageTextControllerValidator;
  String? _tfMessageTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Die Mitteilung darf nicht leer sein';
    }

    return null;
  }

  // State field(s) for dd_categories widget.
  List<int>? ddCategoriesValue;
  FormFieldController<List<int>>? ddCategoriesValueController;
  // State field(s) for cbx_urgent widget.
  bool? cbxUrgentValue;

  @override
  void initState(BuildContext context) {
    tfTitleTextControllerValidator = _tfTitleTextControllerValidator;
    tfMessageTextControllerValidator = _tfMessageTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tfTitleFocusNode?.dispose();
    tfTitleTextController?.dispose();

    tfMessageFocusNode?.dispose();
    tfMessageTextController?.dispose();
  }
}

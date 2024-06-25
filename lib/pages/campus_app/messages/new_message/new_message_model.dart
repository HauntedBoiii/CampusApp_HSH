import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'new_message_widget.dart' show NewMessageWidget;
import 'package:flutter/material.dart';

class NewMessageModel extends FlutterFlowModel<NewMessageWidget> {
  ///  Local state fields for this page.

  int dropdownCount = 0;

  int maxCount = 10;

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
  // Stores action output result for [Backend Call - Query Rows] action in btn_save widget.
  List<MessagesRow>? lastMessage;

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

import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'new_post_widget.dart' show NewPostWidget;
import 'package:flutter/material.dart';

class NewPostModel extends FlutterFlowModel<NewPostWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for tf_Title widget.
  FocusNode? tfTitleFocusNode;
  TextEditingController? tfTitleTextController;
  String? Function(BuildContext, String?)? tfTitleTextControllerValidator;
  // State field(s) for tf_Message widget.
  FocusNode? tfMessageFocusNode;
  TextEditingController? tfMessageTextController;
  String? Function(BuildContext, String?)? tfMessageTextControllerValidator;
  // State field(s) for dd_categories widget.
  List<String>? ddCategoriesValue;
  FormFieldController<List<String>>? ddCategoriesValueController;
  // State field(s) for cbx_urgent widget.
  bool? cbxUrgentValue;
  // State field(s) for cbx_mail widget.
  bool? cbxMailValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tfTitleFocusNode?.dispose();
    tfTitleTextController?.dispose();

    tfMessageFocusNode?.dispose();
    tfMessageTextController?.dispose();
  }
}

import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'message_new_page_widget.dart' show MessageNewPageWidget;
import 'package:flutter/material.dart';

class MessageNewPageModel extends FlutterFlowModel<MessageNewPageWidget> {
  ///  Local state fields for this page.

  int dropdownCount = 0;

  int maxCount = 10;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for MessageTitleTextfield widget.
  FocusNode? messageTitleTextfieldFocusNode;
  TextEditingController? messageTitleTextfieldTextController;
  String? Function(BuildContext, String?)?
      messageTitleTextfieldTextControllerValidator;
  String? _messageTitleTextfieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Der Titel darf nicht leer sein';
    }

    return null;
  }

  // State field(s) for MessageDescriptionTextfield widget.
  FocusNode? messageDescriptionTextfieldFocusNode;
  TextEditingController? messageDescriptionTextfieldTextController;
  String? Function(BuildContext, String?)?
      messageDescriptionTextfieldTextControllerValidator;
  String? _messageDescriptionTextfieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Die Mitteilung darf nicht leer sein';
    }

    return null;
  }

  // State field(s) for MessageCategoryDropdown widget.
  List<int>? messageCategoryDropdownValue;
  FormFieldController<List<int>>? messageCategoryDropdownValueController;
  // State field(s) for MessagePinCheckbox widget.
  bool? messagePinCheckboxValue;
  // Stores action output result for [Backend Call - Query Rows] action in CreateButton widget.
  List<MessagesRow>? lastMessage;

  @override
  void initState(BuildContext context) {
    messageTitleTextfieldTextControllerValidator =
        _messageTitleTextfieldTextControllerValidator;
    messageDescriptionTextfieldTextControllerValidator =
        _messageDescriptionTextfieldTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    messageTitleTextfieldFocusNode?.dispose();
    messageTitleTextfieldTextController?.dispose();

    messageDescriptionTextfieldFocusNode?.dispose();
    messageDescriptionTextfieldTextController?.dispose();
  }
}

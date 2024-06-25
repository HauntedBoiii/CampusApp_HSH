import '/flutter_flow/flutter_flow_util.dart';
import 'angebot_erstellen_widget.dart' show AngebotErstellenWidget;
import 'package:flutter/material.dart';

class AngebotErstellenModel extends FlutterFlowModel<AngebotErstellenWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for titel widget.
  FocusNode? titelFocusNode;
  TextEditingController? titelTextController;
  String? Function(BuildContext, String?)? titelTextControllerValidator;
  // State field(s) for beschreibung widget.
  FocusNode? beschreibungFocusNode;
  TextEditingController? beschreibungTextController;
  String? Function(BuildContext, String?)? beschreibungTextControllerValidator;
  // State field(s) for Preis widget.
  FocusNode? preisFocusNode;
  TextEditingController? preisTextController;
  String? Function(BuildContext, String?)? preisTextControllerValidator;
  // State field(s) for Kontaktmglichkeiten widget.
  FocusNode? kontaktmglichkeitenFocusNode;
  TextEditingController? kontaktmglichkeitenTextController;
  String? Function(BuildContext, String?)?
      kontaktmglichkeitenTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titelFocusNode?.dispose();
    titelTextController?.dispose();

    beschreibungFocusNode?.dispose();
    beschreibungTextController?.dispose();

    preisFocusNode?.dispose();
    preisTextController?.dispose();

    kontaktmglichkeitenFocusNode?.dispose();
    kontaktmglichkeitenTextController?.dispose();
  }
}

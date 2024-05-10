import '/flutter_flow/flutter_flow_util.dart';
import 'mensa_angebot_widget.dart' show MensaAngebotWidget;
import 'package:flutter/material.dart';

class MensaAngebotModel extends FlutterFlowModel<MensaAngebotWidget> {
  ///  Local state fields for this page.

  DateTime? currentDate;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

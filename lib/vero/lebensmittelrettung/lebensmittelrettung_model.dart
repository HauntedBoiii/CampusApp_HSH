import '/flutter_flow/flutter_flow_util.dart';
import '/vero/mensa_dish_copy/mensa_dish_copy_widget.dart';
import 'lebensmittelrettung_widget.dart' show LebensmittelrettungWidget;
import 'package:flutter/material.dart';

class LebensmittelrettungModel
    extends FlutterFlowModel<LebensmittelrettungWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MensaDishCopy component.
  late MensaDishCopyModel mensaDishCopyModel1;
  // Model for MensaDishCopy component.
  late MensaDishCopyModel mensaDishCopyModel2;

  @override
  void initState(BuildContext context) {
    mensaDishCopyModel1 = createModel(context, () => MensaDishCopyModel());
    mensaDishCopyModel2 = createModel(context, () => MensaDishCopyModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mensaDishCopyModel1.dispose();
    mensaDishCopyModel2.dispose();
  }
}

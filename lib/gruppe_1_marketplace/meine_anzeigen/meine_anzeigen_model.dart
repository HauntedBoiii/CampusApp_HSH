import '/flutter_flow/flutter_flow_util.dart';
import 'meine_anzeigen_widget.dart' show MeineAnzeigenWidget;
import 'package:flutter/material.dart';

class MeineAnzeigenModel extends FlutterFlowModel<MeineAnzeigenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }
}

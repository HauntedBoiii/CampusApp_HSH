import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'no_canteen_offers_model.dart';
export 'no_canteen_offers_model.dart';

class NoCanteenOffersWidget extends StatefulWidget {
  const NoCanteenOffersWidget({super.key});

  @override
  State<NoCanteenOffersWidget> createState() => _NoCanteenOffersWidgetState();
}

class _NoCanteenOffersWidgetState extends State<NoCanteenOffersWidget> {
  late NoCanteenOffersModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoCanteenOffersModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      'Heute keine Angebote',
      style: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'Roboto',
            letterSpacing: 0.0,
          ),
    );
  }
}

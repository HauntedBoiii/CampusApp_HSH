import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'feed_pane_model.dart';
export 'feed_pane_model.dart';

class FeedPaneWidget extends StatefulWidget {
  const FeedPaneWidget({super.key});

  @override
  State<FeedPaneWidget> createState() => _FeedPaneWidgetState();
}

class _FeedPaneWidgetState extends State<FeedPaneWidget> {
  late FeedPaneModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FeedPaneModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          'Feed',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Roboto',
                letterSpacing: 0.0,
              ),
        ),
      ],
    );
  }
}

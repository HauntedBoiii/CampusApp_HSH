import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'profile_pane_model.dart';
export 'profile_pane_model.dart';

class ProfilePaneWidget extends StatefulWidget {
  const ProfilePaneWidget({super.key});

  @override
  State<ProfilePaneWidget> createState() => _ProfilePaneWidgetState();
}

class _ProfilePaneWidgetState extends State<ProfilePaneWidget> {
  late ProfilePaneModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfilePaneModel());
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
          'Profil',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Roboto',
                letterSpacing: 0.0,
              ),
        ),
      ],
    );
  }
}

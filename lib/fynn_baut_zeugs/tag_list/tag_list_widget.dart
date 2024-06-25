import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'tag_list_model.dart';
export 'tag_list_model.dart';

class TagListWidget extends StatefulWidget {
  const TagListWidget({super.key});

  @override
  State<TagListWidget> createState() => _TagListWidgetState();
}

class _TagListWidgetState extends State<TagListWidget> {
  late TagListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TagListModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24.0,
      decoration: BoxDecoration(
        color: const Color(0x4D9489F5),
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: const Color(0xFF6F61EF),
        ),
      ),
      child: Align(
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
          child: Text(
            '#fsrw',
            style: FlutterFlowTheme.of(context).bodySmall.override(
                  fontFamily: 'Roboto',
                  letterSpacing: 0.0,
                ),
          ),
        ),
      ),
    );
  }
}

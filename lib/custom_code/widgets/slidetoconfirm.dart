// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '../../components/slider_track_widget.dart';
import '../../components/slider_thumb_widget.dart';
import 'package:slide_action/slide_action.dart';

class SlideToConfirm extends StatefulWidget {
  const SlideToConfirm({
    Key? key,
    this.width,
    this.height,
    required this.action,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Future<dynamic> Function() action;

  @override
  _SlideToConfirmState createState() => _SlideToConfirmState();
}

class _SlideToConfirmState extends State<SlideToConfirm> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SlideAction(
          //trackHeight: 60,
          snapAnimationCurve: Curves.bounceOut,
          snapAnimationDuration: const Duration(milliseconds: 1200),
          stretchThumb: false,
          thumbWidth: 136,
          trackBuilder: (context, state) {
            return SliderTrackWidget();
          },
          thumbBuilder: (context, state) {
            return SliderThumbWidget();
          },
          action: () async {
            await widget.action?.call();
          }),
    );
  }
}

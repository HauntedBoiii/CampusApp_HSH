// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:slide_action/slide_action.dart';

class SlideToConfirm extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Center(
      child: SlideAction(
        stretchThumb: false,
        thumbWidth: 136,
        trackBuilder: (context, state) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 255, 245,
                      227), // Customize gradient colors as needed
                  Colors.orange,
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(40),
            ),
          );
        },
        thumbBuilder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              decoration: BoxDecoration(
                color:
                    Colors.white, // Customize thumb background color as needed
                borderRadius: BorderRadius.circular(40),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: Colors
                            .orange, // Customize icon background color as needed
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.navigate_next,
                        color: Colors.white, // Customize icon color as needed
                        size: 24,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'slide to\nConfirm',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        action: () async {
          await action?.call();
        },
      ),
    );
  }
}

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!

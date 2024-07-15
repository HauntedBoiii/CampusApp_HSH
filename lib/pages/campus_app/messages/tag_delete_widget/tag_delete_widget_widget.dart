import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'tag_delete_widget_model.dart';
export 'tag_delete_widget_model.dart';

class TagDeleteWidgetWidget extends StatefulWidget {
  const TagDeleteWidgetWidget({
    super.key,
    this.tagID,
  });

  final int? tagID;

  @override
  State<TagDeleteWidgetWidget> createState() => _TagDeleteWidgetWidgetState();
}

class _TagDeleteWidgetWidgetState extends State<TagDeleteWidgetWidget> {
  late TagDeleteWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TagDeleteWidgetModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: FutureBuilder<List<MessageTagPermissionsRow>>(
        future: MessageTagPermissionsTable().queryRows(
          queryFn: (q) => q
              .eq(
                'user_id',
                currentUserUid,
              )
              .eq(
                'can_modify',
                true,
              ),
        ),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            );
          }
          List<MessageTagPermissionsRow>
              tagContainerMessageTagPermissionsRowList = snapshot.data!;

          return Material(
            color: Colors.transparent,
            elevation: 2.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.8,
              height: MediaQuery.sizeOf(context).height * 0.2,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FutureBuilder<List<MessageTagsRow>>(
                      future: MessageTagsTable().queryRows(
                        queryFn: (q) => q,
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        List<MessageTagsRow>
                            tagSelectDropDownMessageTagsRowList =
                            snapshot.data!;

                        return FlutterFlowDropDown<int>(
                          controller:
                              _model.tagSelectDropDownValueController ??=
                                  FormFieldController<int>(
                            _model.tagSelectDropDownValue ??= widget.tagID,
                          ),
                          options: List<int>.from(
                              tagSelectDropDownMessageTagsRowList
                                  .map((e) => e.id)
                                  .toList()),
                          optionLabels: tagSelectDropDownMessageTagsRowList
                              .map((e) => e.name)
                              .withoutNulls
                              .toList(),
                          onChanged: (val) => setState(
                              () => _model.tagSelectDropDownValue = val),
                          width: 300.0,
                          height: 56.0,
                          searchHintTextStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Roboto',
                                    letterSpacing: 0.0,
                                  ),
                          searchTextStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Roboto',
                                    letterSpacing: 0.0,
                                  ),
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Roboto',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Bitte wähle...',
                          searchHintText: 'Search for an item...',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          isOverButton: true,
                          isSearchable: true,
                          isMultiSelect: false,
                        );
                      },
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            Navigator.pop(context);
                          },
                          text: 'Abbrechen',
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Roboto',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            var shouldSetState = false;
                            _model.tag = await MessageTagsTable().queryRows(
                              queryFn: (q) => q.eq(
                                'id',
                                _model.tagSelectDropDownValue,
                              ),
                            );
                            shouldSetState = true;
                            if (_model.tagSelectDropDownValue != null) {
                              if ((tagContainerMessageTagPermissionsRowList
                                          .where((e) =>
                                              (e.userId == currentUserUid) &&
                                              (e.tagId ==
                                                  _model
                                                      .tagSelectDropDownValue))
                                          .toList()[0]
                                          .canModify !=
                                      true) &&
                                  !_model.tag![0].isProtected!) {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: const Text('Keine Berechtigung'),
                                      content: const Text(
                                          'Sie sind nicht berechtigt dieses Tag zu löschen. Bitte informieren sie einen Admin, wenn dieses Tag gelöscht werden soll.'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: const Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                context.safePop();
                                if (shouldSetState) setState(() {});
                                return;
                              } else if ((tagContainerMessageTagPermissionsRowList
                                          .where((e) =>
                                              (e.userId == currentUserUid) &&
                                              (e.tagId ==
                                                  _model
                                                      .tagSelectDropDownValue))
                                          .toList()[0]
                                          .canModify ==
                                      true) &&
                                  !_model.tag![0].isProtected!) {
                                await MessageTagsTable().delete(
                                  matchingRows: (rows) => rows.eq(
                                    'id',
                                    _model.tagSelectDropDownValue,
                                  ),
                                );
                                context.safePop();
                                if (shouldSetState) setState(() {});
                                return;
                              } else if (!(valueOrDefault<bool>(
                                    tagContainerMessageTagPermissionsRowList
                                            .where((e) =>
                                                (e.userId == currentUserUid) &&
                                                (e.tagId ==
                                                    _model
                                                        .tagSelectDropDownValue))
                                            .toList()[0]
                                            .canModify ==
                                        null,
                                    true,
                                  ) &&
                                  !_model.tag![0].isProtected!)) {
                                await MessageTagsTable().delete(
                                  matchingRows: (rows) => rows.eq(
                                    'id',
                                    _model.tagSelectDropDownValue,
                                  ),
                                );
                                context.safePop();
                                if (shouldSetState) setState(() {});
                                return;
                              } else {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: const Text('Keine Berechtigung'),
                                      content: const Text(
                                          'Sie sind nicht berechtigt dieses Tag zu löschen. Bitte informieren sie einen Admin, wenn dieses Tag gelöscht werden soll.'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: const Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                if (shouldSetState) setState(() {});
                                return;
                              }
                            } else {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: const Text('Kein Tag ausgewählt'),
                                    content:
                                        const Text('es wurde kein Tag ausgewählt.'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: const Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              );
                              if (shouldSetState) setState(() {});
                              return;
                            }

                            if (shouldSetState) setState(() {});
                          },
                          text: 'Tag löschen',
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Roboto',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

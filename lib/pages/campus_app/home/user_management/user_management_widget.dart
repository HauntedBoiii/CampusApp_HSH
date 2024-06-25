import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'user_management_model.dart';
export 'user_management_model.dart';

class UserManagementWidget extends StatefulWidget {
  const UserManagementWidget({super.key});

  @override
  State<UserManagementWidget> createState() => _UserManagementWidgetState();
}

class _UserManagementWidgetState extends State<UserManagementWidget> {
  late UserManagementModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserManagementModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<UserNamesRow>>(
      future: UserNamesTable().queryRows(
        queryFn: (q) => q,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<UserNamesRow> userManagementUserNamesRowList = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              title: Text(
                'Benutzer verwalten',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Roboto',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                    ),
              ),
              actions: const [],
              centerTitle: false,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Text(
                        'Benutzer:',
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'Roboto',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: FlutterFlowDropDown<String>(
                        controller: _model.dropDownValueController ??=
                            FormFieldController<String>(null),
                        options: userManagementUserNamesRowList
                            .map((e) => valueOrDefault<String>(
                                  e.email,
                                  'unknown email',
                                ))
                            .toList(),
                        onChanged: (val) async {
                          setState(() => _model.dropDownValue = val);
                          _model.selectedUserPermisssions =
                              await UserPermissionsTable().queryRows(
                            queryFn: (q) => q.eq(
                              'user_id',
                              userManagementUserNamesRowList
                                  .where((e) => e.email == _model.dropDownValue)
                                  .toList()
                                  .first
                                  .id,
                            ),
                          );
                          setState(() {
                            _model.manageUserSwitchValue = (_model
                                .selectedUserPermisssions!
                                .where((e) =>
                                    e.permission ==
                                    Permission.userManagement_manageUser.name)
                                .toList()
                                .isNotEmpty);
                          });
                          setState(() {
                            _model.createOfferSwitchValue = (_model
                                .selectedUserPermisssions!
                                .where((e) =>
                                    e.permission ==
                                    Permission.saveFood_createOffer.name)
                                .toList()
                                .isNotEmpty);
                          });
                          setState(() {
                            _model.manageTagsSwitchValue = (_model
                                .selectedUserPermisssions!
                                .where((e) =>
                                    e.permission ==
                                    Permission.messages_manageTags.name)
                                .toList()
                                .isNotEmpty);
                          });
                          setState(() {
                            _model.pinMessagesSwitchValue = (_model
                                .selectedUserPermisssions!
                                .where((e) =>
                                    e.permission ==
                                    Permission.messages_pin.name)
                                .toList()
                                .isNotEmpty);
                          });

                          setState(() {});
                        },
                        width: MediaQuery.sizeOf(context).width * 1.0,
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
                        hintText: 'Please select...',
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
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Text(
                        'Berechtigungen:',
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'Roboto',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                visualDensity: VisualDensity.compact,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                            ),
                            child: Checkbox(
                              value: _model.manageUserSwitchValue ??= false,
                              onChanged: (newValue) async {
                                setState(() =>
                                    _model.manageUserSwitchValue = newValue!);
                                if (newValue!) {
                                  await _model.changePermission(
                                    context,
                                    permission:
                                        Permission.userManagement_manageUser,
                                    granted: true,
                                    userId: userManagementUserNamesRowList
                                        .where((e) =>
                                            e.email == _model.dropDownValue)
                                        .toList()
                                        .first
                                        .id,
                                  );
                                } else {
                                  await _model.changePermission(
                                    context,
                                    permission:
                                        Permission.userManagement_manageUser,
                                    granted: false,
                                    userId: userManagementUserNamesRowList
                                        .where((e) =>
                                            e.email == _model.dropDownValue)
                                        .toList()
                                        .first
                                        .id,
                                  );
                                }
                              },
                              side: BorderSide(
                                width: 2,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                              activeColor:
                                  FlutterFlowTheme.of(context).tertiary,
                              checkColor: FlutterFlowTheme.of(context).info,
                            ),
                          ),
                        ),
                        Text(
                          'Benutzer verwalten',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Roboto',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                visualDensity: VisualDensity.compact,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                            ),
                            child: Checkbox(
                              value: _model.createOfferSwitchValue ??= false,
                              onChanged: (newValue) async {
                                setState(() =>
                                    _model.createOfferSwitchValue = newValue!);
                                if (newValue!) {
                                  await _model.changePermission(
                                    context,
                                    permission: Permission.saveFood_createOffer,
                                    granted: true,
                                    userId: userManagementUserNamesRowList
                                        .where((e) =>
                                            e.email == _model.dropDownValue)
                                        .toList()
                                        .first
                                        .id,
                                  );
                                } else {
                                  await _model.changePermission(
                                    context,
                                    permission: Permission.saveFood_createOffer,
                                    granted: false,
                                    userId: userManagementUserNamesRowList
                                        .where((e) =>
                                            e.email == _model.dropDownValue)
                                        .toList()
                                        .first
                                        .id,
                                  );
                                }
                              },
                              side: BorderSide(
                                width: 2,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                              activeColor:
                                  FlutterFlowTheme.of(context).tertiary,
                              checkColor: FlutterFlowTheme.of(context).info,
                            ),
                          ),
                        ),
                        Text(
                          'Lebensmittel retten: Angebot erstellen',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Roboto',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                visualDensity: VisualDensity.compact,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                            ),
                            child: Checkbox(
                              value: _model.manageTagsSwitchValue ??= false,
                              onChanged: (newValue) async {
                                setState(() =>
                                    _model.manageTagsSwitchValue = newValue!);
                                if (newValue!) {
                                  await _model.changePermission(
                                    context,
                                    permission: Permission.messages_manageTags,
                                    granted: true,
                                    userId: userManagementUserNamesRowList
                                        .where((e) =>
                                            e.email == _model.dropDownValue)
                                        .toList()
                                        .first
                                        .id,
                                  );
                                } else {
                                  await _model.changePermission(
                                    context,
                                    permission: Permission.messages_manageTags,
                                    granted: false,
                                    userId: userManagementUserNamesRowList
                                        .where((e) =>
                                            e.email == _model.dropDownValue)
                                        .toList()
                                        .first
                                        .id,
                                  );
                                }
                              },
                              side: BorderSide(
                                width: 2,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                              activeColor:
                                  FlutterFlowTheme.of(context).tertiary,
                              checkColor: FlutterFlowTheme.of(context).info,
                            ),
                          ),
                        ),
                        Text(
                          'Nachrichten: Tags verwalten',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Roboto',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                visualDensity: VisualDensity.compact,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                            ),
                            child: Checkbox(
                              value: _model.pinMessagesSwitchValue ??= false,
                              onChanged: (_model.dropDownValue == null ||
                                      _model.dropDownValue == '')
                                  ? null
                                  : (newValue) async {
                                      setState(() => _model
                                          .pinMessagesSwitchValue = newValue!);
                                      if (newValue!) {
                                        await _model.changePermission(
                                          context,
                                          permission: Permission.messages_pin,
                                          granted: true,
                                          userId: userManagementUserNamesRowList
                                              .where((e) =>
                                                  e.email ==
                                                  _model.dropDownValue)
                                              .toList()
                                              .first
                                              .id,
                                        );
                                      } else {
                                        await _model.changePermission(
                                          context,
                                          permission: Permission.messages_pin,
                                          granted: false,
                                          userId: userManagementUserNamesRowList
                                              .where((e) =>
                                                  e.email ==
                                                  _model.dropDownValue)
                                              .toList()
                                              .first
                                              .id,
                                        );
                                      }
                                    },
                              side: BorderSide(
                                width: 2,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                              activeColor:
                                  FlutterFlowTheme.of(context).tertiary,
                              checkColor: (_model.dropDownValue == null ||
                                      _model.dropDownValue == '')
                                  ? null
                                  : FlutterFlowTheme.of(context).info,
                            ),
                          ),
                        ),
                        Text(
                          'Nachrichten: Anpinnen',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Roboto',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

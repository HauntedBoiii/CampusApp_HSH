import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'permission_list_model.dart';
export 'permission_list_model.dart';

class PermissionListWidget extends StatefulWidget {
  const PermissionListWidget({
    super.key,
    required this.userId,
    required this.grantedPermissions,
  });

  final String? userId;
  final List<UserPermissionsRow>? grantedPermissions;

  @override
  State<PermissionListWidget> createState() => _PermissionListWidgetState();
}

class _PermissionListWidgetState extends State<PermissionListWidget> {
  late PermissionListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PermissionListModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final perm = Permission.values.toList();
        return ListView.builder(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          itemCount: perm.length,
          itemBuilder: (context, permIndex) {
            final permItem = perm[permIndex];
            return Container(
              width: 100.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Row(
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
                        value: _model.checkboxValueMap[permItem] ??= widget
                            .grantedPermissions!
                            .where((e) => e.permission == permItem.name)
                            .toList()
                            .isNotEmpty,
                        onChanged: (newValue) async {
                          setState(() =>
                              _model.checkboxValueMap[permItem] = newValue!);
                        },
                        side: BorderSide(
                          width: 2,
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                        activeColor: FlutterFlowTheme.of(context).tertiary,
                        checkColor: FlutterFlowTheme.of(context).info,
                      ),
                    ),
                  ),
                  Text(
                    permItem.name,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Roboto',
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

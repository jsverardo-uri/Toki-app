import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'assignment_tile_model.dart';
export 'assignment_tile_model.dart';

/// Reusable tile showing assignment name / course / due date
class AssignmentTileWidget extends StatefulWidget {
  const AssignmentTileWidget({super.key});

  @override
  State<AssignmentTileWidget> createState() => _AssignmentTileWidgetState();
}

class _AssignmentTileWidgetState extends State<AssignmentTileWidget> {
  late AssignmentTileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AssignmentTileModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 72.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        border: Border.all(
          color: FlutterFlowTheme.of(context).accent1,
          width: 1.0,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 10.0, 0.0, 0.0),
                    child: Text(
                      'Hello World',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).body.override(
                            font: GoogleFonts.roboto(
                              fontWeight: FontWeight.normal,
                              fontStyle:
                                  FlutterFlowTheme.of(context).body.fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                            fontStyle:
                                FlutterFlowTheme.of(context).body.fontStyle,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Hello World',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).body.override(
                            font: GoogleFonts.roboto(
                              fontWeight: FontWeight.normal,
                              fontStyle:
                                  FlutterFlowTheme.of(context).body.fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                            fontStyle:
                                FlutterFlowTheme.of(context).body.fontStyle,
                          ),
                    ),
                  ),
                ),
              ].divide(SizedBox(height: 5.0)),
            ),
          ),
          Theme(
            data: ThemeData(
              checkboxTheme: CheckboxThemeData(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              unselectedWidgetColor: FlutterFlowTheme.of(context).primaryText,
            ),
            child: Checkbox(
              value: _model.checkboxValue ??= false,
              onChanged: (newValue) async {
                safeSetState(() => _model.checkboxValue = newValue!);
              },
              side: (FlutterFlowTheme.of(context).primaryText != null)
                  ? BorderSide(
                      width: 2,
                      color: FlutterFlowTheme.of(context).primaryText,
                    )
                  : null,
              activeColor: FlutterFlowTheme.of(context).primaryBackground,
              checkColor: FlutterFlowTheme.of(context).info,
            ),
          ),
        ],
      ),
    );
  }
}

import '/backend/backend.dart';
import '/components/assignment_details_sheet/assignment_details_sheet_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'assignment_tile_model.dart';
export 'assignment_tile_model.dart';

/// Reusable tile showing assignment name / course / due date
class AssignmentTileWidget extends StatefulWidget {
  const AssignmentTileWidget({
    super.key,
    required this.assignmentTitle,
    required this.courseName,
    required this.dueDate,
    required this.isCompleted,
    required this.assignmentRef,
    required this.assignmentDetails,
  });

  final String? assignmentTitle;
  final String? courseName;
  final DateTime? dueDate;
  final bool? isCompleted;
  final DocumentReference? assignmentRef;
  final String? assignmentDetails;

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
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          if (getRemoteConfigString('completion_button_position') == 'left')
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent(
                          'ASSIGNMENT_TILE_Column_cib31yzi_ON_TAP');
                      logFirebaseEvent('Column_bottom_sheet');
                      await showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        enableDrag: false,
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding: MediaQuery.viewInsetsOf(context),
                            child: AssignmentDetailsSheetWidget(
                              assignmentRef: widget.assignmentRef!,
                              assignmentTitle: widget.assignmentTitle!,
                              assignmentDetails: widget.assignmentDetails!,
                              courseName: widget.courseName!,
                              dueDate: widget.dueDate!,
                              isCompleted: widget.isCompleted!,
                            ),
                          );
                        },
                      ).then((value) => safeSetState(() {}));

                      logFirebaseEvent('Column_google_analytics_event');
                      logFirebaseEvent('assignment_viewed');
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 10.0, 0.0, 0.0),
                            child: Text(
                              widget.assignmentTitle!,
                              textAlign: TextAlign.start,
                              maxLines: 1,
                              style: FlutterFlowTheme.of(context).body.override(
                                    font: GoogleFonts.roboto(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .body
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .body
                                        .fontStyle,
                                  ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 0.0, 0.0),
                            child: Text(
                              '${widget.courseName}  •  Due ${dateTimeFormat("MMMEd", widget.dueDate)}',
                              textAlign: TextAlign.start,
                              maxLines: 1,
                              style: FlutterFlowTheme.of(context).body.override(
                                    font: GoogleFonts.roboto(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .body
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .body
                                        .fontStyle,
                                  ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ].divide(SizedBox(height: 5.0)),
                    ),
                  ),
                ),
                Theme(
                  data: ThemeData(
                    checkboxTheme: CheckboxThemeData(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                    unselectedWidgetColor:
                        FlutterFlowTheme.of(context).primaryText,
                  ),
                  child: Checkbox(
                    value: _model.checkboxValue1 ??=
                        widget.isCompleted! ? true : false,
                    onChanged: (newValue) async {
                      safeSetState(() => _model.checkboxValue1 = newValue!);
                      if (newValue!) {
                        logFirebaseEvent(
                            'ASSIGNMENT_TILE_Checkbox_n5g3yzkv_ON_TOG');
                        logFirebaseEvent('Checkbox_backend_call');

                        await widget.assignmentRef!
                            .update(createAssignmentsRecordData(
                          completed: true,
                          completedTime: getCurrentTimestamp,
                        ));
                        logFirebaseEvent('Checkbox_google_analytics_event');
                        logFirebaseEvent('assignment_completed');
                      } else {
                        logFirebaseEvent(
                            'ASSIGNMENT_TILE_Checkbox_n5g3yzkv_ON_TOG');
                        logFirebaseEvent('Checkbox_backend_call');

                        await widget.assignmentRef!
                            .update(createAssignmentsRecordData(
                          completed: false,
                          completedTime: null,
                        ));
                      }
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
          if (getRemoteConfigString('completion_button_position') == 'right')
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Theme(
                  data: ThemeData(
                    checkboxTheme: CheckboxThemeData(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                    unselectedWidgetColor:
                        FlutterFlowTheme.of(context).primaryText,
                  ),
                  child: Checkbox(
                    value: _model.checkboxValue2 ??=
                        widget.isCompleted! ? true : false,
                    onChanged: (newValue) async {
                      safeSetState(() => _model.checkboxValue2 = newValue!);
                      if (newValue!) {
                        logFirebaseEvent(
                            'ASSIGNMENT_TILE_Checkbox_0wtoxoim_ON_TOG');
                        logFirebaseEvent('Checkbox_backend_call');

                        await widget.assignmentRef!
                            .update(createAssignmentsRecordData(
                          completed: true,
                          completedTime: getCurrentTimestamp,
                        ));
                        logFirebaseEvent('Checkbox_google_analytics_event');
                        logFirebaseEvent('assignment_completed');
                      } else {
                        logFirebaseEvent(
                            'ASSIGNMENT_TILE_Checkbox_0wtoxoim_ON_TOG');
                        logFirebaseEvent('Checkbox_backend_call');

                        await widget.assignmentRef!
                            .update(createAssignmentsRecordData(
                          completed: false,
                          completedTime: null,
                        ));
                      }
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
                Expanded(
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent(
                          'ASSIGNMENT_TILE_Column_xddhvvbq_ON_TAP');
                      logFirebaseEvent('Column_bottom_sheet');
                      await showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        enableDrag: false,
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding: MediaQuery.viewInsetsOf(context),
                            child: AssignmentDetailsSheetWidget(
                              assignmentRef: widget.assignmentRef!,
                              assignmentTitle: widget.assignmentTitle!,
                              assignmentDetails: widget.assignmentDetails!,
                              courseName: widget.courseName!,
                              dueDate: widget.dueDate!,
                              isCompleted: widget.isCompleted!,
                            ),
                          );
                        },
                      ).then((value) => safeSetState(() {}));

                      logFirebaseEvent('Column_google_analytics_event');
                      logFirebaseEvent('assignment_viewed');
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 10.0, 0.0, 0.0),
                            child: Text(
                              widget.assignmentTitle!,
                              textAlign: TextAlign.start,
                              maxLines: 1,
                              style: FlutterFlowTheme.of(context).body.override(
                                    font: GoogleFonts.roboto(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .body
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .body
                                        .fontStyle,
                                  ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 0.0, 0.0),
                            child: Text(
                              '${widget.courseName}  •  Due ${dateTimeFormat("MMMEd", widget.dueDate)}',
                              textAlign: TextAlign.start,
                              maxLines: 1,
                              style: FlutterFlowTheme.of(context).body.override(
                                    font: GoogleFonts.roboto(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .body
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .body
                                        .fontStyle,
                                  ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ].divide(SizedBox(height: 5.0)),
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}

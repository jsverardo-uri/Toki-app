import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/app_logo_header/app_logo_header_widget.dart';
import '/components/assignment_tile/assignment_tile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'completed_assignments_model.dart';
export 'completed_assignments_model.dart';

/// Page showing previously completed assignments.
class CompletedAssignmentsWidget extends StatefulWidget {
  const CompletedAssignmentsWidget({super.key});

  static String routeName = 'CompletedAssignments';
  static String routePath = '/CompletedAssignments';

  @override
  State<CompletedAssignmentsWidget> createState() =>
      _CompletedAssignmentsWidgetState();
}

class _CompletedAssignmentsWidgetState
    extends State<CompletedAssignmentsWidget> {
  late CompletedAssignmentsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompletedAssignmentsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'CompletedAssignments'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                wrapWithModel(
                  model: _model.appLogoHeaderModel,
                  updateCallback: () => safeSetState(() {}),
                  child: AppLogoHeaderWidget(),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Completed Assignments',
                                style: FlutterFlowTheme.of(context)
                                    .subTitles
                                    .override(
                                      font: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .subTitles
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 24.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .subTitles
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: StreamBuilder<List<AssignmentsRecord>>(
                            stream: queryAssignmentsRecord(
                              queryBuilder: (assignmentsRecord) =>
                                  assignmentsRecord
                                      .where(
                                        'user_ref',
                                        isEqualTo: currentUserReference,
                                      )
                                      .where(
                                        'completed',
                                        isEqualTo: true,
                                      )
                                      .orderBy('completed_time',
                                          descending: true),
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
                              List<AssignmentsRecord>
                                  listViewAssignmentsRecordList =
                                  snapshot.data!;

                              return ListView.separated(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: listViewAssignmentsRecordList.length,
                                separatorBuilder: (_, __) =>
                                    SizedBox(height: 12.0),
                                itemBuilder: (context, listViewIndex) {
                                  final listViewAssignmentsRecord =
                                      listViewAssignmentsRecordList[
                                          listViewIndex];
                                  return wrapWithModel(
                                    model: _model.assignmentTileModels.getModel(
                                      listViewAssignmentsRecord.reference.id,
                                      listViewIndex,
                                    ),
                                    updateCallback: () => safeSetState(() {}),
                                    child: AssignmentTileWidget(
                                      key: Key(
                                        'Key0ut_${listViewAssignmentsRecord.reference.id}',
                                      ),
                                      assignmentTitle:
                                          listViewAssignmentsRecord.title,
                                      courseName:
                                          listViewAssignmentsRecord.course,
                                      isCompleted:
                                          listViewAssignmentsRecord.completed,
                                      dueDate:
                                          listViewAssignmentsRecord.dueDate!,
                                      assignmentRef:
                                          listViewAssignmentsRecord.reference,
                                      assignmentDetails:
                                          listViewAssignmentsRecord.details,
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ].divide(SizedBox(height: 12.0)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

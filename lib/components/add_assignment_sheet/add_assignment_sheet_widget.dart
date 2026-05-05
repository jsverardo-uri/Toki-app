import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'add_assignment_sheet_model.dart';
export 'add_assignment_sheet_model.dart';

/// Bottom sheet for manually adding assignments
class AddAssignmentSheetWidget extends StatefulWidget {
  const AddAssignmentSheetWidget({super.key});

  @override
  State<AddAssignmentSheetWidget> createState() =>
      _AddAssignmentSheetWidgetState();
}

class _AddAssignmentSheetWidgetState extends State<AddAssignmentSheetWidget> {
  late AddAssignmentSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddAssignmentSheetModel());

    _model.assignmentNameTextController ??= TextEditingController();
    _model.assignmentNameFocusNode ??= FocusNode();

    _model.assignmentDetailsTextController ??= TextEditingController();
    _model.assignmentDetailsFocusNode ??= FocusNode();

    _model.assignmentClassTextController ??= TextEditingController();
    _model.assignmentClassFocusNode ??= FocusNode();

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
      height: 670.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
        border: Border.all(
          color: FlutterFlowTheme.of(context).accent1,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 6.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 40.0,
                    fillColor: Color(0x005F7A61),
                    icon: Icon(
                      Icons.close,
                      color: FlutterFlowTheme.of(context).info,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      logFirebaseEvent('ADD_ASSIGNMENT_SHEET_close_ICN_ON_TAP');
                      logFirebaseEvent('IconButton_bottom_sheet');
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              child: Container(
                width: double.infinity,
                child: TextFormField(
                  controller: _model.assignmentNameTextController,
                  focusNode: _model.assignmentNameFocusNode,
                  onChanged: (_) => EasyDebounce.debounce(
                    '_model.assignmentNameTextController',
                    Duration(milliseconds: 2000),
                    () => safeSetState(() {}),
                  ),
                  autofocus: false,
                  enabled: true,
                  textInputAction: TextInputAction.next,
                  obscureText: false,
                  decoration: InputDecoration(
                    isDense: true,
                    labelStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              font: GoogleFonts.spaceGrotesk(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .fontStyle,
                              ),
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .fontStyle,
                            ),
                    hintText: 'Assignment name...',
                    hintStyle: FlutterFlowTheme.of(context).body.override(
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
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).accent1,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 27.0, 24.0, 27.0),
                    suffixIcon:
                        _model.assignmentNameTextController!.text.isNotEmpty
                            ? InkWell(
                                onTap: () async {
                                  _model.assignmentNameTextController?.clear();
                                  safeSetState(() {});
                                },
                                child: Icon(
                                  Icons.clear,
                                  size: 24.0,
                                ),
                              )
                            : null,
                  ),
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
                        fontStyle: FlutterFlowTheme.of(context).body.fontStyle,
                      ),
                  cursorColor: FlutterFlowTheme.of(context).primaryText,
                  enableInteractiveSelection: true,
                  validator: _model.assignmentNameTextControllerValidator
                      .asValidator(context),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              child: Container(
                width: double.infinity,
                child: TextFormField(
                  controller: _model.assignmentDetailsTextController,
                  focusNode: _model.assignmentDetailsFocusNode,
                  onChanged: (_) => EasyDebounce.debounce(
                    '_model.assignmentDetailsTextController',
                    Duration(milliseconds: 2000),
                    () => safeSetState(() {}),
                  ),
                  autofocus: false,
                  enabled: true,
                  textInputAction: TextInputAction.next,
                  obscureText: false,
                  decoration: InputDecoration(
                    isDense: true,
                    labelStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              font: GoogleFonts.spaceGrotesk(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .fontStyle,
                              ),
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .fontStyle,
                            ),
                    hintText: 'Details... (Optional)',
                    hintStyle: FlutterFlowTheme.of(context).body.override(
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
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).accent1,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 27.0, 24.0, 27.0),
                    suffixIcon: _model
                            .assignmentDetailsTextController!.text.isNotEmpty
                        ? InkWell(
                            onTap: () async {
                              _model.assignmentDetailsTextController?.clear();
                              safeSetState(() {});
                            },
                            child: Icon(
                              Icons.clear,
                              size: 24.0,
                            ),
                          )
                        : null,
                  ),
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
                        fontStyle: FlutterFlowTheme.of(context).body.fontStyle,
                      ),
                  maxLines: 6,
                  cursorColor: FlutterFlowTheme.of(context).primaryText,
                  enableInteractiveSelection: true,
                  validator: _model.assignmentDetailsTextControllerValidator
                      .asValidator(context),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              child: Container(
                width: double.infinity,
                child: TextFormField(
                  controller: _model.assignmentClassTextController,
                  focusNode: _model.assignmentClassFocusNode,
                  onChanged: (_) => EasyDebounce.debounce(
                    '_model.assignmentClassTextController',
                    Duration(milliseconds: 2000),
                    () => safeSetState(() {}),
                  ),
                  autofocus: false,
                  enabled: true,
                  textInputAction: TextInputAction.next,
                  obscureText: false,
                  decoration: InputDecoration(
                    isDense: true,
                    labelStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              font: GoogleFonts.spaceGrotesk(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .fontStyle,
                              ),
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .fontStyle,
                            ),
                    hintText: 'Class...',
                    hintStyle: FlutterFlowTheme.of(context).body.override(
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
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).accent1,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 27.0, 24.0, 27.0),
                    suffixIcon:
                        _model.assignmentClassTextController!.text.isNotEmpty
                            ? InkWell(
                                onTap: () async {
                                  _model.assignmentClassTextController?.clear();
                                  safeSetState(() {});
                                },
                                child: Icon(
                                  Icons.clear,
                                  size: 24.0,
                                ),
                              )
                            : null,
                  ),
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
                        fontStyle: FlutterFlowTheme.of(context).body.fontStyle,
                      ),
                  cursorColor: FlutterFlowTheme.of(context).primaryText,
                  enableInteractiveSelection: true,
                  validator: _model.assignmentClassTextControllerValidator
                      .asValidator(context),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('ADD_ASSIGNMENT_SHEET_assignmentDueDate_O');
                  logFirebaseEvent('assignmentDueDate_date_time_picker');
                  final _datePickedDate = await showDatePicker(
                    context: context,
                    initialDate: getCurrentTimestamp,
                    firstDate:
                        (DateTime.now().subtract(const Duration(days: 365)) ??
                            DateTime(1900)),
                    lastDate: (DateTime.now().add(const Duration(days: 365)) ??
                        DateTime(2050)),
                    builder: (context, child) {
                      return wrapInMaterialDatePickerTheme(
                        context,
                        child!,
                        headerBackgroundColor:
                            FlutterFlowTheme.of(context).primary,
                        headerForegroundColor:
                            FlutterFlowTheme.of(context).secondaryText,
                        headerTextStyle:
                            FlutterFlowTheme.of(context).headlineLarge.override(
                                  font: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineLarge
                                        .fontStyle,
                                  ),
                                  fontSize: 32.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .fontStyle,
                                ),
                        pickerBackgroundColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        pickerForegroundColor:
                            FlutterFlowTheme.of(context).primaryText,
                        selectedDateTimeBackgroundColor:
                            FlutterFlowTheme.of(context).primary,
                        selectedDateTimeForegroundColor:
                            FlutterFlowTheme.of(context).secondaryText,
                        actionButtonForegroundColor:
                            FlutterFlowTheme.of(context).primaryText,
                        iconSize: 24.0,
                      );
                    },
                  );

                  if (_datePickedDate != null) {
                    safeSetState(() {
                      _model.datePicked = DateTime(
                        _datePickedDate.year,
                        _datePickedDate.month,
                        _datePickedDate.day,
                      );
                    });
                  } else if (_model.datePicked != null) {
                    safeSetState(() {
                      _model.datePicked = getCurrentTimestamp;
                    });
                  }
                  logFirebaseEvent('assignmentDueDate_update_component_state');
                  _model.selectedDueDate = _model.datePicked;
                  safeSetState(() {});
                },
                text: _model.selectedDueDate == null
                    ? 'Due Date'
                    : dateTimeFormat("MMMEd", _model.selectedDueDate),
                icon: Icon(
                  Icons.calendar_today,
                  size: 26.0,
                ),
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 70.0,
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  textStyle: FlutterFlowTheme.of(context).body.override(
                        font: GoogleFonts.roboto(
                          fontWeight: FontWeight.normal,
                          fontStyle:
                              FlutterFlowTheme.of(context).body.fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                        fontStyle: FlutterFlowTheme.of(context).body.fontStyle,
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).accent1,
                  ),
                  borderRadius: BorderRadius.circular(24.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 16.0, 12.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('ADD_ASSIGNMENT_SHEET_ADD_ASSIGNMENT_BTN_');
                  if ((_model.assignmentNameTextController.text != '') &&
                      (_model.assignmentClassTextController.text != '') &&
                      (dateTimeFormat("MMMEd", _model.selectedDueDate) !=
                              '')) {
                    logFirebaseEvent('Button_update_component_state');
                    _model.showValidationError = false;
                    safeSetState(() {});
                    logFirebaseEvent('Button_backend_call');

                    await AssignmentsRecord.collection
                        .doc()
                        .set(createAssignmentsRecordData(
                          title: _model.assignmentNameTextController.text,
                          details: _model.assignmentDetailsTextController.text,
                          course: _model.assignmentClassTextController.text,
                          dueDate: _model.selectedDueDate,
                          completed: false,
                          createdTime: getCurrentTimestamp,
                          source: 'manual',
                          userRef: currentUserReference,
                        ));
                    logFirebaseEvent('Button_google_analytics_event');
                    logFirebaseEvent('assignment_created');
                    logFirebaseEvent('Button_bottom_sheet');
                    Navigator.pop(context);
                    logFirebaseEvent('Button_show_snack_bar');
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Assignment Added!',
                          style: FlutterFlowTheme.of(context).buttons.override(
                                font: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .buttons
                                      .fontStyle,
                                ),
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 20.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .buttons
                                    .fontStyle,
                              ),
                        ),
                        duration: Duration(milliseconds: 4000),
                        backgroundColor: FlutterFlowTheme.of(context).primary,
                      ),
                    );
                  } else {
                    logFirebaseEvent('Button_update_component_state');
                    _model.showValidationError = true;
                    safeSetState(() {});
                  }
                },
                text: 'Add Assignment',
                icon: Icon(
                  Icons.add,
                  size: 24.0,
                ),
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 70.0,
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconColor: FlutterFlowTheme.of(context).secondaryText,
                  color: FlutterFlowTheme.of(context).secondary,
                  textStyle: FlutterFlowTheme.of(context).buttons.override(
                        font: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontStyle:
                              FlutterFlowTheme.of(context).buttons.fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                        fontStyle:
                            FlutterFlowTheme.of(context).buttons.fontStyle,
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).accent1,
                  ),
                  borderRadius: BorderRadius.circular(24.0),
                ),
              ),
            ),
            if (_model.showValidationError == true)
              Text(
                'Please enter a title, course, and due date.',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).buttons.override(
                      font: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontStyle:
                            FlutterFlowTheme.of(context).buttons.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).error,
                      fontSize: 20.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                      fontStyle: FlutterFlowTheme.of(context).buttons.fontStyle,
                    ),
              ),
          ].divide(SizedBox(height: 12.0)),
        ),
      ),
    );
  }
}

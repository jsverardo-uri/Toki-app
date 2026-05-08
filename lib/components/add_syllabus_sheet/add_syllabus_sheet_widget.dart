import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/n_p_s_survey_sheet/n_p_s_survey_sheet_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'add_syllabus_sheet_model.dart';
export 'add_syllabus_sheet_model.dart';

/// Bottom sheet for uploading syllabus for parsing
class AddSyllabusSheetWidget extends StatefulWidget {
  const AddSyllabusSheetWidget({super.key});

  @override
  State<AddSyllabusSheetWidget> createState() => _AddSyllabusSheetWidgetState();
}

class _AddSyllabusSheetWidgetState extends State<AddSyllabusSheetWidget> {
  late AddSyllabusSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddSyllabusSheetModel());

    _model.courseNameTextController ??= TextEditingController();
    _model.courseNameFocusNode ??= FocusNode();

    _model.syllabusTextTextController ??= TextEditingController();
    _model.syllabusTextFocusNode ??= FocusNode();

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
      height: 780.0,
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
          mainAxisAlignment: MainAxisAlignment.start,
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
                      logFirebaseEvent(
                          'ADD_SYLLABUS_SHEET_COMP_close_ICN_ON_TAP');
                      logFirebaseEvent('IconButton_bottom_sheet');
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            Text(
              'Upload a syllabus/course schedule or paste text in the box below. Toki will extract assignments and due dates automatically.',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).body.override(
                    font: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontStyle: FlutterFlowTheme.of(context).body.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                    fontStyle: FlutterFlowTheme.of(context).body.fontStyle,
                  ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              child: Container(
                width: double.infinity,
                child: TextFormField(
                  controller: _model.courseNameTextController,
                  focusNode: _model.courseNameFocusNode,
                  onChanged: (_) => EasyDebounce.debounce(
                    '_model.courseNameTextController',
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
                    hintText: 'Course name...',
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
                    suffixIcon: _model.courseNameTextController!.text.isNotEmpty
                        ? InkWell(
                            onTap: () async {
                              _model.courseNameTextController?.clear();
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
                  maxLength: 20,
                  maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  cursorColor: FlutterFlowTheme.of(context).primaryText,
                  enableInteractiveSelection: true,
                  validator: _model.courseNameTextControllerValidator
                      .asValidator(context),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              child: Container(
                width: double.infinity,
                child: TextFormField(
                  controller: _model.syllabusTextTextController,
                  focusNode: _model.syllabusTextFocusNode,
                  onChanged: (_) => EasyDebounce.debounce(
                    '_model.syllabusTextTextController',
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
                    hintText: 'Paste syllabus text or upload below...',
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
                        _model.syllabusTextTextController!.text.isNotEmpty
                            ? InkWell(
                                onTap: () async {
                                  _model.syllabusTextTextController?.clear();
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
                  validator: _model.syllabusTextTextControllerValidator
                      .asValidator(context),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              child: FFButtonWidget(
                onPressed: (_model.isParsing == true)
                    ? null
                    : () async {
                        logFirebaseEvent(
                            'ADD_SYLLABUS_SHEET_UPLOAD_SYLLABUS_BTN_O');
                        logFirebaseEvent('Button_upload_file_to_firebase');
                        final selectedFiles = await selectFiles(
                          allowedExtensions: ['pdf'],
                          multiFile: false,
                        );
                        if (selectedFiles != null) {
                          safeSetState(() =>
                              _model.isDataUploading_uploadDataL8t = true);
                          var selectedUploadedFiles = <FFUploadedFile>[];

                          var downloadUrls = <String>[];
                          try {
                            selectedUploadedFiles = selectedFiles
                                .map((m) => FFUploadedFile(
                                      name: m.storagePath.split('/').last,
                                      bytes: m.bytes,
                                      originalFilename: m.originalFilename,
                                    ))
                                .toList();

                            downloadUrls = (await Future.wait(
                              selectedFiles.map(
                                (f) async =>
                                    await uploadData(f.storagePath, f.bytes),
                              ),
                            ))
                                .where((u) => u != null)
                                .map((u) => u!)
                                .toList();
                          } finally {
                            _model.isDataUploading_uploadDataL8t = false;
                          }
                          if (selectedUploadedFiles.length ==
                                  selectedFiles.length &&
                              downloadUrls.length == selectedFiles.length) {
                            safeSetState(() {
                              _model.uploadedLocalFile_uploadDataL8t =
                                  selectedUploadedFiles.first;
                              _model.uploadedFileUrl_uploadDataL8t =
                                  downloadUrls.first;
                            });
                          } else {
                            safeSetState(() {});
                            return;
                          }
                        }

                        logFirebaseEvent('Button_update_component_state');
                        _model.uploadedSyllabusUrl =
                            _model.uploadedFileUrl_uploadDataL8t;
                        safeSetState(() {});
                      },
                text: 'Upload Syllabus',
                icon: Icon(
                  Icons.file_upload,
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
            if (_model.uploadedSyllabusUrl != null &&
                _model.uploadedSyllabusUrl != '')
              Text(
                'File uploaded and ready to parse',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).buttons.override(
                      font: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontStyle:
                            FlutterFlowTheme.of(context).buttons.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).primary,
                      fontSize: 20.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                      fontStyle: FlutterFlowTheme.of(context).buttons.fontStyle,
                    ),
              ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              child: FFButtonWidget(
                onPressed: (_model.isParsing == true)
                    ? null
                    : () async {
                        logFirebaseEvent(
                            'ADD_SYLLABUS_SHEET_PARSE_SYLLABUS_BTN_ON');
                        if (_model.uploadedSyllabusUrl != null &&
                            _model.uploadedSyllabusUrl != '') {
                          logFirebaseEvent('Button_update_component_state');
                          _model.showValidationError = false;
                          _model.isParsing = true;
                          safeSetState(() {});
                          logFirebaseEvent('Button_backend_call');
                          _model.apiResultnfc = await ParseSyllabusCall.call(
                            mode: 'file',
                            syllabusText: null,
                            fileUrl: _model.uploadedSyllabusUrl,
                            userRefPath: currentUserReference?.path,
                            courseName: _model.courseNameTextController.text,
                          );

                          if ((_model.apiResult30p?.succeeded ?? true)) {
                            logFirebaseEvent('Button_google_analytics_event');
                            logFirebaseEvent(
                              'syllabus_parsed',
                              parameters: {
                                'created_count': getJsonField(
                                  (_model.apiResultnfc?.jsonBody ?? ''),
                                  r'''$.created_count''',
                                ),
                              },
                            );
                            logFirebaseEvent('Button_update_component_state');
                            _model.isParsing = false;
                            safeSetState(() {});
                            if (!valueOrDefault<bool>(
                                currentUserDocument?.hasSeenNps, false)) {
                              logFirebaseEvent('Button_wait__delay');
                              await Future.delayed(
                                Duration(
                                  milliseconds: 1000,
                                ),
                              );
                              logFirebaseEvent('Button_backend_call');

                              await currentUserReference!
                                  .update(createUsersRecordData(
                                hasSeenNps: true,
                              ));
                              logFirebaseEvent('Button_alert_dialog');
                              var confirmDialogResponse =
                                  await showDialog<bool>(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text(
                                                'Would you like to give feedback?'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, false),
                                                child: Text('Not now'),
                                              ),
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, true),
                                                child: Text('Give feedback'),
                                              ),
                                            ],
                                          );
                                        },
                                      ) ??
                                      false;
                              if (confirmDialogResponse) {
                                logFirebaseEvent('Button_bottom_sheet');
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: NPSSurveySheetWidget(),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              }
                            }
                            logFirebaseEvent('Button_bottom_sheet');
                            Navigator.pop(context);
                            logFirebaseEvent('Button_show_snack_bar');
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Added Assignments!',
                                  style: FlutterFlowTheme.of(context)
                                      .buttons
                                      .override(
                                        font: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .buttons
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .buttons
                                            .fontStyle,
                                      ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).primary,
                              ),
                            );
                          } else {
                            logFirebaseEvent('Button_update_component_state');
                            _model.isParsing = false;
                            safeSetState(() {});
                            logFirebaseEvent('Button_bottom_sheet');
                            Navigator.pop(context);
                            logFirebaseEvent('Button_show_snack_bar');
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Error!',
                                  style: FlutterFlowTheme.of(context)
                                      .buttons
                                      .override(
                                        font: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .buttons
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .buttons
                                            .fontStyle,
                                      ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).error,
                              ),
                            );
                          }
                        } else if (_model.syllabusTextTextController.text != '') {
                          logFirebaseEvent('Button_update_component_state');
                          _model.showValidationError = false;
                          _model.isParsing = true;
                          safeSetState(() {});
                          logFirebaseEvent('Button_backend_call');
                          _model.apiResult30p = await ParseSyllabusCall.call(
                            syllabusText:
                                _model.syllabusTextTextController.text,
                            userRefPath: currentUserReference?.path,
                            mode: 'text',
                            fileUrl: null,
                            courseName: _model.courseNameTextController.text,
                          );

                          if ((_model.apiResult30p?.succeeded ?? true)) {
                            logFirebaseEvent('Button_google_analytics_event');
                            logFirebaseEvent(
                              'syllabus_parsed',
                              parameters: {
                                'created_count': getJsonField(
                                  (_model.apiResult30p?.jsonBody ?? ''),
                                  r'''$.created_count''',
                                ),
                              },
                            );
                            logFirebaseEvent('Button_update_component_state');
                            _model.isParsing = false;
                            safeSetState(() {});
                            if (!valueOrDefault<bool>(
                                currentUserDocument?.hasSeenNps, false)) {
                              logFirebaseEvent('Button_wait__delay');
                              await Future.delayed(
                                Duration(
                                  milliseconds: 1000,
                                ),
                              );
                              logFirebaseEvent('Button_backend_call');

                              await currentUserReference!
                                  .update(createUsersRecordData(
                                hasSeenNps: true,
                              ));
                              logFirebaseEvent('Button_alert_dialog');
                              var confirmDialogResponse =
                                  await showDialog<bool>(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text(
                                                'Would you like to give feedback?'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, false),
                                                child: Text('Not now'),
                                              ),
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, true),
                                                child: Text('Give feedback'),
                                              ),
                                            ],
                                          );
                                        },
                                      ) ??
                                      false;
                              if (confirmDialogResponse) {
                                logFirebaseEvent('Button_bottom_sheet');
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: NPSSurveySheetWidget(),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              }
                            }
                            logFirebaseEvent('Button_bottom_sheet');
                            Navigator.pop(context);
                            logFirebaseEvent('Button_show_snack_bar');
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Added Assignments!',
                                  style: FlutterFlowTheme.of(context)
                                      .buttons
                                      .override(
                                        font: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .buttons
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .buttons
                                            .fontStyle,
                                      ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).primary,
                              ),
                            );
                          } else {
                            logFirebaseEvent('Button_update_component_state');
                            _model.isParsing = false;
                            safeSetState(() {});
                            logFirebaseEvent('Button_bottom_sheet');
                            Navigator.pop(context);
                            logFirebaseEvent('Button_show_snack_bar');
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Error!',
                                  style: FlutterFlowTheme.of(context)
                                      .buttons
                                      .override(
                                        font: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .buttons
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .buttons
                                            .fontStyle,
                                      ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).error,
                              ),
                            );
                          }
                        } else {
                          logFirebaseEvent('Button_update_component_state');
                          _model.showValidationError = true;
                          safeSetState(() {});
                        }

                        safeSetState(() {});
                      },
                text: 'Parse Syllabus',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 70.0,
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
                'Please paste syllabus text or upload a file.',
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
          ].divide(SizedBox(height: 24.0)),
        ),
      ),
    );
  }
}

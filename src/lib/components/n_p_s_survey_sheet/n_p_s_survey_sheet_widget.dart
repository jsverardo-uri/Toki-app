import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'n_p_s_survey_sheet_model.dart';
export 'n_p_s_survey_sheet_model.dart';

/// Survey sheet for user feedback
class NPSSurveySheetWidget extends StatefulWidget {
  const NPSSurveySheetWidget({super.key});

  @override
  State<NPSSurveySheetWidget> createState() => _NPSSurveySheetWidgetState();
}

class _NPSSurveySheetWidgetState extends State<NPSSurveySheetWidget> {
  late NPSSurveySheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NPSSurveySheetModel());

    _model.additionalFeedbackTextController ??= TextEditingController();
    _model.additionalFeedbackFocusNode ??= FocusNode();

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
      height: 530.0,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 6.0, 0.0, 0.0),
                  child: Text(
                    'Feedback',
                    style: FlutterFlowTheme.of(context).titles.override(
                          font: GoogleFonts.roboto(
                            fontWeight: FontWeight.w600,
                            fontStyle:
                                FlutterFlowTheme.of(context).titles.fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 32.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).titles.fontStyle,
                        ),
                  ),
                ),
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
                          'N_P_S_SURVEY_SHEET_COMP_close_ICN_ON_TAP');
                      logFirebaseEvent('IconButton_bottom_sheet');
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
              child: Text(
                'How likely are you to recommend Toki?',
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).subTitles.override(
                      font: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontStyle:
                            FlutterFlowTheme.of(context).subTitles.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 24.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                      fontStyle:
                          FlutterFlowTheme.of(context).subTitles.fontStyle,
                    ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                    child: Text(
                      '0 = Not Likely, 10 = Very Likely',
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
                Text(
                  'Score: ${_model.selectedScore.toString()}',
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
                ),
              ],
            ),
            Slider(
              activeColor: FlutterFlowTheme.of(context).primary,
              inactiveColor: FlutterFlowTheme.of(context).accent1,
              min: 0.0,
              max: 10.0,
              value: _model.sliderValue ??= _model.selectedScore,
              label: _model.sliderValue?.toStringAsFixed(2),
              divisions: 10,
              onChanged: (newValue) async {
                newValue = double.parse(newValue.toStringAsFixed(2));
                safeSetState(() => _model.sliderValue = newValue);
                logFirebaseEvent('N_P_S_SURVEY_SHEET_Slider_212zfq93_ON_FO');
                logFirebaseEvent('Slider_update_component_state');
                _model.selectedScore = _model.sliderValue!;
                safeSetState(() {});
              },
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              child: Container(
                width: double.infinity,
                child: TextFormField(
                  controller: _model.additionalFeedbackTextController,
                  focusNode: _model.additionalFeedbackFocusNode,
                  onChanged: (_) => EasyDebounce.debounce(
                    '_model.additionalFeedbackTextController',
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
                    hintText: 'Additional feedback (optional)',
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
                            .additionalFeedbackTextController!.text.isNotEmpty
                        ? InkWell(
                            onTap: () async {
                              _model.additionalFeedbackTextController?.clear();
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
                  validator: _model.additionalFeedbackTextControllerValidator
                      .asValidator(context),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 16.0, 12.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('N_P_S_SURVEY_SHEET_SUBMIT_BTN_ON_TAP');
                  logFirebaseEvent('Button_backend_call');

                  await NpsResponsesRecord.collection
                      .doc()
                      .set(createNpsResponsesRecordData(
                        score: functions.sliderCoversion(_model.selectedScore),
                        userRef: currentUserReference,
                        createdTime: getCurrentTimestamp,
                        feedback: _model.additionalFeedbackTextController.text,
                      ));
                  logFirebaseEvent('Button_google_analytics_event');
                  logFirebaseEvent(
                    'nps_submitted',
                    parameters: {
                      'score_': _model.selectedScore,
                    },
                  );
                  logFirebaseEvent('Button_bottom_sheet');
                  Navigator.pop(context);
                  logFirebaseEvent('Button_show_snack_bar');
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Thank you for your feedback!',
                        style: FlutterFlowTheme.of(context).buttons.override(
                              font: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .buttons
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).secondaryText,
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
                },
                text: 'Submit',
                icon: Icon(
                  Icons.check_circle_outline_sharp,
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
          ].divide(SizedBox(height: 12.0)),
        ),
      ),
    );
  }
}

import '/flutter_flow/flutter_flow_util.dart';
import 'n_p_s_survey_sheet_widget.dart' show NPSSurveySheetWidget;
import 'package:flutter/material.dart';

class NPSSurveySheetModel extends FlutterFlowModel<NPSSurveySheetWidget> {
  ///  Local state fields for this component.

  double selectedScore = 5.0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Slider widget.
  double? sliderValue;
  // State field(s) for additionalFeedback widget.
  FocusNode? additionalFeedbackFocusNode;
  TextEditingController? additionalFeedbackTextController;
  String? Function(BuildContext, String?)?
      additionalFeedbackTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    additionalFeedbackFocusNode?.dispose();
    additionalFeedbackTextController?.dispose();
  }
}

import '/flutter_flow/flutter_flow_util.dart';
import 'add_assignment_sheet_widget.dart' show AddAssignmentSheetWidget;
import 'package:flutter/material.dart';

class AddAssignmentSheetModel
    extends FlutterFlowModel<AddAssignmentSheetWidget> {
  ///  Local state fields for this component.

  DateTime? selectedDueDate;

  bool showValidationError = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for assignmentName widget.
  FocusNode? assignmentNameFocusNode;
  TextEditingController? assignmentNameTextController;
  String? Function(BuildContext, String?)?
      assignmentNameTextControllerValidator;
  // State field(s) for assignmentDetails widget.
  FocusNode? assignmentDetailsFocusNode;
  TextEditingController? assignmentDetailsTextController;
  String? Function(BuildContext, String?)?
      assignmentDetailsTextControllerValidator;
  // State field(s) for assignmentClass widget.
  FocusNode? assignmentClassFocusNode;
  TextEditingController? assignmentClassTextController;
  String? Function(BuildContext, String?)?
      assignmentClassTextControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    assignmentNameFocusNode?.dispose();
    assignmentNameTextController?.dispose();

    assignmentDetailsFocusNode?.dispose();
    assignmentDetailsTextController?.dispose();

    assignmentClassFocusNode?.dispose();
    assignmentClassTextController?.dispose();
  }
}

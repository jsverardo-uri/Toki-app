import '/flutter_flow/flutter_flow_util.dart';
import 'assignment_details_sheet_widget.dart' show AssignmentDetailsSheetWidget;
import 'package:flutter/material.dart';

class AssignmentDetailsSheetModel
    extends FlutterFlowModel<AssignmentDetailsSheetWidget> {
  ///  Local state fields for this component.

  bool isEditing = false;

  DateTime? selectedDueDate;

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

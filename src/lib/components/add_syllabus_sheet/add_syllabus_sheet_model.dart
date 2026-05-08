import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_syllabus_sheet_widget.dart' show AddSyllabusSheetWidget;
import 'package:flutter/material.dart';

class AddSyllabusSheetModel extends FlutterFlowModel<AddSyllabusSheetWidget> {
  ///  Local state fields for this component.

  bool showValidationError = false;

  String? uploadedSyllabusUrl;

  bool isParsing = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for courseName widget.
  FocusNode? courseNameFocusNode;
  TextEditingController? courseNameTextController;
  String? Function(BuildContext, String?)? courseNameTextControllerValidator;
  // State field(s) for syllabusText widget.
  FocusNode? syllabusTextFocusNode;
  TextEditingController? syllabusTextTextController;
  String? Function(BuildContext, String?)? syllabusTextTextControllerValidator;
  bool isDataUploading_uploadDataL8t = false;
  FFUploadedFile uploadedLocalFile_uploadDataL8t =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataL8t = '';

  // Stores action output result for [Backend Call - API (Parse Syllabus)] action in Button widget.
  ApiCallResponse? apiResultnfc;
  // Stores action output result for [Backend Call - API (Parse Syllabus)] action in Button widget.
  ApiCallResponse? apiResult30p;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    courseNameFocusNode?.dispose();
    courseNameTextController?.dispose();

    syllabusTextFocusNode?.dispose();
    syllabusTextTextController?.dispose();
  }
}

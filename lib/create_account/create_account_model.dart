import '/components/app_logo_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'create_account_widget.dart' show CreateAccountWidget;
import 'package:flutter/material.dart';

class CreateAccountModel extends FlutterFlowModel<CreateAccountWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppLogoHeader component.
  late AppLogoHeaderModel appLogoHeaderModel;
  // State field(s) for setupName widget.
  FocusNode? setupNameFocusNode;
  TextEditingController? setupNameTextController;
  String? Function(BuildContext, String?)? setupNameTextControllerValidator;
  // State field(s) for setupSchool widget.
  FocusNode? setupSchoolFocusNode;
  TextEditingController? setupSchoolTextController;
  String? Function(BuildContext, String?)? setupSchoolTextControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {
    appLogoHeaderModel = createModel(context, () => AppLogoHeaderModel());
  }

  @override
  void dispose() {
    appLogoHeaderModel.dispose();
    setupNameFocusNode?.dispose();
    setupNameTextController?.dispose();

    setupSchoolFocusNode?.dispose();
    setupSchoolTextController?.dispose();
  }
}

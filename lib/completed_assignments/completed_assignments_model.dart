import '/components/app_logo_header_widget.dart';
import '/components/assignment_tile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'completed_assignments_widget.dart' show CompletedAssignmentsWidget;
import 'package:flutter/material.dart';

class CompletedAssignmentsModel
    extends FlutterFlowModel<CompletedAssignmentsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppLogoHeader component.
  late AppLogoHeaderModel appLogoHeaderModel;
  // Model for assignmentTile component.
  late AssignmentTileModel assignmentTileModel;

  @override
  void initState(BuildContext context) {
    appLogoHeaderModel = createModel(context, () => AppLogoHeaderModel());
    assignmentTileModel = createModel(context, () => AssignmentTileModel());
  }

  @override
  void dispose() {
    appLogoHeaderModel.dispose();
    assignmentTileModel.dispose();
  }
}

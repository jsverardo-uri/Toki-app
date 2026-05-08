import '/components/app_logo_header/app_logo_header_widget.dart';
import '/components/assignment_tile/assignment_tile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppLogoHeader component.
  late AppLogoHeaderModel appLogoHeaderModel;
  // Models for AssignmentTile dynamic component.
  late FlutterFlowDynamicModels<AssignmentTileModel> assignmentTileModels;

  @override
  void initState(BuildContext context) {
    appLogoHeaderModel = createModel(context, () => AppLogoHeaderModel());
    assignmentTileModels =
        FlutterFlowDynamicModels(() => AssignmentTileModel());
  }

  @override
  void dispose() {
    appLogoHeaderModel.dispose();
    assignmentTileModels.dispose();
  }
}

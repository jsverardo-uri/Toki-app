import '/components/app_logo_header_widget.dart';
import '/components/assignment_tile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
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

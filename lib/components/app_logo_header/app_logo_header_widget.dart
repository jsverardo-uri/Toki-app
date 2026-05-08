import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'app_logo_header_model.dart';
export 'app_logo_header_model.dart';

/// Page header containing Toki logo
class AppLogoHeaderWidget extends StatefulWidget {
  const AppLogoHeaderWidget({super.key});

  @override
  State<AppLogoHeaderWidget> createState() => _AppLogoHeaderWidgetState();
}

class _AppLogoHeaderWidgetState extends State<AppLogoHeaderWidget> {
  late AppLogoHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppLogoHeaderModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, -1.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
        child: Container(
          width: double.infinity,
          height: 72.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primary,
            image: DecorationImage(
              fit: BoxFit.contain,
              image: Image.asset(
                'assets/images/Toki_Logo_White_(Small).png',
              ).image,
            ),
          ),
        ),
      ),
    );
  }
}

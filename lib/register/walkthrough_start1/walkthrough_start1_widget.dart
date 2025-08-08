import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'walkthrough_start1_model.dart';
export 'walkthrough_start1_model.dart';

class WalkthroughStart1Widget extends StatefulWidget {
  const WalkthroughStart1Widget({super.key});

  @override
  State<WalkthroughStart1Widget> createState() =>
      _WalkthroughStart1WidgetState();
}

class _WalkthroughStart1WidgetState extends State<WalkthroughStart1Widget> {
  late WalkthroughStart1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WalkthroughStart1Model());
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
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
        child: Text(
          'Keep track of the current \nbalance status',
          textAlign: TextAlign.start,
          style: FlutterFlowTheme.of(context).labelMedium.override(
                fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                color: FlutterFlowTheme.of(context).info,
                fontSize: 17.0,
                letterSpacing: 0.0,
                lineHeight: 1.5,
                useGoogleFonts:
                    !FlutterFlowTheme.of(context).labelMediumIsCustom,
              ),
        ),
      ),
    );
  }
}

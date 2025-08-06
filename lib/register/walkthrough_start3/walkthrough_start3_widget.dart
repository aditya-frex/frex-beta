import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'walkthrough_start3_model.dart';
export 'walkthrough_start3_model.dart';

class WalkthroughStart3Widget extends StatefulWidget {
  const WalkthroughStart3Widget({super.key});

  @override
  State<WalkthroughStart3Widget> createState() =>
      _WalkthroughStart3WidgetState();
}

class _WalkthroughStart3WidgetState extends State<WalkthroughStart3Widget> {
  late WalkthroughStart3Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WalkthroughStart3Model());
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
        padding: EdgeInsetsDirectional.fromSTEB(25.0, 15.0, 25.0, 0.0),
        child: Text(
          'Start sending money to your close friends and get a 5% bonus on the next payment',
          textAlign: TextAlign.start,
          style: FlutterFlowTheme.of(context).labelMedium.override(
                font: GoogleFonts.openSans(
                  fontWeight:
                      FlutterFlowTheme.of(context).labelMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).info,
                fontSize: 17.0,
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                lineHeight: 1.5,
              ),
        ),
      ),
    );
  }
}

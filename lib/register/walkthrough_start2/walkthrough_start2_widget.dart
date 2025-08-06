import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'walkthrough_start2_model.dart';
export 'walkthrough_start2_model.dart';

class WalkthroughStart2Widget extends StatefulWidget {
  const WalkthroughStart2Widget({super.key});

  @override
  State<WalkthroughStart2Widget> createState() =>
      _WalkthroughStart2WidgetState();
}

class _WalkthroughStart2WidgetState extends State<WalkthroughStart2Widget> {
  late WalkthroughStart2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WalkthroughStart2Model());
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
          'Keep track of every transaction and plan your expenses',
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

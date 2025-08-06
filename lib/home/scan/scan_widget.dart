import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'scan_model.dart';
export 'scan_model.dart';

class ScanWidget extends StatefulWidget {
  const ScanWidget({super.key});

  static String routeName = 'scan';
  static String routePath = '/scan';

  @override
  State<ScanWidget> createState() => _ScanWidgetState();
}

class _ScanWidgetState extends State<ScanWidget> {
  late ScanModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScanModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 250.0,
                  height: 250.0,
                  child: custom_widgets.TriggerCameraOverlay(
                    width: 250.0,
                    height: 250.0,
                    cardType: 0,
                    infoText: 'Photo of your ID card',
                    buttonText: 'Button',
                    buttonColor: FlutterFlowTheme.of(context).primary,
                    borderRadius: 12.0,
                    padding: 12.0,
                    rotateCamera: false,
                    onCapture: (uploadedId) async {
                      FFAppState().ScanImage = '';
                      safeSetState(() {});
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

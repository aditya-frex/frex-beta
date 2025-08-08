import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:lottie/lottie.dart';
import 'wait_pay_model.dart';
export 'wait_pay_model.dart';

class WaitPayWidget extends StatefulWidget {
  const WaitPayWidget({
    super.key,
    this.data,
    bool? fromQR,
  }) : this.fromQR = fromQR ?? false;

  final TransactionsRecord? data;
  final bool fromQR;

  @override
  State<WaitPayWidget> createState() => _WaitPayWidgetState();
}

class _WaitPayWidgetState extends State<WaitPayWidget> {
  late WaitPayModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WaitPayModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.quryResult = await queryTransactionsRecordOnce(
        singleRecord: true,
      ).then((s) => s.firstOrNull);
      if (widget.fromQR) {
        await Future.delayed(
          Duration(
            milliseconds: 4000,
          ),
        );

        context.pushNamed(
          SendMoneyWidget.routeName,
          queryParameters: {
            'data': serializeParam(
              _model.quryResult,
              ParamType.Document,
            ),
          }.withoutNulls,
          extra: <String, dynamic>{
            'data': _model.quryResult,
          },
        );
      } else {
        await Future.delayed(
          Duration(
            milliseconds: 4000,
          ),
        );

        context.pushNamed(
          SendMoneyWidget.routeName,
          queryParameters: {
            'data': serializeParam(
              widget.data,
              ParamType.Document,
            ),
          }.withoutNulls,
          extra: <String, dynamic>{
            'data': widget.data,
          },
        );
      }
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
        child: Container(
          width: 200.0,
          height: 200.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(12.0),
          ),
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Please wait',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleLargeFamily,
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).titleLargeIsCustom,
                      ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                  child: Lottie.asset(
                    'assets/jsons/Animation_-_1725945587641_(1).json',
                    width: 100.0,
                    height: 100.0,
                    fit: BoxFit.contain,
                    animate: true,
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

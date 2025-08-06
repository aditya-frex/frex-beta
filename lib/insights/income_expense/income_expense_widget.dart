import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'income_expense_model.dart';
export 'income_expense_model.dart';

class IncomeExpenseWidget extends StatefulWidget {
  const IncomeExpenseWidget({super.key});

  @override
  State<IncomeExpenseWidget> createState() => _IncomeExpenseWidgetState();
}

class _IncomeExpenseWidgetState extends State<IncomeExpenseWidget>
    with TickerProviderStateMixin {
  late IncomeExpenseModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IncomeExpenseModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.isStart = true;
      safeSetState(() {});
    });

    animationsMap.addAll({
      'columnOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'rowOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'columnOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'rowOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Container(
            width: 220.0,
            height: 120.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondary,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Income',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  font: GoogleFonts.openSans(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 0.0, 0.0),
                            child: Text(
                              '+5%',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.openSans(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).success,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Text(
                          '\$3,564.40',
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                font: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontStyle,
                                ),
                                fontSize: 15.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .fontStyle,
                              ),
                        ),
                      ),
                    ],
                  ).animateOnPageLoad(
                      animationsMap['columnOnPageLoadAnimation1']!),
                  Opacity(
                    opacity: 0.9,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        AnimatedContainer(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                          width: 7.0,
                          height: _model.isStart ? 20.0 : 10.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).success,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        AnimatedContainer(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                          width: 7.0,
                          height: _model.isStart ? 30.0 : 10.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).success,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        AnimatedContainer(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                          width: 7.0,
                          height: _model.isStart ? 35.0 : 10.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).success,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        AnimatedContainer(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                          width: 7.0,
                          height: _model.isStart ? 15.0 : 10.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).success,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        AnimatedContainer(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                          width: 7.0,
                          height: _model.isStart ? 25.0 : 10.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).success,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        AnimatedContainer(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                          width: 7.0,
                          height: _model.isStart ? 20.0 : 10.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).success,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        AnimatedContainer(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                          width: 7.0,
                          height: _model.isStart ? 30.0 : 10.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).success,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        AnimatedContainer(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                          width: 7.0,
                          height: _model.isStart ? 25.0 : 10.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).success,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        AnimatedContainer(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                          width: 7.0,
                          height: _model.isStart ? 20.0 : 10.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).success,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        AnimatedContainer(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                          width: 7.0,
                          height: _model.isStart ? 35.0 : 10.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).success,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        AnimatedContainer(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                          width: 7.0,
                          height: _model.isStart ? 30.0 : 10.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).success,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ],
                    ).animateOnPageLoad(
                        animationsMap['rowOnPageLoadAnimation1']!),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: 220.0,
            height: 120.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondary,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Expense',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  font: GoogleFonts.openSans(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 0.0, 0.0),
                            child: Text(
                              '-3.2%',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.openSans(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).error,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Text(
                          '\$2,912.45',
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                font: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontStyle,
                                ),
                                fontSize: 15.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .fontStyle,
                              ),
                        ),
                      ),
                    ],
                  ).animateOnPageLoad(
                      animationsMap['columnOnPageLoadAnimation2']!),
                  Opacity(
                    opacity: 0.9,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        AnimatedContainer(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                          width: 7.0,
                          height: _model.isStart ? 35.0 : 10.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).error,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        Container(
                          width: 7.0,
                          height: 10.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).error,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        Container(
                          width: 7.0,
                          height: _model.isStart ? 20.0 : 10.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).error,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        Container(
                          width: 7.0,
                          height: _model.isStart ? 25.0 : 10.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).error,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        Container(
                          width: 7.0,
                          height: _model.isStart ? 15.0 : 10.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).error,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        Container(
                          width: 7.0,
                          height: _model.isStart ? 29.0 : 10.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).error,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        Container(
                          width: 7.0,
                          height: _model.isStart ? 27.0 : 10.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).error,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        Container(
                          width: 7.0,
                          height: _model.isStart ? 35.0 : 10.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).error,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        Container(
                          width: 7.0,
                          height: _model.isStart ? 12.0 : 10.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).error,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        Container(
                          width: 7.0,
                          height: _model.isStart ? 20.0 : 10.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).error,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        Container(
                          width: 7.0,
                          height: _model.isStart ? 31.0 : 10.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).error,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ],
                    ).animateOnPageLoad(
                        animationsMap['rowOnPageLoadAnimation2']!),
                  ),
                ],
              ),
            ),
          ),
        ),
      ].divide(SizedBox(width: 12.0)),
    );
  }
}

import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/top_up/dialog/dialog_widget.dart';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'withdraw_method_model.dart';
export 'withdraw_method_model.dart';

class WithdrawMethodWidget extends StatefulWidget {
  const WithdrawMethodWidget({super.key});

  static String routeName = 'WithdrawMethod';
  static String routePath = '/withdrawMethod';

  @override
  State<WithdrawMethodWidget> createState() => _WithdrawMethodWidgetState();
}

class _WithdrawMethodWidgetState extends State<WithdrawMethodWidget> {
  late WithdrawMethodModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WithdrawMethodModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(6.0, 6.0, 6.0, 6.0),
            child: FlutterFlowIconButton(
              borderColor: FlutterFlowTheme.of(context).transparent,
              borderRadius: 30.0,
              borderWidth: 0.0,
              buttonSize: 40.0,
              fillColor: FlutterFlowTheme.of(context).transparent,
              icon: Icon(
                FFIcons.karrowLeftMD,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 28.0,
              ),
              onPressed: () async {
                await action_blocks.wait(context);
                context.safePop();
              },
            ),
          ),
          title: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              FFAppState().selectedPayment = PaymentStruct();
              safeSetState(() {});
            },
            child: Text(
              'Withdraw To',
              style: FlutterFlowTheme.of(context).titleMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                    letterSpacing: 0.0,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).titleMediumIsCustom,
                  ),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(6.0, 6.0, 6.0, 6.0),
              child: FlutterFlowIconButton(
                borderColor: FlutterFlowTheme.of(context).transparent,
                borderRadius: 30.0,
                borderWidth: 0.0,
                buttonSize: 40.0,
                fillColor: FlutterFlowTheme.of(context).transparent,
                icon: Icon(
                  FFIcons.kplusLg,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 25.0,
                ),
                onPressed: () async {
                  await action_blocks.wait(context);

                  context.pushNamed(
                    PaymentMethod2Widget.routeName,
                    queryParameters: {
                      'fromWithdraw': serializeParam(
                        true,
                        ParamType.bool,
                      ),
                    }.withoutNulls,
                  );
                },
              ),
            ),
          ],
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
            ),
          ),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Builder(
                builder: (context) {
                  final paymentss = FFAppState().paymentMethod.toList();

                  return ListView.separated(
                    padding: EdgeInsets.fromLTRB(
                      0,
                      15.0,
                      0,
                      15.0,
                    ),
                    scrollDirection: Axis.vertical,
                    itemCount: paymentss.length,
                    separatorBuilder: (_, __) => SizedBox(height: 15.0),
                    itemBuilder: (context, paymentssIndex) {
                      final paymentssItem = paymentss[paymentssIndex];
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 0.0, 15.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().selectedPayment = paymentssItem;
                            safeSetState(() {});
                          },
                          child: Container(
                            width: double.infinity,
                            height: 80.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: valueOrDefault<Color>(
                                  FFAppState().selectedPayment.position ==
                                          paymentssIndex
                                      ? FlutterFlowTheme.of(context).greenWhite
                                      : FlutterFlowTheme.of(context).accent1,
                                  FlutterFlowTheme.of(context).greenWhite,
                                ),
                                width: 2.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 55.0,
                                        height: 55.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .transparent,
                                          image: DecorationImage(
                                            fit: BoxFit.contain,
                                            image: Image.network(
                                              valueOrDefault<String>(
                                                paymentssItem.img,
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/datinger-tosywk/assets/jxf6w6zbxz35/image_2024-09-04_06-37-19.png',
                                              ),
                                            ).image,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          paymentssItem.title,
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmallIsCustom,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    FFIcons.kcheck,
                                    color: valueOrDefault<Color>(
                                      FFAppState().selectedPayment.position ==
                                              paymentssIndex
                                          ? FlutterFlowTheme.of(context)
                                              .greenWhite
                                          : FlutterFlowTheme.of(context)
                                              .transparent,
                                      FlutterFlowTheme.of(context).greenWhite,
                                    ),
                                    size: 33.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            Builder(
              builder: (context) => Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 20.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed(WithdrawNowWidget.routeName);
                                    },
                  text: 'Continue',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 48.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelLargeFamily,
                          color: FlutterFlowTheme.of(context).tertiary,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).labelLargeIsCustom,
                        ),
                    elevation: 0.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  showLoadingIndicator: false,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

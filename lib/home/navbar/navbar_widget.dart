import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/send_to/q_r_scan/q_r_scan_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'navbar_model.dart';
export 'navbar_model.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({
    super.key,
    required this.pages,
  });

  final int? pages;

  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  late NavbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavbarModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().navbar == 3) {
        _model.number = 3;
        safeSetState(() {});
      } else if (FFAppState().navbar == 0) {
        _model.number = 0;
        safeSetState(() {});
      } else if (FFAppState().navbar == 4) {
        _model.number = 4;
        safeSetState(() {});
      } else {
        _model.number = 1;
        safeSetState(() {});
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
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).backdropBack,
          boxShadow: [
            BoxShadow(
              blurRadius: 10.0,
              color: Color(0x1B000000),
              offset: Offset(
                0.0,
                0.0,
              ),
            )
          ],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(0.0),
            topRight: Radius.circular(0.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.goNamed(
                      AHomeWidget.routeName,
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );

                    FFAppState().navbar = 0;
                    safeSetState(() {});
                    _model.number = 0;
                    safeSetState(() {});
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        curve: Curves.easeInOut,
                        width: valueOrDefault<double>(
                          _model.number == 0 ? 52.0 : 30.0,
                          52.0,
                        ),
                        height: 30.0,
                        decoration: BoxDecoration(
                          color: valueOrDefault<Color>(
                            widget.pages == 0
                                ? FlutterFlowTheme.of(context).secondary
                                : FlutterFlowTheme.of(context).transparent,
                            FlutterFlowTheme.of(context).secondary,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (widget.pages != 0)
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  FFIcons
                                      .khome18dp000000FILL0Wght400GRAD0Opsz20,
                                  color: valueOrDefault<Color>(
                                    widget.pages == 0
                                        ? FlutterFlowTheme.of(context)
                                            .greenWhite
                                        : FlutterFlowTheme.of(context).accent2,
                                    FlutterFlowTheme.of(context).greenWhite,
                                  ),
                                  size: 25.0,
                                ),
                              ),
                            if (widget.pages == 0)
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  FFIcons
                                      .khome18dp000000FILL1Wght400GRAD0Opsz20,
                                  color: valueOrDefault<Color>(
                                    widget.pages == 0
                                        ? FlutterFlowTheme.of(context)
                                            .greenWhite
                                        : FlutterFlowTheme.of(context).accent2,
                                    FlutterFlowTheme.of(context).greenWhite,
                                  ),
                                  size: 25.0,
                                ),
                              ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                        child: Text(
                          'Home',
                          style: FlutterFlowTheme.of(context)
                              .labelSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelSmallFamily,
                                color: valueOrDefault<Color>(
                                  widget.pages == 0
                                      ? FlutterFlowTheme.of(context).primaryText
                                      : FlutterFlowTheme.of(context).accent2,
                                  FlutterFlowTheme.of(context).primaryText,
                                ),
                                fontSize: 13.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .labelSmallIsCustom,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.goNamed(
                      AContactsWidget.routeName,
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );

                    FFAppState().navbar = 1;
                    safeSetState(() {});
                    _model.number = 1;
                    safeSetState(() {});
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        curve: Curves.easeInOut,
                        width: valueOrDefault<double>(
                          _model.number == 1 ? 52.0 : 30.0,
                          52.0,
                        ),
                        height: 30.0,
                        decoration: BoxDecoration(
                          color: valueOrDefault<Color>(
                            widget.pages == 1
                                ? FlutterFlowTheme.of(context).secondary
                                : FlutterFlowTheme.of(context).transparent,
                            FlutterFlowTheme.of(context).secondary,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (widget.pages != 1)
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  FFIcons
                                      .kgroup18dp000000FILL0Wght400GRAD0Opsz20,
                                  color: valueOrDefault<Color>(
                                    widget.pages == 1
                                        ? FlutterFlowTheme.of(context)
                                            .greenWhite
                                        : FlutterFlowTheme.of(context).accent2,
                                    FlutterFlowTheme.of(context).accent2,
                                  ),
                                  size: 25.0,
                                ),
                              ),
                            if (widget.pages == 1)
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  FFIcons
                                      .kgroup18dp000000FILL1Wght400GRAD0Opsz20,
                                  color: valueOrDefault<Color>(
                                    widget.pages == 1
                                        ? FlutterFlowTheme.of(context)
                                            .greenWhite
                                        : FlutterFlowTheme.of(context).accent2,
                                    FlutterFlowTheme.of(context).accent2,
                                  ),
                                  size: 25.0,
                                ),
                              ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                        child: Text(
                          'Contacs',
                          style: FlutterFlowTheme.of(context)
                              .labelSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelSmallFamily,
                                color: valueOrDefault<Color>(
                                  widget.pages == 1
                                      ? FlutterFlowTheme.of(context).primaryText
                                      : FlutterFlowTheme.of(context).accent2,
                                  FlutterFlowTheme.of(context).accent2,
                                ),
                                fontSize: 13.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .labelSmallIsCustom,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderRadius: 50.0,
                    buttonSize: 50.0,
                    fillColor: FlutterFlowTheme.of(context).primary,
                    icon: Icon(
                      FFIcons.kscan,
                      color: FlutterFlowTheme.of(context).tertiary,
                      size: 28.0,
                    ),
                    onPressed: () async {
                      await showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor:
                            FlutterFlowTheme.of(context).transparent,
                        barrierColor: FlutterFlowTheme.of(context).accent3,
                        enableDrag: false,
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding: MediaQuery.viewInsetsOf(context),
                            child: QRScanWidget(),
                          );
                        },
                      ).then((value) => safeSetState(() {}));
                    },
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.goNamed(
                      InsightsWidget.routeName,
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );

                    FFAppState().navbar = 3;
                    safeSetState(() {});
                    _model.number = 3;
                    _model.updatePage(() {});
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        curve: Curves.easeInOut,
                        width: valueOrDefault<double>(
                          _model.number == 3 ? 52.0 : 30.0,
                          52.0,
                        ),
                        height: 30.0,
                        decoration: BoxDecoration(
                          color: valueOrDefault<Color>(
                            widget.pages == 3
                                ? FlutterFlowTheme.of(context).secondary
                                : FlutterFlowTheme.of(context).transparent,
                            FlutterFlowTheme.of(context).secondary,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Icon(
                            FFIcons
                                .kmonitoring18dp000000FILL0Wght400GRAD0Opsz20,
                            color: valueOrDefault<Color>(
                              widget.pages == 3
                                  ? FlutterFlowTheme.of(context).greenWhite
                                  : FlutterFlowTheme.of(context).accent2,
                              FlutterFlowTheme.of(context).accent2,
                            ),
                            size: 25.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                        child: Text(
                          'Insights',
                          style: FlutterFlowTheme.of(context)
                              .labelSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelSmallFamily,
                                color: valueOrDefault<Color>(
                                  widget.pages == 3
                                      ? FlutterFlowTheme.of(context).primaryText
                                      : FlutterFlowTheme.of(context).accent2,
                                  FlutterFlowTheme.of(context).accent2,
                                ),
                                fontSize: 13.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .labelSmallIsCustom,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.goNamed(
                      ASettingsWidget.routeName,
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );

                    FFAppState().navbar = 4;
                    safeSetState(() {});
                    _model.number = 4;
                    safeSetState(() {});
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        curve: Curves.easeInOut,
                        width: valueOrDefault<double>(
                          _model.number == 4 ? 52.0 : 30.0,
                          52.0,
                        ),
                        height: 30.0,
                        decoration: BoxDecoration(
                          color: valueOrDefault<Color>(
                            widget.pages == 4
                                ? FlutterFlowTheme.of(context).secondary
                                : FlutterFlowTheme.of(context).transparent,
                            FlutterFlowTheme.of(context).secondary,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (widget.pages != 4)
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  FFIcons
                                      .ksettings18dp000000FILL0Wght400GRAD0Opsz20,
                                  color: valueOrDefault<Color>(
                                    widget.pages == 4
                                        ? FlutterFlowTheme.of(context)
                                            .greenWhite
                                        : FlutterFlowTheme.of(context).accent2,
                                    FlutterFlowTheme.of(context).accent2,
                                  ),
                                  size: 25.0,
                                ),
                              ),
                            if (widget.pages == 4)
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  FFIcons
                                      .ksettings18dp000000FILL1Wght400GRAD0Opsz20,
                                  color: valueOrDefault<Color>(
                                    widget.pages == 4
                                        ? FlutterFlowTheme.of(context)
                                            .greenWhite
                                        : FlutterFlowTheme.of(context).accent2,
                                    FlutterFlowTheme.of(context).accent2,
                                  ),
                                  size: 25.0,
                                ),
                              ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                        child: Text(
                          'Settings',
                          style: FlutterFlowTheme.of(context)
                              .labelSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelSmallFamily,
                                color: valueOrDefault<Color>(
                                  widget.pages == 4
                                      ? FlutterFlowTheme.of(context).primaryText
                                      : FlutterFlowTheme.of(context).accent2,
                                  FlutterFlowTheme.of(context).accent2,
                                ),
                                fontSize: 13.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .labelSmallIsCustom,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

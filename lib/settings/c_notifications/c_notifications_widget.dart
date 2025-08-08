import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'c_notifications_model.dart';
export 'c_notifications_model.dart';

class CNotificationsWidget extends StatefulWidget {
  const CNotificationsWidget({super.key});

  static String routeName = 'cNotifications';
  static String routePath = '/cNotifications';

  @override
  State<CNotificationsWidget> createState() => _CNotificationsWidgetState();
}

class _CNotificationsWidgetState extends State<CNotificationsWidget> {
  late CNotificationsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CNotificationsModel());
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
          title: Text(
            'Notifications',
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                  letterSpacing: 0.0,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).titleMediumIsCustom,
                ),
          ),
          actions: [],
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
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondary,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().Tab = 0;
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 100.0,
                                  height: 42.0,
                                  decoration: BoxDecoration(
                                    color: valueOrDefault<Color>(
                                      FFAppState().Tab == 0
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryBackground
                                          : FlutterFlowTheme.of(context)
                                              .transparent,
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      'Push Notifications',
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelLargeFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 15.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelLargeIsCustom,
                                          ),
                                    ),
                                  ),
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
                                  FFAppState().Tab = 1;
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 100.0,
                                  height: 42.0,
                                  decoration: BoxDecoration(
                                    color: valueOrDefault<Color>(
                                      FFAppState().Tab == 1
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryBackground
                                          : FlutterFlowTheme.of(context)
                                              .transparent,
                                      FlutterFlowTheme.of(context).transparent,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      'Email',
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelLargeFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 15.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelLargeIsCustom,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ].divide(SizedBox(width: 6.0)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              if (FFAppState().Tab == 0)
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Daily Reminder',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).labelLargeFamily,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .labelLargeIsCustom,
                            ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (FFAppState().Switch1) {
                            FFAppState().Switch1 = false;
                            safeSetState(() {});
                          } else {
                            FFAppState().Switch1 = true;
                            safeSetState(() {});
                          }

                          HapticFeedback.lightImpact();
                        },
                        child: Container(
                          width: 50.0,
                          height: 28.0,
                          decoration: BoxDecoration(
                            color: valueOrDefault<Color>(
                              FFAppState().Switch1 == true
                                  ? FlutterFlowTheme.of(context).alternate
                                  : FlutterFlowTheme.of(context).accent1,
                              FlutterFlowTheme.of(context).alternate,
                            ),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(
                                        valueOrDefault<double>(
                                          FFAppState().Switch1 == true
                                              ? 1.0
                                              : -1.0,
                                          0.0,
                                        ),
                                        0.0),
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 100),
                                      curve: Curves.easeInOut,
                                      width: 25.0,
                                      height: 25.0,
                                      decoration: BoxDecoration(
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              if (FFAppState().Tab == 0)
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 25.0, 15.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'New Content Alerts',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).labelLargeFamily,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .labelLargeIsCustom,
                            ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (FFAppState().Switch2) {
                            FFAppState().Switch2 = false;
                            safeSetState(() {});
                          } else {
                            FFAppState().Switch2 = true;
                            safeSetState(() {});
                          }

                          HapticFeedback.lightImpact();
                        },
                        child: Container(
                          width: 50.0,
                          height: 28.0,
                          decoration: BoxDecoration(
                            color: valueOrDefault<Color>(
                              FFAppState().Switch2 == true
                                  ? FlutterFlowTheme.of(context).alternate
                                  : FlutterFlowTheme.of(context).accent1,
                              FlutterFlowTheme.of(context).alternate,
                            ),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(
                                        valueOrDefault<double>(
                                          FFAppState().Switch2 == true
                                              ? 1.0
                                              : -1.0,
                                          0.0,
                                        ),
                                        0.0),
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 100),
                                      curve: Curves.easeInOut,
                                      width: 25.0,
                                      height: 25.0,
                                      decoration: BoxDecoration(
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 25.0, 15.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Subscription Renewal Reminders',
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelLargeFamily,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelLargeIsCustom,
                          ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (FFAppState().Switch3) {
                          FFAppState().Switch3 = false;
                          safeSetState(() {});
                        } else {
                          FFAppState().Switch3 = true;
                          safeSetState(() {});
                        }

                        HapticFeedback.lightImpact();
                      },
                      child: Container(
                        width: 50.0,
                        height: 28.0,
                        decoration: BoxDecoration(
                          color: valueOrDefault<Color>(
                            FFAppState().Switch3 == true
                                ? FlutterFlowTheme.of(context).alternate
                                : FlutterFlowTheme.of(context).accent1,
                            FlutterFlowTheme.of(context).alternate,
                          ),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(
                                      valueOrDefault<double>(
                                        FFAppState().Switch3 == true
                                            ? 1.0
                                            : -1.0,
                                        0.0,
                                      ),
                                      0.0),
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 100),
                                    curve: Curves.easeInOut,
                                    width: 25.0,
                                    height: 25.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).info,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 25.0, 15.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Progress Milestones',
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelLargeFamily,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelLargeIsCustom,
                          ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (FFAppState().Switch4) {
                          FFAppState().Switch4 = false;
                          safeSetState(() {});
                        } else {
                          FFAppState().Switch4 = true;
                          safeSetState(() {});
                        }

                        HapticFeedback.lightImpact();
                      },
                      child: Container(
                        width: 50.0,
                        height: 28.0,
                        decoration: BoxDecoration(
                          color: valueOrDefault<Color>(
                            FFAppState().Switch4 == true
                                ? FlutterFlowTheme.of(context).alternate
                                : FlutterFlowTheme.of(context).accent1,
                            FlutterFlowTheme.of(context).alternate,
                          ),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(
                                      valueOrDefault<double>(
                                        FFAppState().Switch4 == true
                                            ? 1.0
                                            : -1.0,
                                        0.0,
                                      ),
                                      0.0),
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 100),
                                    curve: Curves.easeInOut,
                                    width: 25.0,
                                    height: 25.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).info,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 25.0, 15.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Account Updates',
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelLargeFamily,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelLargeIsCustom,
                          ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (FFAppState().Switch5) {
                          FFAppState().Switch5 = false;
                          safeSetState(() {});
                        } else {
                          FFAppState().Switch5 = true;
                          safeSetState(() {});
                        }

                        HapticFeedback.lightImpact();
                      },
                      child: Container(
                        width: 50.0,
                        height: 28.0,
                        decoration: BoxDecoration(
                          color: valueOrDefault<Color>(
                            FFAppState().Switch5 == true
                                ? FlutterFlowTheme.of(context).alternate
                                : FlutterFlowTheme.of(context).accent1,
                            FlutterFlowTheme.of(context).alternate,
                          ),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(
                                      valueOrDefault<double>(
                                        FFAppState().Switch5 == true
                                            ? 1.0
                                            : -1.0,
                                        0.0,
                                      ),
                                      0.0),
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 100),
                                    curve: Curves.easeInOut,
                                    width: 25.0,
                                    height: 25.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).info,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (FFAppState().Tab == 0)
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 25.0, 15.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Security Alerts',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).labelLargeFamily,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .labelLargeIsCustom,
                            ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (FFAppState().Switch6) {
                            FFAppState().Switch6 = false;
                            safeSetState(() {});
                          } else {
                            FFAppState().Switch6 = true;
                            safeSetState(() {});
                          }

                          HapticFeedback.lightImpact();
                        },
                        child: Container(
                          width: 50.0,
                          height: 28.0,
                          decoration: BoxDecoration(
                            color: valueOrDefault<Color>(
                              FFAppState().Switch6 == true
                                  ? FlutterFlowTheme.of(context).alternate
                                  : FlutterFlowTheme.of(context).accent1,
                              FlutterFlowTheme.of(context).alternate,
                            ),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(
                                        valueOrDefault<double>(
                                          FFAppState().Switch6 == true
                                              ? 1.0
                                              : -1.0,
                                          0.0,
                                        ),
                                        0.0),
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 100),
                                      curve: Curves.easeInOut,
                                      width: 25.0,
                                      height: 25.0,
                                      decoration: BoxDecoration(
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 25.0, 15.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Challenge Invitations',
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelLargeFamily,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelLargeIsCustom,
                          ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (FFAppState().Switch7) {
                          FFAppState().Switch7 = false;
                          safeSetState(() {});
                        } else {
                          FFAppState().Switch7 = true;
                          safeSetState(() {});
                        }

                        HapticFeedback.lightImpact();
                      },
                      child: Container(
                        width: 50.0,
                        height: 28.0,
                        decoration: BoxDecoration(
                          color: valueOrDefault<Color>(
                            FFAppState().Switch7 == true
                                ? FlutterFlowTheme.of(context).alternate
                                : FlutterFlowTheme.of(context).accent1,
                            FlutterFlowTheme.of(context).alternate,
                          ),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(
                                      valueOrDefault<double>(
                                        FFAppState().Switch7 == true
                                            ? 1.0
                                            : -1.0,
                                        0.0,
                                      ),
                                      0.0),
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 100),
                                    curve: Curves.easeInOut,
                                    width: 25.0,
                                    height: 25.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).info,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 25.0, 15.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Community Updates',
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelLargeFamily,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelLargeIsCustom,
                          ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (FFAppState().Switch8) {
                          FFAppState().Switch8 = false;
                          safeSetState(() {});
                        } else {
                          FFAppState().Switch8 = true;
                          safeSetState(() {});
                        }

                        HapticFeedback.lightImpact();
                      },
                      child: Container(
                        width: 50.0,
                        height: 28.0,
                        decoration: BoxDecoration(
                          color: valueOrDefault<Color>(
                            FFAppState().Switch8 == true
                                ? FlutterFlowTheme.of(context).alternate
                                : FlutterFlowTheme.of(context).accent1,
                            FlutterFlowTheme.of(context).alternate,
                          ),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(
                                      valueOrDefault<double>(
                                        FFAppState().Switch8 == true
                                            ? 1.0
                                            : -1.0,
                                        0.0,
                                      ),
                                      0.0),
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 100),
                                    curve: Curves.easeInOut,
                                    width: 25.0,
                                    height: 25.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).info,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 25.0, 15.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Achievement Unlocks',
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelLargeFamily,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelLargeIsCustom,
                          ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (FFAppState().Switch9) {
                          FFAppState().Switch9 = false;
                          safeSetState(() {});
                        } else {
                          FFAppState().Switch9 = true;
                          safeSetState(() {});
                        }

                        HapticFeedback.lightImpact();
                      },
                      child: Container(
                        width: 50.0,
                        height: 28.0,
                        decoration: BoxDecoration(
                          color: valueOrDefault<Color>(
                            FFAppState().Switch9 == true
                                ? FlutterFlowTheme.of(context).alternate
                                : FlutterFlowTheme.of(context).accent1,
                            FlutterFlowTheme.of(context).alternate,
                          ),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(
                                      valueOrDefault<double>(
                                        FFAppState().Switch9 == true
                                            ? 1.0
                                            : -1.0,
                                        0.0,
                                      ),
                                      0.0),
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 100),
                                    curve: Curves.easeInOut,
                                    width: 25.0,
                                    height: 25.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).info,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (FFAppState().Tab == 0)
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 25.0, 15.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Offline Mode Notifications',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).labelLargeFamily,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .labelLargeIsCustom,
                            ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (FFAppState().Switch10) {
                            FFAppState().Switch10 = false;
                            safeSetState(() {});
                          } else {
                            FFAppState().Switch10 = true;
                            safeSetState(() {});
                          }

                          HapticFeedback.lightImpact();
                        },
                        child: Container(
                          width: 50.0,
                          height: 28.0,
                          decoration: BoxDecoration(
                            color: valueOrDefault<Color>(
                              FFAppState().Switch10 == true
                                  ? FlutterFlowTheme.of(context).alternate
                                  : FlutterFlowTheme.of(context).accent1,
                              FlutterFlowTheme.of(context).alternate,
                            ),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(
                                        valueOrDefault<double>(
                                          FFAppState().Switch10 == true
                                              ? 1.0
                                              : -1.0,
                                          0.0,
                                        ),
                                        0.0),
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 100),
                                      curve: Curves.easeInOut,
                                      width: 25.0,
                                      height: 25.0,
                                      decoration: BoxDecoration(
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 25.0, 15.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Customer Support Updates',
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelLargeFamily,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelLargeIsCustom,
                          ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (FFAppState().Switch11) {
                          FFAppState().Switch11 = false;
                          safeSetState(() {});
                        } else {
                          FFAppState().Switch11 = true;
                          safeSetState(() {});
                        }

                        HapticFeedback.lightImpact();
                      },
                      child: Container(
                        width: 50.0,
                        height: 28.0,
                        decoration: BoxDecoration(
                          color: valueOrDefault<Color>(
                            FFAppState().Switch11 == true
                                ? FlutterFlowTheme.of(context).alternate
                                : FlutterFlowTheme.of(context).accent1,
                            FlutterFlowTheme.of(context).alternate,
                          ),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(
                                      valueOrDefault<double>(
                                        FFAppState().Switch11 == true
                                            ? 1.0
                                            : -1.0,
                                        0.0,
                                      ),
                                      0.0),
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 100),
                                    curve: Curves.easeInOut,
                                    width: 25.0,
                                    height: 25.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).info,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 25.0, 15.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Feedback & Updates',
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelLargeFamily,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelLargeIsCustom,
                          ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (FFAppState().Switch12) {
                          FFAppState().Switch12 = false;
                          safeSetState(() {});
                        } else {
                          FFAppState().Switch12 = true;
                          safeSetState(() {});
                        }

                        HapticFeedback.lightImpact();
                      },
                      child: Container(
                        width: 50.0,
                        height: 28.0,
                        decoration: BoxDecoration(
                          color: valueOrDefault<Color>(
                            FFAppState().Switch12 == true
                                ? FlutterFlowTheme.of(context).alternate
                                : FlutterFlowTheme.of(context).accent1,
                            FlutterFlowTheme.of(context).alternate,
                          ),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(
                                      valueOrDefault<double>(
                                        FFAppState().Switch12 == true
                                            ? 1.0
                                            : -1.0,
                                        0.0,
                                      ),
                                      0.0),
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 100),
                                    curve: Curves.easeInOut,
                                    width: 25.0,
                                    height: 25.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).info,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ].addToEnd(SizedBox(height: 25.0)),
          ),
        ),
      ),
    );
  }
}

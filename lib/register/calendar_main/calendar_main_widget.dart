import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'calendar_main_model.dart';
export 'calendar_main_model.dart';

class CalendarMainWidget extends StatefulWidget {
  const CalendarMainWidget({
    super.key,
    required this.inputDate,
    this.onSelectDateAction,
    this.initialSelectedDate,
  });

  final DateTime? inputDate;
  final Future Function(DateTime? selectedDate)? onSelectDateAction;
  final DateTime? initialSelectedDate;

  @override
  State<CalendarMainWidget> createState() => _CalendarMainWidgetState();
}

class _CalendarMainWidgetState extends State<CalendarMainWidget> {
  late CalendarMainModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalendarMainModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.inputDate = widget.inputDate;
      safeSetState(() {});
      if (widget.initialSelectedDate != null) {
        _model.selectedDate = widget.initialSelectedDate;
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
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).accent1,
          width: 1.0,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.inputDate =
                          functions.getLastMonthDateTime(_model.inputDate!);
                      safeSetState(() {});
                    },
                    child: Container(
                      width: 40.0,
                      height: 35.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 2.0, 0.0),
                          child: Icon(
                            FFIcons.kchevronLeft,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 22.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    dateTimeFormat(
                      "yMMMd",
                      dateTimeFromSecondsSinceEpoch(valueOrDefault<int>(
                        _model.inputDate?.secondsSinceEpoch,
                        0,
                      )),
                      locale: FFLocalizations.of(context).languageCode,
                    ),
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelLargeFamily,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).labelLargeIsCustom,
                        ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.inputDate =
                          functions.getNextMonthDateTime(_model.inputDate!);
                      safeSetState(() {});
                    },
                    child: Container(
                      width: 40.0,
                      height: 35.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              2.0, 0.0, 0.0, 0.0),
                          child: Icon(
                            FFIcons.kchevronRight,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 22.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).accent1,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 12.0, 10.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    'Mo',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelSmallFamily,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).labelSmallIsCustom,
                        ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Tu',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelSmallFamily,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).labelSmallIsCustom,
                        ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'We',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelSmallFamily,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).labelSmallIsCustom,
                        ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Th',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelSmallFamily,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).labelSmallIsCustom,
                        ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Fr',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelSmallFamily,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).labelSmallIsCustom,
                        ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Sa',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelSmallFamily,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).labelSmallIsCustom,
                        ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Su',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelSmallFamily,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).labelSmallIsCustom,
                        ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 15.0, 15.0),
            child: Builder(
              builder: (context) {
                final calendar =
                    functions.getCalendarForMonth(_model.inputDate!).toList();

                return GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 7,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                    childAspectRatio: 1.0,
                  ),
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: calendar.length,
                  itemBuilder: (context, calendarIndex) {
                    final calendarItem = calendar[calendarIndex];
                    return InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.selectedDate = calendarItem.calendarDate;
                        safeSetState(() {});
                        await widget.onSelectDateAction?.call(
                          _model.selectedDate,
                        );
                      },
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: dateTimeFormat(
                                    "d/M/y",
                                    calendarItem.calendarDate,
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  ) ==
                                  dateTimeFormat(
                                    "d/M/y",
                                    _model.selectedDate,
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  )
                              ? FlutterFlowTheme.of(context).primary
                              : FlutterFlowTheme.of(context).transparent,
                          shape: BoxShape.circle,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            dateTimeFormat(
                              "d",
                              dateTimeFromSecondsSinceEpoch(valueOrDefault<int>(
                                calendarItem.calendarDate?.secondsSinceEpoch,
                                0,
                              )),
                              locale: FFLocalizations.of(context).languageCode,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelLargeFamily,
                                  color: (calendarItem.isPreviousMonth ==
                                              true) ||
                                          (calendarItem.isNextMonth == true)
                                      ? (dateTimeFormat(
                                                "d/M/y",
                                                calendarItem.calendarDate,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ) ==
                                              dateTimeFormat(
                                                "d/M/y",
                                                _model.selectedDate,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              )
                                          ? FlutterFlowTheme.of(context).info
                                          : FlutterFlowTheme.of(context)
                                              .secondaryText)
                                      : (dateTimeFormat(
                                                "d/M/y",
                                                calendarItem.calendarDate,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ) ==
                                              dateTimeFormat(
                                                "d/M/y",
                                                _model.selectedDate,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              )
                                          ? FlutterFlowTheme.of(context).info
                                          : FlutterFlowTheme.of(context)
                                              .primaryText),
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .labelLargeIsCustom,
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
        ],
      ),
    );
  }
}

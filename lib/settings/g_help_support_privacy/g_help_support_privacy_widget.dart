import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'g_help_support_privacy_model.dart';
export 'g_help_support_privacy_model.dart';

class GHelpSupportPrivacyWidget extends StatefulWidget {
  const GHelpSupportPrivacyWidget({super.key});

  static String routeName = 'gHelpSupportPrivacy';
  static String routePath = '/gHelpSupportPrivacy';

  @override
  State<GHelpSupportPrivacyWidget> createState() =>
      _GHelpSupportPrivacyWidgetState();
}

class _GHelpSupportPrivacyWidgetState extends State<GHelpSupportPrivacyWidget> {
  late GHelpSupportPrivacyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GHelpSupportPrivacyModel());
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
                size: 25.0,
              ),
              onPressed: () async {
                await action_blocks.wait(context);
                context.safePop();
              },
            ),
          ),
          title: Text(
            'Privacy Policy',
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
                child: RichText(
                  textScaler: MediaQuery.of(context).textScaler,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'FastPay (\"we,\" \"our,\" or \"us\") operates the FastPay mobile application (the \"App\"). This Privacy Policy explains how we collect, use, and disclose information from users (\"you\") of the App. By using FastPay, you agree to the collection and use of information in accordance with this policy.\n\n1. Information We Collect\nWe collect several types of information for various purposes to provide and improve our App.\n\n1.1. Personal Information\nWhen you register or use the App, we may collect personal information, including but not limited to:\n\nFull name\nEmail address\nPhone number\nPayment information (credit/debit card details, etc.)\n1.2. Usage Data\nWe may collect information about how the App is accessed and used, including:\n\nDevice information (e.g., mobile device ID, IP address, operating system)\nApp activity (e.g., features you use, pages visited, transaction history)\nCookies and similar tracking technologies\n2. Use of Information\nFastPay uses the collected information for various purposes, including:\n\nTo provide, maintain, and improve the App\nTo process payments and transactions\nTo communicate with you about updates, offers, and promotions\nTo analyze usage trends and improve the App’s performance\nTo prevent fraudulent transactions and maintain security\n3. Sharing of Information\nWe may share your information with third parties under the following circumstances:\n\nService Providers: We may share your information with third-party vendors, such as payment processors, to facilitate services.\nLegal Requirements: We may disclose your information if required by law or in response to valid requests by public authorities.\nBusiness Transfers: If FastPay is involved in a merger, acquisition, or asset sale, your information may be transferred.\n4. Security\nWe take reasonable steps to protect your personal information from unauthorized access, alteration, or disclosure. However, no method of transmission over the Internet or method of electronic storage is 100% secure.\n\n5. Your Rights\nYou have the right to:\n\nAccess, update, or delete your personal information\nOpt-out of receiving promotional emails\nWithdraw consent where the processing of your information is based on consent\nTo exercise any of these rights, please contact us at [support email].\n\n6. Children’s Privacy\nOur App does not address individuals under the age of 13. We do not knowingly collect personal information from children under 13. If you are a parent or guardian and believe your child has provided us with personal information, please contact us.',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).labelLargeFamily,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .labelLargeIsCustom,
                            ),
                      )
                    ],
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelLargeFamily,
                          letterSpacing: 0.0,
                          lineHeight: 1.5,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).labelLargeIsCustom,
                        ),
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

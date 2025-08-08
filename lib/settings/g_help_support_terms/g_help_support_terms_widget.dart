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
import 'g_help_support_terms_model.dart';
export 'g_help_support_terms_model.dart';

class GHelpSupportTermsWidget extends StatefulWidget {
  const GHelpSupportTermsWidget({super.key});

  static String routeName = 'gHelpSupportTerms';
  static String routePath = '/gHelpSupportTerms';

  @override
  State<GHelpSupportTermsWidget> createState() =>
      _GHelpSupportTermsWidgetState();
}

class _GHelpSupportTermsWidgetState extends State<GHelpSupportTermsWidget> {
  late GHelpSupportTermsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GHelpSupportTermsModel());
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
            'Terms & Conditions',
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
                            'Welcome to FastPay. These terms and conditions outline the rules and regulations for using our mobile application (the \"App\"). By accessing or using FastPay, you agree to be bound by these terms and conditions. If you do not agree with any part of the terms, you must not use the App.\n\n1. Definitions\n\"App\" refers to the FastPay mobile application.\n\"We,\" \"us,\" or \"our\" refers to FastPay, the developers and operators of the App.\n\"User,\" \"you,\" or \"your\" refers to the individual accessing or using the App.\n2. Usage of the App\nYou agree to use the App only for its intended purposes, including making and receiving payments. Misuse of the App, including but not limited to fraud or illegal transactions, is strictly prohibited.\n\n3. Account Registration\nTo use the App, you must create an account by providing accurate and complete information. You are responsible for maintaining the confidentiality of your account and password and for any activities that occur under your account.\n\n4. Fees and Payments\nFastPay may charge fees for certain transactions. By using the App, you agree to the fees outlined in the pricing structure within the App. FastPay reserves the right to modify these fees at any time, with notice to the users.\n\n5. Refund Policy\nPayments made through the App are non-refundable unless explicitly stated otherwise. If you believe a transaction was made in error, you may contact us for assistance, but we do not guarantee a refund.\n\n6. Intellectual Property\nAll content and materials available on the App, including but not limited to text, graphics, logos, and software, are the intellectual property of FastPay. Unauthorized use or duplication is prohibited.\n\n7. Privacy\nOur use of your personal information is governed by our Privacy Policy. By using the App, you consent to the collection, use, and disclosure of your information as described in the Privacy Policy.\n\n8. Limitations of Liability\nFastPay is not liable for any indirect, incidental, or consequential damages arising from your use of the App, including but not limited to lost profits, data breaches, or unauthorized transactions.\n\n9. Termination\nWe reserve the right to suspend or terminate your access to the App without notice if you violate any of these terms or engage in fraudulent or unlawful activity.\n\n10. Governing Law\nThese Terms & Conditions shall be governed by and construed in accordance with the laws of [Insert Jurisdiction]. Any disputes arising from these terms will be resolved exclusively in the courts of [Insert Jurisdiction].\n\n11. Changes to Terms\nWe may revise these terms from time to time. Users will be notified of any significant changes via email or through the App. Continued use of the App after changes are made signifies your acceptance of the revised terms.\n\n12. Contact Information\nFor any questions or concerns regarding these Terms & Conditions, please contact us at:\n\nEmail: [Insert Contact Email]\nPhone: [Insert Contact Number]\n\nBy using the FastPay App, you agree to these Terms & Conditions.',
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

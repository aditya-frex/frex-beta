import '/flutter_flow/flutter_flow_util.dart';
import 'c_verification_code_widget.dart' show CVerificationCodeWidget;
import 'package:flutter/material.dart';

class CVerificationCodeModel extends FlutterFlowModel<CVerificationCodeWidget> {
  ///  Local state fields for this page.

  bool isTrue = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }
}

import '/flutter_flow/flutter_flow_util.dart';
import 'payment_method2_widget.dart' show PaymentMethod2Widget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PaymentMethod2Model extends FlutterFlowModel<PaymentMethod2Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for CardNumber widget.
  FocusNode? cardNumberFocusNode;
  TextEditingController? cardNumberTextController;
  late MaskTextInputFormatter cardNumberMask;
  String? Function(BuildContext, String?)? cardNumberTextControllerValidator;
  String? _cardNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Required field!';
    }

    return null;
  }

  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Required field!';
    }

    return null;
  }

  // State field(s) for Expire widget.
  FocusNode? expireFocusNode;
  TextEditingController? expireTextController;
  late MaskTextInputFormatter expireMask;
  String? Function(BuildContext, String?)? expireTextControllerValidator;
  String? _expireTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Required field!';
    }

    return null;
  }

  // State field(s) for CVV widget.
  FocusNode? cvvFocusNode;
  TextEditingController? cvvTextController;
  late MaskTextInputFormatter cvvMask;
  String? Function(BuildContext, String?)? cvvTextControllerValidator;
  String? _cvvTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Required field!';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    cardNumberTextControllerValidator = _cardNumberTextControllerValidator;
    nameTextControllerValidator = _nameTextControllerValidator;
    expireTextControllerValidator = _expireTextControllerValidator;
    cvvTextControllerValidator = _cvvTextControllerValidator;
  }

  @override
  void dispose() {
    cardNumberFocusNode?.dispose();
    cardNumberTextController?.dispose();

    nameFocusNode?.dispose();
    nameTextController?.dispose();

    expireFocusNode?.dispose();
    expireTextController?.dispose();

    cvvFocusNode?.dispose();
    cvvTextController?.dispose();
  }
}

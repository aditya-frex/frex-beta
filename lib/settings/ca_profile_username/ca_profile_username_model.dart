import '/flutter_flow/flutter_flow_util.dart';
import 'ca_profile_username_widget.dart' show CaProfileUsernameWidget;
import 'package:flutter/material.dart';

class CaProfileUsernameModel extends FlutterFlowModel<CaProfileUsernameWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

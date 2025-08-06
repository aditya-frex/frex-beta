import '/flutter_flow/flutter_flow_util.dart';
import 'single_chat_widget.dart' show SingleChatWidget;
import 'package:flutter/material.dart';

class SingleChatModel extends FlutterFlowModel<SingleChatWidget> {
  ///  Local state fields for this page.

  bool other = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Column widget.
  ScrollController? columnController;
  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    columnController?.dispose();
    listViewController?.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

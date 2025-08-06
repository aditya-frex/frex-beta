import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'ca_profile_visibility_widget.dart' show CaProfileVisibilityWidget;
import 'package:flutter/material.dart';

class CaProfileVisibilityModel
    extends FlutterFlowModel<CaProfileVisibilityWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}

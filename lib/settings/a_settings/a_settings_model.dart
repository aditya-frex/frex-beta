import '/flutter_flow/flutter_flow_util.dart';
import '/home/navbar/navbar_widget.dart';
import '/index.dart';
import 'a_settings_widget.dart' show ASettingsWidget;
import 'package:flutter/material.dart';

class ASettingsModel extends FlutterFlowModel<ASettingsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
  }
}

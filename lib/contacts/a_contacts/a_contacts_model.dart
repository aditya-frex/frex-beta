import '/flutter_flow/flutter_flow_util.dart';
import '/home/navbar/navbar_widget.dart';
import '/index.dart';
import 'a_contacts_widget.dart' show AContactsWidget;
import 'package:flutter/material.dart';

class AContactsModel extends FlutterFlowModel<AContactsWidget> {
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

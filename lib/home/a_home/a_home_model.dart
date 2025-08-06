import '/flutter_flow/flutter_flow_util.dart';
import '/home/navbar/navbar_widget.dart';
import '/index.dart';
import 'a_home_widget.dart' show AHomeWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class AHomeModel extends FlutterFlowModel<AHomeWidget> {
  ///  Local state fields for this page.

  bool isOpen = false;

  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? startController;
  // Model for Navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    startController?.finish();
    navbarModel.dispose();
  }
}

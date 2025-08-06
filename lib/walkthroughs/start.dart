import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/register/walkthrough_start1/walkthrough_start1_widget.dart';
import '/register/walkthrough_start3/walkthrough_start3_widget.dart';
import '/register/walkthrough_start2/walkthrough_start2_widget.dart';

// Focus widget keys for this walkthrough
final textOav87s31 = GlobalKey();
final containerKokk7ngx = GlobalKey();
final containerI5gj0xdg = GlobalKey();

/// Start
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: textOav87s31,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WalkthroughStart1Widget(),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: containerKokk7ngx,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WalkthroughStart3Widget(),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: containerI5gj0xdg,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WalkthroughStart2Widget(),
          ),
        ],
      ),
    ];

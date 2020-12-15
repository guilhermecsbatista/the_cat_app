import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations/controlled_animation.dart';
import 'package:simple_animations/simple_animations/multi_track_tween.dart';

class Scale extends StatelessWidget {
  final double delay;
  final Widget child;

  Scale(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("opacity")
          .add(Duration(milliseconds: 100), Tween(begin: 0.0, end: 1.0)),
      Track("translate").add(
          Duration(milliseconds: 800), Tween(begin: 80.0, end: 1.0),
          curve: Curves.easeOut),
    ]);

    return ControlledAnimation(
      delay: Duration(milliseconds: (300 * delay).round()),
      child: child,
      duration: Duration(seconds: 1),
      tween: tween,
      builderWithChild: (context, child, animation) => Opacity(
        opacity: animation["opacity"],
        child: Transform.scale(
          scale: animation["translate"],
          child: child,
        ),
      ),
    );
  }
}

// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

enum FadeDirection {
  TOP,
  LEFT,
  RIGHT,
  BOTTOM,
}

class FadeWidget extends StatelessWidget {
  const FadeWidget({
    Key? key,
    required this.child,
    this.direction = FadeDirection.TOP,
  }) : super(key: key);

  final Widget child;
  final FadeDirection direction;

  bool get isHorizontal =>
      direction == FadeDirection.LEFT || direction == FadeDirection.RIGHT;

  bool get isPositive =>
      direction == FadeDirection.BOTTOM || direction == FadeDirection.RIGHT;

  TimelineTween<Prop> createTween() {
    Prop prop = isHorizontal ? Prop.translateX : Prop.translateY;
    double begin = isPositive ? 30 : -30;

    final tween = TimelineTween<Prop>()
      ..addScene(
        begin: const Duration(milliseconds: 0),
        duration: const Duration(milliseconds: 700),
        curve: Curves.easeOut,
      )
          .animate(Prop.opacity, tween: Tween<double>(begin: 0.0, end: 1.0))
          .animate(
            prop,
            tween: Tween<double>(begin: begin, end: 0.0),
          );

    return tween;
  }

  @override
  Widget build(BuildContext context) {
    final tween = createTween();

    return PlayAnimation<TimelineValue<Prop>>(
      duration: tween.duration,
      tween: tween,
      child: child,
      builder: (context, child, value) => Opacity(
        opacity: value.get(Prop.opacity),
        child: Transform.translate(
          offset: isHorizontal
              ? Offset(value.get(Prop.translateX), 0)
              : Offset(0, value.get(Prop.translateY)),
          child: child,
        ),
      ),
    );
  }
}

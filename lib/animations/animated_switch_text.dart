import 'package:flutter/material.dart';

class AnimatedSwitchText extends StatelessWidget {
  const AnimatedSwitchText({
    Key? key,
    required this.firstText,
    required this.secondText,
    required this.showFirst,
    required this.style,
  }) : super(key: key);

  final String firstText;
  final String secondText;
  final bool showFirst;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 150),
      firstChild: Text(
        firstText,
        style: style,
      ),
      secondChild: Text(
        secondText,
        style: style,
      ),
      crossFadeState:
          showFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    );
  }
}

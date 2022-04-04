import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velocity_x/velocity_x.dart';

class AnimatedRichText extends HookWidget {
  const AnimatedRichText({
    Key? key,
    required this.text,
    this.textColor = Colors.black,
    this.lineColor,
    this.animate = true,
    this.repeatAnimation = true,
    this.animationDuration = const Duration(seconds: 2),
    this.showLine = true,
    this.lineHeight = 8,
    this.initialLineWidth = 0,
    this.minLineWidth = 20,
    this.maxLineWidth = 30,
  }) : super(key: key);

  final String text;
  final Color? lineColor;
  final Color textColor;
  final bool animate;
  final bool repeatAnimation;
  final Duration animationDuration;
  final bool showLine;
  final double lineHeight;
  final double initialLineWidth;
  final double minLineWidth;
  final double maxLineWidth;

  @override
  Widget build(BuildContext context) {
    final lineController = useAnimationController(
      initialValue: initialLineWidth,
      lowerBound: minLineWidth,
      upperBound: maxLineWidth,
      duration: animationDuration,
    );

    useEffect(() {
      if (animate) {
        lineController
          ..forward()
          ..addListener(() {
            if (repeatAnimation && lineController.isCompleted) {
              lineController.repeat(reverse: true);
            }
          });
      }
      return null;
    });

    return Column(
      children: [
        text.text.xl2.color(textColor).bold.make(),
        if (showLine)
          AnimatedBuilder(
            animation: lineController,
            builder: (_, __) => Container(
              height: lineHeight,
              width: lineController.value,
              color: lineColor,
            ),
          ),
      ],
    );
  }
}

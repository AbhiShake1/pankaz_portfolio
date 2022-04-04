import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velocity_x/velocity_x.dart';

class AnimatedRichText extends HookWidget {
  const AnimatedRichText(
      {Key? key, required this.text, this.textColor = Colors.black, this.lineColor})
      : super(key: key);

  final String text;
  final Color? lineColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    final lineController = useAnimationController(
      lowerBound: 20,
      upperBound: 30,
      duration: const Duration(seconds: 2),
    );

    useEffect(() {
      lineController
        ..forward()
        ..addListener(() {
          if (lineController.isCompleted) {
            lineController.repeat(reverse: true);
          }
        });
      return null;
    });

    return Column(
      children: [
        text.text.scale(2).color(textColor).bold.make(),
        AnimatedBuilder(
          animation: lineController,
          builder: (_, __) => Container(
            height: 8,
            width: lineController.value,
            color: lineColor,
          ),
        ),
      ],
    );
  }
}

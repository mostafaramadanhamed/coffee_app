import 'package:coffee_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import '';
import '../../../../core/utils/string.dart';
class AnimatedText extends StatelessWidget {
  const AnimatedText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: slidingAnimation,
      builder: (BuildContext context, Widget? child) {
        return SlideTransition(position: slidingAnimation,
            child: const Text(AppStrings.kAppName,style: Styles.textStyle24,));
      },
    );
  }
}

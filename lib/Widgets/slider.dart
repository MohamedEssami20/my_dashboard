import 'package:flutter/material.dart';

class MySlider extends StatelessWidget {
  const MySlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Slider(
          activeColor: const Color(0xff0499AD),
          inactiveColor: const Color(0xffF1F1F1),
          thumbColor: null,
          value: 0.3,
          onChanged: (value) {}),
    );
  }
}

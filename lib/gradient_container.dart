import 'package:flutter/material.dart';
import 'package:flutter_complete_guide_2/dice_roller.dart';

class GradientContainer extends StatefulWidget {
  const GradientContainer(this.colorList, {super.key});

  final List<Color> colorList;

  @override
  State<GradientContainer> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<GradientContainer> {
  String i = "1";
  // final Color topleftColor = Color.fromARGB(255, 91, 24, 1);
  // final Color bottomrightColor = Color.fromARGB(255, 28, 12, 119);

  // final Color topleftColor;
  // final Color bottomrightColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        // colors: [topleftColor, bottomrightColor],
        colors: widget.colorList,
      )),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

// class StyledText extends StatelessWidget {
//   const StyledText({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Text("Test",
//         style: TextStyle(color: Colors.white, fontSize: 30));
//   }
// }

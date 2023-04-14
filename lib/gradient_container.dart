import 'package:flutter/material.dart';
import 'package:flutter_complete_guide_2/styled_text.dart';

const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colorList, {super.key});

  // final Color topleftColor = Color.fromARGB(255, 91, 24, 1);
  // final Color bottomrightColor = Color.fromARGB(255, 28, 12, 119);

  // final Color topleftColor;
  // final Color bottomrightColor;

  final List<Color> colorList;

  @override
  Widget build(BuildContext context) {
    String i = "1";

    void handleClick() {
      print("I got clicked.");
    }

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        // begin: Alignment.topLeft,
        // end: Alignment.bottomRight,
        begin: beginAlignment,
        end: endAlignment,
        // colors: [topleftColor, bottomrightColor],
        colors: colorList,
      )),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/dice-" + i + ".png",
              width: 150,
            ),
            TextButton(
                onPressed: handleClick,
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 28)),
                child: const Text("Roll Dice")),
          ],
        ),
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

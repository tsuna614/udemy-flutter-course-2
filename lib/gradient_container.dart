import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide_2/styled_text.dart';

String i = "1";
// class GradientContainer extends StatefulWidget {
//   const GradientContainer(this.colorList, {super.key});
//   final List<Color> colorList;
//   //boilerplate type: createState() {}
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return MyAppState();
//   }
// }

class GradientContainer extends StatefulWidget {
  const GradientContainer(this.colorList, {super.key});

  final List<Color> colorList;

  @override
  State<GradientContainer> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<GradientContainer> {
  // final Color topleftColor = Color.fromARGB(255, 91, 24, 1);
  // final Color bottomrightColor = Color.fromARGB(255, 28, 12, 119);

  // final Color topleftColor;
  // final Color bottomrightColor;
  @override
  Widget build(BuildContext context) {
    void handleClick() {
      int randomnum = 1 + Random().nextInt((6 + 1) - 1);
      setState(() {
        i = randomnum.toString();
      });
      print("I got clicked!");
    }

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        // colors: [topleftColor, bottomrightColor],
        colors: widget.colorList,
      )),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/dice-" + i + ".png",
              width: 150,
            ),
            SizedBox(
              height: 50,
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

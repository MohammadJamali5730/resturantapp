import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

class Widgetcontiner extends StatelessWidget {
  int index = 0;
  Widgetcontiner({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Animate(
            effects: [if (index == 0) FlipEffect(duration: 700.ms)],
            child: Container(
              width: index == 0 ? 20 : 17,
              height: index == 0 ? 20 : 17,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: index == 0 ? Colors.red : Colors.grey),
            )),
        Animate(
            effects: [if (index == 1) FlipEffect(duration: 700.ms)],
            child: Container(
              width: index == 1 ? 20 : 17,
              height: index == 1 ? 20 : 17,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: index == 1 ? Colors.purple : Colors.grey),
            )),
        Animate(
            effects: [if (index == 2) FlipEffect(duration: 700.ms)],
            child: Container(
              width: index == 2 ? 20 : 17,
              height: index == 2 ? 20 : 17,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: index == 2 ? Colors.yellow : Colors.grey),
            )),
      ],
    );
  }
}

class Elv extends StatelessWidget {
  const Elv({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors. orange[300],
      ),
      onPressed: () {
        Get.toNamed('/second');
      },
      child: Text(
        'Lets eat something !',
        style: TextStyle(color: Colors.white, fontSize: 25),
      ),
    ).animate(autoPlay: true , onPlay: (controller) => controller.repeat(period: 6500.ms),)
    .fadeOut(duration: 1800.ms , delay:700.ms)
    .then()
    
    .swap(
        builder: (context, child) => TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.amber[100]),
              onPressed: () {
                Get.toNamed('second');
              },
              child: Text('Lets eat!'),
            ),
        duration: 800.ms).then().fadeOut( duration:  1800.ms, delay:700.ms);
  }
}

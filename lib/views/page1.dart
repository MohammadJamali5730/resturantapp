import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:shopapp/gen/assets.gen.dart';

import 'package:shopapp/wigets/widgetsc1.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Page1 extends StatefulWidget {
  Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  int selectindex = 0;

  @override
  List<Image> images = [
    Image.asset(
        Assets.initshop.vecteezy3dFastFoodRestaurantIsometric28153091.path),
    Image.asset(
        Assets.initshop.vecteezyClocheClipartDesignIllustration9400070.path),
    Image.asset(Assets.initshop
        .vecteezyScooterWithDeliveryManFlatCartoonCharacterFast23743925.path),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Animate(
              effects:const [
                 ShimmerEffect(colors: [
                  const Color(0xFFFFFF00),
                  const Color(0xFF00FF00),
                  const Color(0xFF00FFFF),
                  const Color(0xFF0033FF),
                  const Color(0xFFFF00FF),
                  const Color(0xFFFF0000),
                  const Color(0xFFFFFF00),
                ])
              ],
              autoPlay: true,
              onPlay: (controller) =>
                  controller.repeat(period: 2500.ms, reverse: true),
              child:const  Text(
                'Welcome to Restaurant',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
              ),
            ),
            CarouselSlider.builder(
              itemCount: 3,
              itemBuilder: (context, index, realIndex) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Animate(
                    effects: [
                      ScaleEffect(
                        begin:const Offset(0.1, 0.1),
                        end:const Offset(1, 1),
                        duration: 1150.ms,
                      ),
                      SlideEffect(
                        begin:const Offset(1, 0),
                        end:const Offset(-1, 0),
                        duration: 850.ms,
                      ),
                    ],
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black,
                                blurRadius: 0.5,
                                offset: Offset(0.8, 0.2))
                          ],
                          color: Colors.amber[200],
                          borderRadius: BorderRadius.circular(20)),
                      child: images[index],
                    ),
                  ),
                );
              },
              options: CarouselOptions(
                autoPlayAnimationDuration: const Duration(seconds: 2),
                autoPlayInterval: const Duration(milliseconds: 2700),
                height: 140,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    selectindex = index;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Widgetcontiner(
              index: selectindex,
            ),
            const SizedBox(
              height: 20,
            ),
           const Elv()
          ],
        ),
      ),
      backgroundColor: Colors.green[200],
    );
  }
}

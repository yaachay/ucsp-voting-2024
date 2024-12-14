import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ucsp_voting/configs/configs.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.scaffoldBackground,
      body: SafeArea(
        child: Expanded(
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  Image.asset(
                    'assets/images/background.png',
                    width: double.infinity,
                  ),
                  SvgPicture.asset(
                    'assets/svgs/background.svg',
                  ),
                  Positioned(
                    bottom: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 100,
                          height: 60,
                        ),
                        const Text(
                          'Let\'s Choose Queens',
                          style: TextStyle(
                              color: Palette.primary,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 100,
                          height: 60,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 15.0, left: 20, right: 10),
                            child: Stack(
                              alignment: AlignmentDirectional.centerStart,
                              children: [
                                Container(
                                  width: 60,
                                  height: 23,
                                  decoration: BoxDecoration(
                                    color: Palette.scaffoldBackground,
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      bottomLeft: Radius.circular(30),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Palette.hintText.withOpacity(0.3),
                                        offset: const Offset(-1, -1),
                                        blurRadius: 4,
                                      ),
                                      BoxShadow(
                                        color:
                                            Palette.hintText.withOpacity(0.3),
                                        offset: const Offset(1, 1),
                                        blurRadius: 4,
                                      ),
                                    ],
                                  ),
                                  child: const Center(
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 8.0),
                                      child: Text(
                                        '4/4',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Palette.secondary,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  child: Transform.rotate(
                                    angle: 15 * pi / 180,
                                    child: Container(
                                      width: 22,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Palette.hintText
                                                .withOpacity(0.3),
                                            offset: const Offset(-1, -1),
                                            blurRadius: 4,
                                          ),
                                          BoxShadow(
                                            color: Palette.hintText
                                                .withOpacity(0.3),
                                            offset: const Offset(1, 1),
                                            blurRadius: 4,
                                          ),
                                        ],
                                      ),
                                      child: Image.asset(
                                        'assets/images/ticket-back.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 220,
                        color: Palette.christmasGreen2,
                      ),
                      Container(
                        width: double.infinity,
                        height: 80,
                        color: Palette.primary,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 70,
                child: Center(
                  child: Container(
                    width: 150,
                    height: 45,
                    margin: const EdgeInsets.only(bottom: 5),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Palette.scaffoldBackground,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Palette.hintText.withOpacity(0.3),
                          offset: const Offset(-2, -2),
                          blurRadius: 4,
                        ),
                        BoxShadow(
                          color: Palette.hintText.withOpacity(0.3),
                          offset: const Offset(2, 2),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: (_currentIndex == 0)
                                    ? Palette.primary.withOpacity(0.2)
                                    : null,
                              ),
                              child: IconButton(
                                padding: const EdgeInsets.all(5),
                                onPressed: () {
                                  setState(() {
                                    _currentIndex = 0;
                                  });
                                },
                                icon: SvgPicture.asset(
                                  'assets/svgs/man.svg',
                                ),
                              ),
                            ),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: (_currentIndex == 1)
                                    ? Palette.primary.withOpacity(0.2)
                                    : null,
                              ),
                              child: IconButton(
                                padding: const EdgeInsets.all(5),
                                onPressed: () {
                                  setState(() {
                                    _currentIndex = 1;
                                  });
                                },
                                icon: SvgPicture.asset(
                                  'assets/svgs/woman.svg',
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

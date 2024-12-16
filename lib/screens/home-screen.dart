import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:snow_fall_animation/snow_fall_animation.dart';
import 'package:ucsp_voting/configs/configs.dart';
import 'package:ucsp_voting/widgets/widgets.dart';
import 'package:wiredash/wiredash.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  int _currentSlide = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.scaffoldBackground,
      body: SafeArea(
        child: Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: double.infinity,
                color: Palette.scaffoldBackground,
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Image.asset(
                      'assets/images/background.png',
                      width: double.infinity,
                      height: 100,
                    ),
                    const SizedBox(
                      width: double.infinity,
                      height: 150,
                      child: SnowFallAnimation(
                        config: SnowfallConfig(
                            numberOfSnowflakes: 100,
                            speed: 1.0,
                            useEmoji: true,
                            customEmojis: ['❅', '❆', ' ✻', '✼'],
                            snowColor: Palette.scaffoldBackground),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 100,
                              height: 60,
                            ),
                            SizedBox(
                              width: 170,
                              child: Text(
                                (_currentIndex == 0)
                                    ? 'Let\'s Choose Kings'
                                    : 'Let\'s Choose Queens',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    color: Palette.primary,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              width: 100,
                              height: 70,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, left: 20, right: 15),
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
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: CarouselSlider(
                  items: [
                    CustomCarouselBox(
                      id: 'myqueen1',
                      modelNo: 'Q1',
                      name: 'Ma Jisoo Ma Jisoo Ma Jisoo Ma Jisoo',
                      imageUrl:
                          'https://w0.peakpx.com/wallpaper/253/642/HD-wallpaper-blackpink-jisoo-bp-chisuni-pinterest-thumbnail.jpg',
                      onVotePress: () {},
                    ),
                    CustomCarouselBox(
                      id: 'myqueen1',
                      modelNo: 'Q2',
                      name: 'Ma Jisoo Ma Jisoo Ma Jisoo Ma Jisoo',
                      imageUrl:
                          'https://w0.peakpx.com/wallpaper/253/642/HD-wallpaper-blackpink-jisoo-bp-chisuni-pinterest-thumbnail.jpg',
                      onVotePress: () {},
                    ),
                    CustomCarouselBox(
                      id: 'myqueen1',
                      modelNo: 'Q3',
                      name: 'Ma Jisoo Ma Jisoo Ma Jisoo Ma Jisoo',
                      imageUrl:
                          'https://w0.peakpx.com/wallpaper/253/642/HD-wallpaper-blackpink-jisoo-bp-chisuni-pinterest-thumbnail.jpg',
                      onVotePress: () {},
                    ),
                    CustomCarouselBox(
                      id: 'myqueen1',
                      modelNo: 'Q4',
                      name: 'Ma Jisoo Ma Jisoo Ma Jisoo Ma Jisoo',
                      imageUrl:
                          'https://w0.peakpx.com/wallpaper/253/642/HD-wallpaper-blackpink-jisoo-bp-chisuni-pinterest-thumbnail.jpg',
                      onVotePress: () {},
                    ),
                    CustomCarouselBox(
                      id: 'myqueen1',
                      modelNo: 'Q5',
                      name: 'Ma Jisoo Ma Jisoo Ma Jisoo Ma Jisoo',
                      imageUrl:
                          'https://w0.peakpx.com/wallpaper/253/642/HD-wallpaper-blackpink-jisoo-bp-chisuni-pinterest-thumbnail.jpg',
                      onVotePress: () {},
                    ),
                    const ShimmerCarouselBox(),
                  ],
                  options: CarouselOptions(
                    disableCenter: true,
                    viewportFraction: 0.6,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 10),
                    autoPlayAnimationDuration: const Duration(seconds: 2),
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentSlide = index;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 30,
                child: Center(
                  child: AnimatedSmoothIndicator(
                    activeIndex: _currentSlide,
                    count: 6,
                    effect: const ScrollingDotsEffect(
                      activeDotColor: Palette.primary,
                      dotColor: Palette.secondary,
                      fixedCenter: true,
                      maxVisibleDots: 5,
                      dotWidth: 10,
                      dotHeight: 10,
                    ),
                    curve: Curves.linear,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 80,
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        padding: const EdgeInsets.all(5),
                        tooltip: 'Feedback',
                        onPressed: () {
                          Wiredash.of(context).show();
                        },
                        icon: SvgPicture.asset(
                          'assets/svgs/feedback.svg',
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 45,
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
                          AnimatedAlign(
                              alignment: (_currentIndex == 0)
                                  ? AlignmentDirectional.centerStart
                                  : AlignmentDirectional.centerEnd,
                              duration: const Duration(milliseconds: 1000),
                              curve: Curves.bounceOut,
                              child: AnimatedContainer(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: (_currentIndex == 0)
                                      ? Palette.christmasGreen1.withOpacity(0.3)
                                      : Palette.christmasRed1.withOpacity(0.3),
                                ),
                                duration: const Duration(milliseconds: 300),
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 35,
                                height: 35,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
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
                                    color: Palette.text,
                                  ),
                                ),
                              ),
                              Container(
                                width: 35,
                                height: 35,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
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
                                    color: Palette.text,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        padding: const EdgeInsets.all(5),
                        tooltip: 'Raking Votes',
                        onPressed: () {},
                        icon: SvgPicture.asset(
                            'assets/svgs/king-and-queen-2024.svg'),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

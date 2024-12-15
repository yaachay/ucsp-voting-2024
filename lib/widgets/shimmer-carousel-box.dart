import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer/shimmer.dart';
import 'package:ucsp_voting/configs/configs.dart';

class ShimmerCarouselBox extends StatelessWidget {
  const ShimmerCarouselBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: const Color(0x30000000),
      highlightColor: Colors.white24,
      period: const Duration(milliseconds: 1000),
      child: Container(
        margin: const EdgeInsets.all(7),
        decoration: BoxDecoration(
          color: Colors.white24,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Palette.text.withOpacity(0.3),
              offset: const Offset(-2, -2),
              blurRadius: 4,
            ),
            BoxShadow(
              color: Palette.text.withOpacity(0.3),
              offset: const Offset(2, 2),
              blurRadius: 4,
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              height: 50,
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      SvgPicture.asset(
                        'assets/svgs/no-box-fade.svg',
                        width: 40,
                        height: 40,
                      ),
                      Center(
                        child: Container(
                          width: 20,
                          height: 10,
                          color: Palette.shimmerBox,
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: 25,
                    height: 25,
                    decoration: const BoxDecoration(
                      color: Palette.shimmerBox,
                      shape: BoxShape.circle,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                width: 90,
                child: SvgPicture.asset(
                  'assets/svgs/voting-logo-fade.svg',
                ),
              ),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 100,
                        height: 18,
                        color: Palette.shimmerBox,
                      ),
                      Container(
                        width: 100,
                        height: 18,
                        color: Palette.shimmerBox,
                      ),
                    ],
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: const BoxDecoration(
                      color: Palette.shimmerBox,
                      shape: BoxShape.circle,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

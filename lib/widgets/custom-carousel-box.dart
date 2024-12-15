import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ucsp_voting/configs/configs.dart';

class CustomCarouselBox extends StatelessWidget {
  final String id;
  final String modelNo;
  final String name;
  final String imageUrl;
  final void Function() onVotePress;

  const CustomCarouselBox(
      {super.key,
      required this.id,
      required this.modelNo,
      required this.name,
      required this.imageUrl,
      required this.onVotePress});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: Palette.scaffoldBackground,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Palette.text.withOpacity(0.2),
            offset: const Offset(-2, -2),
            blurRadius: 4,
          ),
          BoxShadow(
            color: Palette.text.withOpacity(0.2),
            offset: const Offset(2, 2),
            blurRadius: 4,
          ),
        ],
      ),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              width: double.maxFinite,
              height: double.maxFinite,
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
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
                          'assets/svgs/no-box.svg',
                          width: 40,
                          height: 40,
                        ),
                        Center(
                          child: Text(
                            modelNo,
                            style: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                color: Palette.text),
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Palette.text.withOpacity(0.3),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        padding: const EdgeInsets.all(2),
                        tooltip: 'View Bio',
                        onPressed: () {
                          Navigator.of(context).pushNamed('/bio');
                        },
                        icon: SvgPicture.asset(
                          'assets/svgs/zoom-out.svg',
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Expanded(
                child: SizedBox(),
              ),
              Container(
                height: 70,
                padding: const EdgeInsets.only(
                    top: 25, left: 5, right: 5, bottom: 5),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  gradient: Palette.carouselBox,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 100,
                      height: 37,
                      child: Text(
                        name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      width: 37,
                      height: 37,
                      decoration: BoxDecoration(
                        color: Palette.shimmerBox.withOpacity(0.5),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        padding: const EdgeInsets.all(0),
                        tooltip: 'Vote',
                        onPressed: onVotePress,
                        icon: SvgPicture.asset('assets/svgs/vote.svg'),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

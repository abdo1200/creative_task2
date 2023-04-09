import 'package:creative_task2/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class SliderSection extends StatefulWidget {
  const SliderSection({super.key});

  @override
  State<SliderSection> createState() => _SliderSectionState();
}

class _SliderSectionState extends State<SliderSection> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: height(context) * .2,
      child: ImageSlideshow(
        width: double.infinity,
        height: height(context) * .3,
        initialPage: 0,
        indicatorColor: Colors.black,
        indicatorBackgroundColor: Colors.white,
        onPageChanged: (value) {
          setState(() {
            index = value;
          });
        },
        autoPlayInterval: 3000,
        isLoop: true,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/special.jpg',
              fit: BoxFit.cover,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/sale.jpg',
              fit: BoxFit.cover,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/sale2.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

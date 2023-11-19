import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metal_marketplace/helper/themes.dart';

class HomeComponentTwo extends StatelessWidget {
  const HomeComponentTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {


    return Container(
        child: SingleChildScrollView(
            child: Column(children: [
      Container(
        child: ClipRRect(
          child: CarouselSlider(
            items: [ball, setball, caribea, nikita, solitaire].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage(i),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              );
            }).toList(),
            options: CarouselOptions(
              enableInfiniteScroll: true,
              autoPlay: true,
              viewportFraction: 0.6,
              pageSnapping: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.linearToEaseOut,
              enlargeFactor: 0.3,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
      )
    ])));
  }
}

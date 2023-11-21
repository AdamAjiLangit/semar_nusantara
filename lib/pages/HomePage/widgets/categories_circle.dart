import 'package:flutter/cupertino.dart';
import 'package:metal_marketplace/helper/themes.dart';

Widget CategoriesCircle({
  required context,
  required String image,
  required String textValue,
  required bool isDown,
}) {
  final Size mediaQuery = MediaQuery.of(context).size;
  final double width = mediaQuery.width;
  final double height = mediaQuery.height;

  return Container(
    width: width * 0.25,
    margin: isDown
        ? EdgeInsets.only(top: height * 0.05)
        : EdgeInsets.only(top: height * 0.02),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: width * 0.125,
          height: width * 0.125,
          decoration: const BoxDecoration(
            color: secondaryColor,
            shape: BoxShape.circle,
          ),
          child: Transform.scale(
            scale: 0.7,
            child: Image.asset(image),
          ),
        ),
        SizedBox(height: height * 0.005),
        Text(textValue, style: moneyMiniText),
      ],
    ),
  );
}

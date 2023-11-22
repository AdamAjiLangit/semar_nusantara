import 'package:flutter/cupertino.dart';
import 'package:metal_marketplace/helper/themes.dart';

Widget CategoriesCircle({
  required context,
  required String image,
  required String textValue,
}) {
  final Size mediaQuery = MediaQuery.of(context).size;
  final double width = mediaQuery.width;
  final double height = mediaQuery.height;

  return Container(
    width: width * 0.2,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: width * 0.125,
          height: width * 0.125,
          decoration: const BoxDecoration(
            color: primaryColor,
            shape: BoxShape.circle,
          ),
          child: Transform.scale(
            scale: 1.2,
            child: Image.asset(image),
          ),
        ),
        SizedBox(height: height * 0.005),
        Text(textValue, style: moneyMiniText),

      ],
    ),
  );
}

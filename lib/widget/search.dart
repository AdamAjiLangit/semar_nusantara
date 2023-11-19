import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../helper/textFrom.dart';
import '../helper/themes.dart';

class MySearch extends StatelessWidget implements PreferredSizeWidget {
  final TextEditingController? controller;
  final Function(String) onChanged;

  MySearch({
    required this.controller,
    required this.onChanged,
  });

  @override
  Size get preferredSize => Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;

    return AppBar(
      elevation: 0.0,
      flexibleSpace: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            width: screenWidth,
            margin: EdgeInsets.only(right: 20, left: 20),
            child: mySearchProduct(
              context,
              Icons.search,
              "Search",
              controller,
              onChanged,
            ),
          ),
        ],
      ),
    );

  }
}

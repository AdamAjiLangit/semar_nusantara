import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metal_marketplace/helper/themes.dart';
import 'package:metal_marketplace/pages/CatalogPage/Contoller/CatalogPage_Controller.dart';
// import 'package:metal_marketplace/pages/CatalogPage/Widget/grid_view.dart';

class CatalogComponentTwo extends StatelessWidget {
  final CatalogPageController controller = Get.put(CatalogPageController());



  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = Get.mediaQuery.size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;
    return  DefaultTabController(
      length: 6,
      child: Scaffold(
        body: Container(
          width: width,
          height: height,
          child: Column(
            children: [
              TabBar(
                tabs: [
                  Tab(child: Text('All')),
                  Tab(child: Text('Anting')),
                  Tab(child: Text('Cincin')),
                  Tab(child: Text('Gelang')),
                  Tab(child: Text('Kalung')),
                  Tab(child: Text('Liontin')),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    // Add your content for each tab here
                    // For example: YourWidget(tabTitle: 'All'),
                    // YourWidget(tabTitle: 'Anting'),
                    // YourWidget(tabTitle: 'Cincin'),
                    // ...
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
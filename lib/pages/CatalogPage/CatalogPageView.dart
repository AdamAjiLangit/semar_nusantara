import 'package:flutter/material.dart';
import 'package:metal_marketplace/pages/CatalogPage/Components/catalog_component_one.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CatalogComponentOne()
      ],
    );
  }
}
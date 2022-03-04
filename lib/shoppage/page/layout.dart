import 'package:flutter/material.dart';

import 'detail_page.dart';
import 'home/gridview.dart';
import 'home/listview.dart';

class LayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth <= 800) {
                return ProductList();
              } else if (constraints.maxWidth <= 1200) {
                return ProductGrid(2);
              } else {
                return ProductGrid(4);
              }
            },
          ),
        );
      },
    );
  }
}

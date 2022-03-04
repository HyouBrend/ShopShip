import 'package:flutter/material.dart';
import 'package:shophip/shoppage/data/Produk.dart';
import 'package:shophip/shoppage/page/detail/detail_mobile.dart';
import 'package:shophip/shoppage/page/detail/detail_web.dart';


class DetailPage extends StatelessWidget {
  Product product;

  DetailPage(this.product);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(product);
        } else {
          return DetailMobilePage(product);
        }
      },
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FavoriteButton();
}

class _FavoriteButton extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Color(0xFFFF8AAE),
      ),
      onPressed: () {
        setState(
          () {
            isFavorite = !isFavorite;
          },
        );
      },
    );
  }
}

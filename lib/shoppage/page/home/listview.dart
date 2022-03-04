import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shophip/shoppage/data/Produk.dart';
import 'package:shophip/shoppage/data/data.dart';
import 'package:shophip/shoppage/page/detail_page.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final Product product = listOfProducts[index];
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return DetailPage(product);
                },
              ),
            );
          },
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
            child: Card(
              color: Color(0xff019267),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        flex: 2,
                        child: Image(image: AssetImage(product.imageProducts))),
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              product.title,
                              style: GoogleFonts.convergence(
                                fontWeight: FontWeight.normal,
                                color: Color(0xffffffff),
                                fontSize: 18,
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: 4.0)),
                            Text(
                              product.storeName,
                              style: GoogleFonts.convergence(
                                fontWeight: FontWeight.normal,
                                color: Color(0xffffffff),
                                fontSize: 10,
                              ),
                            ),
                            SizedBox(height: 28.0),
                            Text(
                              product.price,
                              style: GoogleFonts.convergence(
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFFFFD600),
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      itemCount: listOfProducts.length,
    );
  }
}

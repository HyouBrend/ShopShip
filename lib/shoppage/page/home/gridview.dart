import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shophip/shoppage/data/data.dart';

import '../detail_page.dart';

class ProductGrid extends StatelessWidget {
  int totalGrid;

  ProductGrid(this.totalGrid);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: GridView.count(
          crossAxisCount: totalGrid,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: listOfProducts.map(
            (product) {
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
                child: Card(
                  color: Color(0xff019267),
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Image.asset(product.imageProducts),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 36.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.title,
                                style: GoogleFonts.convergence(
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xffffffff),
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 4.0),
                              Text(
                                product.storeName,
                                style: GoogleFonts.convergence(
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xffffffff),
                                  fontSize: 10,
                                ),
                              ),
                              SizedBox(height: 12.0),
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
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}

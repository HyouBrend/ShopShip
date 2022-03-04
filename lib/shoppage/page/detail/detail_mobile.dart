import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shophip/shoppage/data/Produk.dart';
import 'package:shophip/shoppage/page/detail_page.dart';

class DetailMobilePage extends StatelessWidget {
  Product product;

  DetailMobilePage(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(product.imageProducts),
                SafeArea(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Color.fromARGB(0, 255, 255, 255),
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Color(0xff000000),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        FavoriteButton()
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 32.0, top: 12.0),
              child: Text(
                product.price,
                textAlign: TextAlign.left,
                style: GoogleFonts.convergence(
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFFFFD600),
                  fontSize: 22,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 32.0, top: 8.0),
              child: Text(
                product.title,
                textAlign: TextAlign.left,
                style: GoogleFonts.convergence(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff019267),
                  fontSize: 24,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 32.0, right: 10.0, top: 8.0),
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              color: Color(0xFFFF5677),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 16.0, top: 6.0, bottom: 6.0),
                    child: Container(
                      width: 64.0,
                      height: 64.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(product.imageSeller),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.0, top: 6.0, bottom: 6.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          product.storeName,
                          textAlign: TextAlign.left,
                          style: GoogleFonts.convergence(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 4.0),
                        ),
                        Container(
                          padding: EdgeInsets.all(6.0),
                          color: Color(0xABD4D4D4),
                          child: Text(
                            product.city,
                            textAlign: TextAlign.left,
                            style: GoogleFonts.convergence(
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                              fontSize: 8,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 12.0, bottom: 12.0),
              color: Color(0xff019267),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 32.0, left: 16.0),
                    child: Text(
                      "Description",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.convergence(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16.0, bottom: 16.0),
                    child: Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Text(
                        product.description,
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.convergence(
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

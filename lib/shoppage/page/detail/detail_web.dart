import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shophip/shoppage/data/Produk.dart';
import 'package:shophip/shoppage/page/detail_page.dart';


class DetailWebPage extends StatefulWidget {
  Product product;

  DetailWebPage(this.product);

  @override
  _DetailWebPageState createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 52.0),
        child: SingleChildScrollView(
          controller: _controller,
          child: Center(
            child: Container(
              width: screenWidth <= 1300 ? 800 : 1300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Row(
                        children: [
                          Expanded(
                              child: Image.asset(widget.product.imageProducts)),
                          SizedBox(width: 18.0),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      widget.product.price,
                                      style: GoogleFonts.convergence(
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xFFFFD600),
                                        fontSize: 24,
                                      ),
                                    ),
                                    FavoriteButton()
                                  ],
                                ),
                                SizedBox(height: 12.0),
                                Text(
                                  widget.product.title,
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.convergence(
                                    fontWeight: FontWeight.bold,
                                   color: Colors.white,
                                    fontSize: 26,
                                  ),
                                ),
                                SizedBox(height: 28.0),
                                Container(
                                  margin: EdgeInsets.only(top: 16.0),
                                  color: Color(0xFFFF5677),
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.0, top: 6.0, bottom: 6.0),
                                        child: Container(
                                          width: 64.0,
                                          height: 64.0,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    widget.product.imageSeller),
                                                fit: BoxFit.fill),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.0, top: 6.0, bottom: 6.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              widget.product.storeName,
                                              textAlign: TextAlign.left,
                                              style: GoogleFonts.convergence(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                                fontSize: 16,
                                              ),
                                            ),
                                            SizedBox(height: 4.0),
                                            Container(
                                              padding: EdgeInsets.only(
                                                  top: 4.0,
                                                  left: 6.0,
                                                  right: 6.0,
                                                  bottom: 6.0),
                                              color: Color(0xABD4D4D4),
                                              child: Text(
                                                widget.product.city,
                                                textAlign: TextAlign.left,
                                                style: GoogleFonts.convergence(
                                                  fontWeight: FontWeight.normal,
                                                 color: Colors.white,
                                                  fontSize: 10,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 28.0),
                    child: Card(
                      color: Color(0xff019267),
                      child: Container(
                        margin: EdgeInsets.only(top: 12.0, bottom: 12.0),
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
                                  fontSize: 32,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 16.0, bottom: 16.0),
                              child: Padding(
                                padding: EdgeInsets.all(18.0),
                                child: Text(
                                  widget.product.description,
                                  textAlign: TextAlign.justify,
                                  style: GoogleFonts.convergence(
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

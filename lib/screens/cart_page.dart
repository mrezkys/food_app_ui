import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Cart Title
                Text('Total Cart : 3', style: GoogleFonts.poppins(color: Theme.of(context).primaryColor, fontSize: 16, fontWeight: FontWeight.w500)),
                // Cart Item
                Container(
                  margin: EdgeInsets.only(top: 16),
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                  height: 106,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 4,
                        child: Container(
                          height: 82,
                          width: 82,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.grey, image: DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/images/1.jpg'))),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Flexible(
                        flex: 7,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Vegetable Meat', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black)),
                              SizedBox(height: 3),
                              Text('\$ 80.2', style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black.withOpacity(0.75))),
                              SizedBox(height: 3),
                              Row(
                                children: <Widget>[
                                  Container(
                                    height: 14,
                                    width: 14,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    child: IconButton(
                                      padding: EdgeInsets.all(0),
                                      color: Colors.white,
                                      iconSize: 12,
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.remove,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text('1', style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500)),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Container(
                                    height: 14,
                                    width: 14,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    child: IconButton(
                                      padding: EdgeInsets.all(0),
                                      color: Colors.white,
                                      iconSize: 12,
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.add,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            padding: EdgeInsets.all(0),
                            icon: Icon(Icons.delete),
                            iconSize: 24,
                            onPressed: () {},
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                  height: 106,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 4,
                        child: Container(
                          height: 82,
                          width: 82,
                          decoration:
                              BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.transparent, image: DecorationImage(fit: BoxFit.contain, image: AssetImage('assets/images/a.png'))),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Flexible(
                        flex: 7,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Burger Mac ', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black)),
                              SizedBox(height: 3),
                              Text('\$ 20.2', style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black.withOpacity(0.75))),
                              SizedBox(height: 3),
                              Row(
                                children: <Widget>[
                                  Container(
                                    height: 14,
                                    width: 14,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    child: IconButton(
                                      padding: EdgeInsets.all(0),
                                      color: Colors.white,
                                      iconSize: 12,
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.remove,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text('1', style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500)),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Container(
                                    height: 14,
                                    width: 14,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    child: IconButton(
                                      padding: EdgeInsets.all(0),
                                      color: Colors.white,
                                      iconSize: 12,
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.add,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            padding: EdgeInsets.all(0),
                            icon: Icon(Icons.delete),
                            iconSize: 24,
                            onPressed: () {},
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      )
                    ],
                  ),
                )
                // end cart item
              ],
            ),
          ),
          // Cart Total detais
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              color: Colors.white,
              height: 185,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Tax Price', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500)),
                      Text('\$ 2.2', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500))
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Tax Price', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500)),
                      Text('\$ 2.2', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 18, horizontal: 105), primary: Theme.of(context).primaryColor, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/Bold/Buy.svg',
                          color: Colors.white,
                          height: 24,
                          width: 24,
                        ),
                        Text('Checkout', style: GoogleFonts.poppins(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500))
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

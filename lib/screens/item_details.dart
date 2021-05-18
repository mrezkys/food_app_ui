import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app_ui/models/popular_food.dart';
import 'package:food_app_ui/screens/cart_page.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemDetails extends StatefulWidget {
  @override
  _ItemDetailsState createState() => _ItemDetailsState();

  final Food foodData;
  ItemDetails({Key key, @required this.foodData}) : super(key: key);
}

class _ItemDetailsState extends State<ItemDetails> {
  int itemCount = 0;
  void addItem() {
    setState(() {
      itemCount += 1;
    });
  }

  void minItem() {
    setState(() {
      if (itemCount > 0) {
        itemCount -= 1;
      } else {
        itemCount = 0;
      }
    });
  }

  Food data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Stack(
              children: <Widget>[
                ListView(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 380,
                          child: PageView(
                              children: List.generate(widget.foodData.images.length, (index) {
                            return Container(
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(widget.foodData.images[index]), fit: BoxFit.cover)),
                            );
                          })),
                        ),
                        SizedBox(
                          height: 36,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 32.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                widget.foodData.title,
                                style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 20),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                widget.foodData.subtitle,
                                style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 14),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        widget.foodData.rating.toString(),
                                        style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        width: 24,
                                      ),
                                      Icon(
                                        Icons.bar_chart_sharp,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        widget.foodData.calories.toString(),
                                        style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Text('\$ ' + widget.foodData.price.toString(), style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500, color: Theme.of(context).primaryColor))
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Description',
                                style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                widget.foodData.description,
                                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF838383)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 90,
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    color: Colors.white,
                    height: 90,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Total Price', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF909090))),
                            Text('\$ ' + widget.foodData.price.toString(), style: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.w700, color: Theme.of(context).primaryColor))
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Theme.of(context).primaryColor,
                              elevation: 0,
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28))),
                          child: Row(
                            children: <Widget>[
                              SvgPicture.asset(
                                'assets/icons/Bold/Buy.svg',
                                color: Colors.white,
                                height: 24,
                              ),
                              Text(
                                'Add to Cart',
                                style: GoogleFonts.poppins(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              top: (MediaQuery.of(context).orientation == Orientation.portrait) ? 360 : 100,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: Colors.white,
                ),
                margin: EdgeInsets.symmetric(horizontal: (MediaQuery.of(context).size.width / 2) - 70),
                width: 140,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 39,
                      width: 39,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFEBEBEB), width: 4),
                        borderRadius: BorderRadius.circular(100),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: IconButton(
                        color: Colors.white,
                        padding: EdgeInsets.all(0),
                        onPressed: minItem,
                        icon: Icon(
                          Icons.remove,
                        ),
                      ),
                    ),
                    Text(itemCount.toString(), style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 18)),
                    Container(
                      height: 39,
                      width: 39,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFEBEBEB), width: 4),
                        borderRadius: BorderRadius.circular(100),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: IconButton(
                        padding: EdgeInsets.all(0),
                        color: Colors.white,
                        onPressed: addItem,
                        icon: Icon(
                          Icons.add,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(color: Colors.white.withOpacity(0.25), borderRadius: BorderRadius.circular(12)),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ),
                    Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(color: Colors.white.withOpacity(0.25), borderRadius: BorderRadius.circular(12)),
                        child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            'assets/icons/Bold/Buy.svg',
                            color: Colors.white,
                          ),
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

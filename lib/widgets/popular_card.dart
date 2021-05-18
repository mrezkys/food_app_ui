import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/item_details.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:food_app_ui/models/popular_food.dart';

class PopularCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 32, top: 12),
      height: 280.0,
      child: ListView.builder(
        itemCount: popularFood.length,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ItemDetails(
                        foodData: popularFood[index],
                      )));
            },
            child: Container(
              margin: EdgeInsets.only(right: 12.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: Colors.black,
                  height: 280.0,
                  width: 274.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 164.0,
                        width: 274.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(popularFood[index].images[0]),
                        )),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                        width: 274.0,
                        color: Theme.of(context).accentColor,
                        height: 116,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(popularFood[index].title, style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 16)),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              popularFood[index].subtitle,
                              style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 14, color: Color(0xFF7D7D7D)),
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
                                      popularFood[index].rating.toString(),
                                      style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
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
                                      popularFood[index].calories.toString(),
                                      style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                Text('\$' + popularFood[index].price.toString(), style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600, color: Theme.of(context).primaryColor))
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

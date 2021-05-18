import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app_ui/models/recomendation_item.dart';
import 'package:food_app_ui/widgets/custom_tab_indicator.dart';
import 'package:food_app_ui/widgets/popular_card.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 24.0,
          ),
          // searchbox
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            margin: EdgeInsets.only(left: 32, right: 32),
            height: 52,
            decoration: BoxDecoration(color: Colors.grey.withOpacity(0.1), borderRadius: BorderRadius.circular(8)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/icons/Light/Search.svg',
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text('Search your food...', style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black.withOpacity(0.5)))
                  ],
                ),
                SvgPicture.asset(
                  'assets/icons/Light/Filter.svg',
                  color: Colors.black,
                )
              ],
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          // custom Menu Tab Bar
          Container(
            height: 30,
            padding: EdgeInsets.only(left: 20.0),
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              labelColor: Theme.of(context).primaryColor,
              unselectedLabelColor: Colors.black.withOpacity(0.75),
              labelStyle: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 14.0),
              unselectedLabelStyle: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 14.0),
              indicator: RoundedRectangleTabIndicator(
                color: Theme.of(context).primaryColor,
                weight: 3.0,
                width: 30.0,
              ),
              tabs: [
                Tab(
                  child: Container(
                    child: Text('Food'),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text('Drink'),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text('Cake'),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text('Appetizer'),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text('Ice Cream'),
                  ),
                ),
              ],
            ),
          ),

          // TabBarView for Custom Menu Tab Bar
          Container(
            height: 344.0,
            child: TabBarView(controller: _tabController, children: [
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 32.0),
                    height: 24,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'Popular Food',
                          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text('view all', style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.5))),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 8,
                  ),

                  // popular food section
                  PopularCard(),
                ],
              ),
              Text('2nd screen'),
              Text('3nd screen'),
              Text('4nd screen'),
              Text('5nd screen'),
            ]),
          ),

          SizedBox(
            height: 20,
          ),
          // Recomended for you
          Container(
            margin: EdgeInsets.symmetric(horizontal: 32.0),
            height: 24,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  'Recommended For You',
                  style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text('view all', style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.5))),
              ],
            ),
          ),

          SizedBox(
            height: 8,
          ),

          // Recomended item
          Container(
            margin: EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(
                recomendationItem.length,
                (index) => Container(
                  width: double.infinity,
                  height: 92,
                  padding: EdgeInsets.symmetric(horizontal: 18.0),
                  decoration: BoxDecoration(color: Theme.of(context).accentColor, borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: <Widget>[
                      Expanded(flex: 3, child: Container(child: Image.asset(recomendationItem[index].images[0]))),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 9,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(recomendationItem[index].title, style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500)),
                              Text(recomendationItem[index].subtitle, style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF7D7D7D))),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        color: Theme.of(context).primaryColor,
                                        size: 18,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        recomendationItem[index].ratings.toString(),
                                        style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '\$' + recomendationItem[index].price.toString(),
                                    style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600, color: Theme.of(context).primaryColor),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

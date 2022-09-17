

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:static_page_assignment/widget/reaction_widget.dart';
import 'package:static_page_assignment/widget/related_widget.dart';
import 'package:static_page_assignment/widget/research_widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: Padding(
                  padding: const EdgeInsets.only(left: 18, right: 28,bottom: 15),
                  child: LoginButton(
                    function: () async {
                      // _navigationService.navigateTo(Routes.bottomNavBar);
                     
                    },
                    name: "Verify",
                  ),
                ),
        body: Column(
          children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 350,
            child: Stack(
              children: [
                Image.asset("assets/Vector.png",fit: BoxFit.fill,width: MediaQuery.of(context).size.width,height: 350,),
                Image.asset("assets/Rectangle 19.png",fit: BoxFit.fill,width: MediaQuery.of(context).size.width,height: 350,),
                Positioned(
                  top: 10,
                  right: 10,
                  child: SvgPicture.asset("assets/arrow-redo.svg",color: Colors.white,)),
                Positioned(
                  bottom: 20,
                  right: 0,
                  left: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(left :18.0,right: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Flexible(
                          flex: 1,
                          child:  Text("Will China invade Taiwan\nbefore end september? ",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w700),)),
                        SvgPicture.asset(
                            "assets/Filter 1.svg",
                            color: Colors.white,
                          )
                      ],
                    ),
                  ))
              ],
            ),
          
          ),
          const TradingBanner(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:  Container(
              decoration:  BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey.withOpacity(0.3),width: 1))
              ),
              child: const TabBar(
                labelColor: Color.fromRGBO(228, 50, 193, 1),
                unselectedLabelColor: Color.fromRGBO(104, 118, 132, 1),
                
                indicatorColor: Color.fromRGBO(228, 50, 193, 1),
                tabs: [
                Tab(text: "Research & News",),
                Tab(text: "Reactions",),
                Tab(text: "Related",)
              ]),
            ),
          ),
          const Expanded(
            child: TabBarView(
              children: [
                ResearchTab(),
                ReactionsTab(),
                RelatedTab()
        
              ],)
          ),
        ]),
      ),
    );
  }
}



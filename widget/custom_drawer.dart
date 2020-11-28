import 'package:flutter/material.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:minimart/tile/drawer_tile.dart';

class CustomDrawer extends StatelessWidget {

  final PageController pageController;
  CustomDrawer(this.pageController);


  @override
  Widget build(BuildContext context) {

    Widget _buildDrawerBack() => Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color.fromARGB(255,203,236,241),
                Colors.white
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
          )
      ),
    );

    return Drawer(
      child: Stack(
        children: [
          _buildDrawerBack(),
          ListView(
            padding: EdgeInsets.only(left: 32.0,top: 18.0),
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                padding: EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 8.0),
                height: 170.0,
                child: Stack(
                  children: [
                    Positioned(
                        top: 8.0,
                        left: 0.0,
                        child: Text("MiniMart",
                          style: TextStyle(
                              fontSize: 34.0, fontWeight: FontWeight.bold),
                        ),
                    ),
                    Positioned(
                        left: 0.0,
                        bottom: 0.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Welcome back! ",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            GestureDetector(
                              child: Text("Enter or Register >> ",
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onTap: (){

                              },
                            )
                          ],
                        )),
                  ],
                ),
              ),
              Divider(),
              DrawerTile(Icons.home, "Home", pageController, 0),
              DrawerTile(Icons.list, "Catalog", pageController, 1),
              DrawerTile(Icons.location_on, "Stores", pageController, 2),
              DrawerTile(Icons.playlist_add_check, "Orders", pageController, 3),

            ],
          )
        ],

      ),
    );
  }
}

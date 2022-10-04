import 'package:flutter/material.dart';

import '../screens/favorite_screen.dart';
import '../screens/home_screen.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.black),
      child: Drawer(
          child: SingleChildScrollView(child: Column(
            children: <Widget>[
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.black,
                ),
                child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 100,
                          width: 200,
                          child: Image.asset("images/logo_hype.png"),
                        ),
                        const Text(
                          "Hypando suas compras",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20, left: 20),
                child: Divider(
                  color: Colors.white,
                ),
              ),
              ListTile(
                tileColor: Colors.black.withOpacity(0.5),
                leading:const Icon(
                  Icons.home,
                  size: 30,
                  color: Colors.white,
                ),
                title:const Text(
                  'Inicio',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                onTap: () => {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => HomeScreen()))
                },
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20, left: 20),
                child: Divider(
                  color: Colors.white,
                ),
              ),
              ListTile(
                tileColor: Colors.black.withOpacity(0.5),
                leading:const Icon(
                  Icons.favorite,
                  size: 30,
                  color: Colors.white,
                ),
                title:const Text(
                  'Favoritos',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                onTap: () => {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => FavoriteScreen()))
                },
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20, left: 20),
                child: Divider(
                  color: Colors.white,
                ),
              ),
              ListTile(
                tileColor: Colors.black.withOpacity(0.5),
                leading:const Icon(
                  Icons.add_box,
                  size: 30,
                  color: Colors.white,
                ),
                title:const Text(
                  'Sobre',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                onTap: () => {

                },
              )
            ],
          ),)

      ),
    );
  }
}

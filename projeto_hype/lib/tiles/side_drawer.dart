import 'package:flutter/material.dart';
import '../screens/favorite_screen.dart';
import '../screens/home_screen.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: const Color.fromARGB(255, 28, 184, 145)),
      child: Drawer(
          child: SingleChildScrollView(child: Column(
            children: <Widget>[
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Center(
                    child: Column(
                      children: [
                        Image.asset("images/logo_hype.png",fit: BoxFit.cover,height: 130,),
                      ],
                    )),
              ),


              const Padding(
                padding: EdgeInsets.only(right: 20, left: 20),
                child: Divider(
                  color: Color.fromARGB(255, 218, 218, 218),
                ),
              ),
              ListTile(
                tileColor:const Color.fromARGB(255, 28, 184, 145),
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
                  Navigator.of(context).push(
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
                tileColor: const Color.fromARGB(255, 28, 184, 145),
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
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const FavoriteScreen()))
                },
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20, left: 20),
                child: Divider(
                  color: Colors.white,
                ),
              ),
              ListTile(
                tileColor: const Color.fromARGB(255, 28, 184, 145),
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
              ), const Padding(
                padding: EdgeInsets.only(right: 20, left: 20),
                child: Divider(
                  color: Colors.white,
                ),
              ),
            ],
          ),)

      ),
    );
  }
}

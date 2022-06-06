
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Column(
            children: [
              CircleAvatar(
                radius: 45,
              ),
              SizedBox(height: 5,),
              Text("Bibliothéque BPI"),

            ],
          ),
          ),
          Divider(height: 5,color: Colors.black,)
          ,
          ListTile(
            title: Text("Home"),
            onTap: (){
              Navigator.pushNamed(context, "/");
            },
          ),
          ListTile(
            title: Text("Livres"),
            onTap: (){
              Navigator.pushNamed(context, "/livres");
            },
          ),
          ListTile(
            title: Text("Adherents"),
            onTap: (){
              Navigator.pushNamed(context, "/adherents");
            },
          )],
      ),
    );
  }
}
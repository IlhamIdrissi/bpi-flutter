
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Bibliothéque BPI")),
      body: Center(
        child: Text("Welcom to BPI"),
      ),
      drawer: AppDrawer(),
    );
  }
}


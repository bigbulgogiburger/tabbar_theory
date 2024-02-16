import 'package:flutter/material.dart';
import 'package:tabbar_theory/screen/basic_appbar_tabbar_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('home_screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=> BasicAppBarTabBarScreen()));

            }, child: Text('Basic AppBar TabBar Screen'),)
          ],
        ),
      )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tabbar_theory/const/tabs.dart';

class BasicAppBarTabBarScreen extends StatelessWidget {
  const BasicAppBarTabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: TABS.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('BasicAppBarScreen'),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TabBar(
                    indicatorColor: Colors.red,
                    indicatorWeight: 4.0,
                    indicatorSize: TabBarIndicatorSize.label,
                    isScrollable: false,
                    labelColor: Colors.purple,
                    unselectedLabelColor: Colors.grey,
                    labelStyle: TextStyle(fontWeight: FontWeight.w700),
                    unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w100),
                    tabs: TABS
                        .map((e) => Tab(
                      icon: Icon(e.icon),
                      child: Text(e.label),
                    ))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: TABS
                .map((e) => Center(
                      child: Icon(e.icon),
                    ))
                .toList()),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tabbar_theory/const/tabs.dart';

class AppBarUsingController extends StatefulWidget {
  const AppBarUsingController({super.key});

  @override
  State<AppBarUsingController> createState() => _AppBarUsingControllerState();
}

class _AppBarUsingControllerState extends State<AppBarUsingController>
    with TickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(
      length: TABS.length,
      vsync: this,
    );

    //controller의 상태가 변경이 될때마다 빌드를 다시함( 해당 프로젝트에서는 index)
    tabController.addListener(() {
      setState(() {

    });});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text('Appbar using controller'),
        bottom: TabBar(
          controller: tabController,
          tabs: TABS
              .map((e) => Tab(
                    height: 80,
                    icon: Icon(e.icon),
                    child: Text(e.label),
                  ))
              .toList(),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: TABS
            .map((e) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(e.icon),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if(tabController.index != 0 )
                          ElevatedButton(
                          onPressed: () {
                            tabController.animateTo(
                              tabController.index-1
                            );
                          },
                          child: Text('이전'),
                        ),
                        const SizedBox(width: 16.0,),
                        if(tabController.index != TABS.length-1 )
                        ElevatedButton(
                          onPressed: () {
                            tabController.animateTo(
                                tabController.index+1);
                          },
                          child: Text('다음'),
                        ),
                      ],
                    ),

                  ],
                ))
            .toList(),
      ),
    );
  }
}

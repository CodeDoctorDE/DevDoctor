import 'package:devdoctor/widgets/main-actions.dart';
import 'package:devdoctor/widgets/search-action.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            expandedHeight: 400.0,
            floating: false,
            pinned: true,
            actions: <Widget>[SearchAction(), MainActions()],
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("Welcome to Dev-Doctor",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  )),
              background: Container(
                  margin: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
                  child: Image.asset(
                    "images/logo-dark.png",
                  )),
            ),
          )
        ];
      },
      body: Center(
        child: Text("Sample Text"),
      ),
    ));
  }
}

import 'package:devdoctor/widgets/main-actions.dart';
import 'package:devdoctor/widgets/search-action.dart';
import 'package:flutter/material.dart';
import 'package:devdoctor/theme.dart' as theme;
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  expandedHeight: 400.0,
                  floating: false,
                  pinned: true,
                  actions: <Widget>[SearchAction(), MainActions()],
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor.withAlpha(200),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text("Welcome to Dev-Doctor",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ))),
                    background: Container(
                        margin: EdgeInsets.fromLTRB(10, 20, 10, 84),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: theme.mdcThemeSurface),
                        child: Image.asset(
                          "images/logo-dark.png",
                        )),
                  ),
                )
              ];
            },
            body: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Card(
                    color: Theme.of(context).accentColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    child: Padding(
                      padding: const EdgeInsets.all(64.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "PAGE OF THE DAY",
                            style: Theme.of(context).accentTextTheme.headline5,
                          ),
                          Text("JavaScript",
                              style:
                                  Theme.of(context).accentTextTheme.headline6),
                          Text("Text to javascript.",
                              style:
                                  Theme.of(context).accentTextTheme.bodyText2),
                          RaisedButton(
                              color: Theme.of(context).primaryColor,
                              child: Text("Learn more...",
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .button),
                              onPressed: () {})
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Card(
                    color: Theme.of(context).accentColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    child: Padding(
                      padding: const EdgeInsets.all(64.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "USER OF THE DAY",
                            style: Theme.of(context).accentTextTheme.headline5,
                          ),
                          Text("CodeDoctor",
                              style:
                                  Theme.of(context).accentTextTheme.headline6),
                          Text("Text to CodeDoctor.",
                              style:
                                  Theme.of(context).accentTextTheme.bodyText2),
                          RaisedButton(
                              color: Theme.of(context).primaryColor,
                              child: Text("Learn more...",
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .button),
                              onPressed: () {})
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Card(
                    color: Theme.of(context).accentColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    child: Padding(
                      padding: const EdgeInsets.all(64.0),
                      child: Column(
                        children: [
                          Text("STATISTICS",
                              style:
                                  Theme.of(context).accentTextTheme.headline6),
                          Text("500 ARTICLES",
                              style:
                                  Theme.of(context).accentTextTheme.bodyText2),
                          Text("50 CHANGES",
                              style:
                                  Theme.of(context).accentTextTheme.bodyText2),
                          Text("100 TOTAL USERS",
                              style:
                                  Theme.of(context).accentTextTheme.bodyText2),
                          RaisedButton(
                              color: Theme.of(context).primaryColor,
                              child: Text("Learn more...",
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .button),
                              onPressed: () {})
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )));
  }
}

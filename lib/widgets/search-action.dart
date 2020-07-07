import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SearchAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(MdiIcons.magnify),
        onPressed: () => showSearch(context: context, delegate: DataSearch()));
  }
}

class DataSearch extends SearchDelegate<String> {
  final List<String> sampleData = [
    "C",
    "C#",
    "C++",
    "Python",
    "HTML",
    "HAML",
    "Java",
    "JavaScript"
  ];
  final List<String> recentData = ["Java", "JavaScript"];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(MdiIcons.close),
        onPressed: () => query = "",
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return ListView();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentData
        : sampleData
            .where((element) =>
                element.toLowerCase().startsWith(query.toLowerCase()))
            .toList();
    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) => ListTile(
          onTap: () => showResults(context),
          leading: Icon(MdiIcons.fileOutline),
          title: RichText(
              text: TextSpan(
                  text: suggestionList[index].substring(0, query.length),
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(fontWeight: FontWeight.bold),
                  children: [
                TextSpan(
                    text: suggestionList[index].substring(query.length),
                    style: Theme.of(context).textTheme.bodyText1)
              ]))),
    );
  }
}

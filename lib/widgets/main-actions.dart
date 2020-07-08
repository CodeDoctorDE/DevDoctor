import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MainActions extends StatelessWidget {
  final dynamic items = [
    {"text": "Dashboard", "icon": MdiIcons.viewDashboard, "value": "settings"},
    {"text": "Settings", "icon": MdiIcons.cogs, "value": "settings"},
    {"text": "Profile", "icon": MdiIcons.account, "value": "profile"},
    {
      "text": "My wikis",
      "icon": MdiIcons.fileMultipleOutline,
      "value": "profile"
    },
    {
      "text": "Downloads",
      "icon": MdiIcons.downloadMultiple,
      "value": "profile"
    },
    {"text": "Logout", "icon": MdiIcons.logoutVariant, "value": "logout"}
  ];
  @override
  Widget build(BuildContext context) {
    void handleClick(String value) {
      switch (value) {
        case 'Logout':
          break;
        case 'Settings':
          break;
      }
    }

    return PopupMenuButton<String>(
      onSelected: handleClick,
      icon: Icon(MdiIcons.dotsVertical),
      itemBuilder: (BuildContext context) {
        return items.map<PopupMenuItem<String>>((var item) {
          return PopupMenuItem<String>(
            value: item["value"],
            child: Row(children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                child: Icon(item["icon"],
                    color: Theme.of(context).iconTheme.color,
                    size: Theme.of(context).iconTheme.size),
              ),
              Text(item["text"])
            ]),
          );
        }).toList();
      },
    );
  }
}

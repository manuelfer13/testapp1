import 'package:flutter/material.dart';

import 'package:testapp/models/models.dart';
import 'package:testapp/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  var mOptions = AppRoutes.menuOptions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        elevation: 0,
      ),
      body: ListView.separated(
        itemCount: AppRoutes.menuOptions.length,
        separatorBuilder: (_, __) => Divider(),
        itemBuilder: (BuildContext context, int i) => ListTile(
          title: Text(AppRoutes.menuOptions[i].name),
          leading: Icon(AppRoutes.menuOptions[i].icon),
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.menuOptions[i].route);
          },
        ),
      ),
    );
  }
}

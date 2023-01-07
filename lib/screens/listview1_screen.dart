import 'package:flutter/material.dart';

List names = [
  'Manuel',
  'Andrea',
  'Maria',
  'Luisa',
  'Carmen',
  'Manuel',
  'Andrea',
  'Maria',
  'Luisa',
  'Carmen',
  'Miguel'
];

class lv_1 extends StatelessWidget {
  const lv_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List1 Screen"),
        elevation: 0,
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (_, __) => Divider(),
        itemBuilder: (BuildContext context, int index) => ListTile(
          title: Text('Mi lista ramdon'),
          leading: Icon(Icons.add_rounded),
          onTap: () {},
        ),
      ),
    );
  }
}

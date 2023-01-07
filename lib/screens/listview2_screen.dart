import 'package:flutter/material.dart';

List players = [
  'Messi',
  'Pirlo',
  'Pique',
  'Mbappe',
  'Neymar',
  'Cr7',
  'Rooney',
  'Isco',
  'Coke',
  'Dybala',
  'Alves'
];

class lv_2 extends StatelessWidget {
  const lv_2({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: ((context, int index) => ListTile(
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.indigo,
              ),
              title: Text(players[index]),
            )),
        separatorBuilder: ((_, __) => Divider()),
        itemCount: players.length);
  }
}

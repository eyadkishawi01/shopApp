import 'package:flutter/material.dart';
import 'package:shopapp/lists.dart';

class DrawerListTile extends StatelessWidget {
  DrawerListTile(
      {Key? key, required this.icon, required this.onTap, required this.text})
      : super(key: key);
  IconData icon;
  String text;
  Function onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0, top: 15),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.black,
        ),
        title: Text(
          text,
          style: const TextStyle(color: Colors.black, fontSize: 19),
        ),
        onTap: () => onTap(),
      ),
    );
  }
}

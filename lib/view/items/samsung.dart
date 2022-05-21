import 'package:flutter/material.dart';
import 'package:shopapp/lists.dart';
import 'package:shopapp/widget/item.dart';

class Samsung extends StatelessWidget {
  Samsung({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cateTxt[0]),
        backgroundColor: const Color.fromARGB(255, 108, 99, 225),
      ),
      body:
          Item(disc: desc[0], imglink: samsungImg.toList(), title: cateTxt[0]),
    );
  }
}

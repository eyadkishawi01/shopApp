import 'package:flutter/material.dart';

import '../../lists.dart';
import '../../widget/item.dart';

class Lenovo extends StatelessWidget {
  const Lenovo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cateTxt[5]),
        backgroundColor: Color.fromARGB(255, 108, 99, 225),
      ),
      body: Item(disc: desc[5], imglink: lenovo.toList(), title: cateTxt[5]),
    );
  }
}

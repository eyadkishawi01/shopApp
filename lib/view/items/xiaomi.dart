import 'package:flutter/material.dart';

import '../../lists.dart';
import '../../widget/item.dart';

class Xiaomi extends StatelessWidget {
  const Xiaomi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cateTxt[4]),
        backgroundColor: Color.fromARGB(255, 108, 99, 225),
      ),
      body: Item(disc: desc[4], imglink: xiaomi.toList(), title: cateTxt[4]),
    );
  }
}

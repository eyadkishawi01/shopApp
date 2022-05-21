import 'package:flutter/material.dart';

import '../../lists.dart';
import '../../widget/item.dart';

class Oppo extends StatelessWidget {
  const Oppo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cateTxt[2]),
        backgroundColor: const Color.fromARGB(255, 108, 99, 225),
      ),
      body: Item(disc: desc[2], imglink: oppo.toList(), title: cateTxt[2]),
    );
  }
}

import 'package:flutter/material.dart';

import '../../lists.dart';
import '../../widget/item.dart';

class IPhone extends StatelessWidget {
  const IPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cateTxt[1]),
        backgroundColor: const Color.fromARGB(255, 108, 99, 225),
      ),
      body: Item(disc: desc[1], imglink: iphone.toList(), title: cateTxt[1]),
    );
  }
}

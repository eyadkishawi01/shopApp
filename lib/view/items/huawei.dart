import 'package:flutter/material.dart';

import '../../lists.dart';
import '../../widget/item.dart';

class Huawei extends StatelessWidget {
  const Huawei({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cateTxt[3]),
        backgroundColor: const Color.fromARGB(255, 108, 99, 225),
      ),
      body: Item(disc: desc[3], imglink: huawei.toList(), title: cateTxt[3]),
    );
  }
}

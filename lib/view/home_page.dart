import 'package:flutter/material.dart';
import 'package:shopapp/view/items/IPhone.dart';
import 'package:shopapp/view/items/huawei.dart';
import 'package:shopapp/view/items/lenovo.dart';
import 'package:shopapp/view/items/oppo.dart';
import 'package:shopapp/view/items/samsung.dart';
import 'package:shopapp/view/items/xiaomi.dart';
import 'package:shopapp/widget/category_container.dart';
import 'package:shopapp/lists.dart';
import 'package:shopapp/widget/navigation_drawer.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
            color: Color.fromARGB(255, 108, 99, 225), size: 25),
        elevation: 0,
        title: const Text(
          "All Categories",
          style: TextStyle(
              color: Color.fromARGB(255, 108, 99, 225),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: cateTxt.length,
        itemBuilder: (context, index) => CateContainer(
          text: cateTxt[index].toString(),
          onTap: () => {
            index == 0
                ? Get.to(Samsung())
                : index == 1
                    ? Get.to(const IPhone())
                    : index == 2
                        ? Get.to(const Oppo())
                        : index == 3
                            ? Get.to(const Huawei())
                            : index == 4
                                ? Get.to(const Xiaomi())
                                : Get.to(const Lenovo()),
          },
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
      ),
      drawer: NavigationDrawer(),
    );
  }
}

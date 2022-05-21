import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shopapp/view/log_in_page.dart';
import 'package:shopapp/widget/drawer_listtile.dart';
import 'package:get/get.dart';
import 'package:shopapp/lists.dart';

class NavigationDrawer extends StatelessWidget {
  NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SafeArea(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 108, 99, 225).withOpacity(.3),
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: const Center(
                child: Text(
              "Menu",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )),
          ),
          const SizedBox(height: 20),
          Flexible(
            child: ListView.builder(
              itemCount: menuText.length,
              itemBuilder: (context, index) => Column(
                children: [
                  DrawerListTile(
                      icon: menuIcon[index],
                      onTap: () {
                        FirebaseAuth.instance.signOut();
                      },
                      text: menuText[index]),
                  const Divider(indent: 60, endIndent: 60),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}

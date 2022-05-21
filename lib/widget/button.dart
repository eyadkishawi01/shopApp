import 'package:flutter/material.dart';

class prplButton extends StatelessWidget {
  prplButton(
      {Key? key, required this.height, required this.ontap, required this.txt})
      : super(key: key);
  double height;
  Function ontap;
  String txt;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => ontap(),
        child: Container(
            width: double.infinity,
            height: height,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromARGB(255, 108, 99, 225),
                    Color.fromARGB(255, 157, 151, 232),
                  ],
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 131, 131, 143),
                    blurRadius: 17,
                    offset: Offset(0, 4), // Shadow position
                  ),
                ],
                borderRadius: BorderRadius.circular(20)),
            child: Center(
                child: Text(
              txt,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ))));
  }
}

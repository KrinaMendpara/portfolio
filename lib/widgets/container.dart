import 'package:flutter/material.dart';

class Containers extends StatelessWidget {
  Containers({required this.path, required this.text, required this.subtext, this.boxColor = false, super.key});
  String path;
  String text;
  String subtext;
  bool boxColor;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Container(
          width: 180,
          height: 170,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: (boxColor == true) ? const Color(0x1A7B4AE2) : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
            border: (boxColor == true)
              ? null
              : Border.all(
                width: 1,
                color: const Color(0x807B4AE2),
              ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Image.asset(
                  path,
                  height: 60,
                  width: 60,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 12, 8, 0),
                child: Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                  ),
                ),
              ),
              Text(
                subtext,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 22,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

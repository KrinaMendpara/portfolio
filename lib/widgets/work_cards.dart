import 'package:flutter/material.dart';
import 'package:portfolio/widgets/text_container.dart';


class WorkCards extends StatelessWidget {
  WorkCards({required this.text, required this.path, this.first = false,super.key});
  bool first;
  String path;
  String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 460,
          width: 300,
          padding: const EdgeInsets.all(30),
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: const Color(0x807B4AE2),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Move.it',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w200,
                    color: Colors.white70,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50,bottom: 20),
                child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: TextContainer(
                          text: (first == true) ? ' Online ' : ' Flutter ',
                          boxColor: first ? true : false,
                        ),
                      ),
                      TextContainer(
                        text: 'Typescript',
                      )
                    ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                path,
                fit: BoxFit.fill,
                  height: 200,
                  width: 300,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

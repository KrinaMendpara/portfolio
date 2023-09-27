import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/widgets/text_container.dart';

class Recomendacoes extends StatelessWidget {
  const Recomendacoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextContainer(
          text: '💬 Recommendations',
        ),
        const Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                'in deposition',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Row(
              children: [
                IconContainer(
                  boxColor: true,
                  widget: Icon(
                    Icons.keyboard_arrow_left,
                    size: 50,
                    color: Color(0x807B4AE2),
                  ),
                ),
                IconContainer(
                  widget: Icon(
                    Icons.keyboard_arrow_right,
                    size: 50,
                    color: Color(0x807B4AE2),
                  ),
                )
              ],
            ),

          ],
        ),
        Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ProfileContainers(),
                ProfileContainers(boxColor: true),
                ProfileContainers(),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class ProfileContainers extends StatelessWidget {
  ProfileContainers({
    this.boxColor = false,
    super.key,
  });
  bool boxColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 300,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: (boxColor == true) ? const Color(0x1A7B4AE2) : Colors.transparent,
        border: (boxColor == true)
            ? null
            : Border.all(
          color: const Color(0x807B4AE2),
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.format_quote_outlined,
            color: Color(0x807B4AE2),
            size: 25,
          ),
          Text(
            'Washington is always studying and learning,\n'
                'looking to improve what he does. This is your best\n'
                'quality. It is always in search of its objectives, with\n'
                'focus and organization. Besides, technically, what if\n'
                ' proposes to do, do it well. Ever!',
            style: TextStyle(
              fontSize: 10,
              color: Color(0x80FFFFFF),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white70,
                  child: FaIcon(
                    FontAwesomeIcons.userGraduate,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Romario Lima',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      'Computer engineer',
                      style: TextStyle(
                        fontSize: 10,
                        color: Color(0x807B4AE2),
                      ),
                    )
                  ],
                ),
              )

            ],
          )
        ],
      ),
    );
  }
}

class IconContainer extends StatelessWidget {
  const IconContainer({
    required this.widget, this.boxColor = false, super.key,
  });

  final bool boxColor;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: (boxColor == true) ? const Color(0x1A7B4AE2) : Colors.transparent,
        border: (boxColor == true)
            ? null
            : Border.all(
          color: const Color(0x807B4AE2),
        ),
      ),
      child: widget,
    );
  }
}

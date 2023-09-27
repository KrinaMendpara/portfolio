import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/widgets/text_container.dart';


class Skills extends StatelessWidget {
  Skills({super.key});

  List<Widget> iconList = [
    const FaIcon(FontAwesomeIcons.squareJs, size: 40, color: Color(0x807B4AE2),),
    Image.asset('assets/images/icons/type_script.png', fit: BoxFit.fill, height:35,),
    const FaIcon(FontAwesomeIcons.css3Alt, size: 40, color: Color(0x807B4AE2),),
    const FaIcon(FontAwesomeIcons.html5, size: 40, color: Color(0x807B4AE2),),
    const FaIcon(FontAwesomeIcons.php, size: 40, color: Color(0x807B4AE2),),
    const FaIcon(FontAwesomeIcons.nodeJs, size: 40, color: Color(0x807B4AE2),),
    const FaIcon(FontAwesomeIcons.python, size: 40, color: Color(0x807B4AE2),),
  ];

  List<Widget> iconList2 = [
    const FaIcon(FontAwesomeIcons.figma, size: 40, color: Color(0x807B4AE2),),
    const FaIcon(FontAwesomeIcons.github, size: 40, color: Color(0x807B4AE2),),
    const FaIcon(FontAwesomeIcons.c, size: 40, color: Color(0x807B4AE2),),
    const FaIcon(FontAwesomeIcons.android, size: 40, color: Color(0x807B4AE2),),
    Image.asset(
      'assets/images/icons/flutter_logo.png',
      fit: BoxFit.fill,
      height:40,
      color: const Color(0x807B4AE2),
    ),
    Image.asset(
      'assets/images/icons/dart_logo.png',
      fit: BoxFit.fill,
      height:40,
      color: const Color(0x807B4AE2),
    ),

  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: (width > 600)
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        children: [
          TextContainer(
            text: (width > 600)
                ? '🧑‍💻 Skills · Experiences'
                : '🧑‍💻 Skills',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Text(
              (width > 600)
                ? 'Technologies and skills'
                : 'Technologies \nand skills',
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Techs I don`t use every day',
              style: TextStyle(
                fontSize: 15,
                color: Color(0x80FFFFFF),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
             children: [
               ...List.generate(iconList.length, (index) => Padding(
                 padding: const EdgeInsets.fromLTRB(0, 30, 30, 30),
                 child: iconList[index],
               ),
               ),
             ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Other techs I`ve done project`s with',
              style: TextStyle(
                color: Color(0x80FFFFFF),
                fontSize: 15,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(iconList2.length, (index) => Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 30, 30),
                  child: iconList2[index],
                ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/widgets/text_container.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return (width > 600)
      ? Padding(
          padding: const EdgeInsets.only(top: 30),
          child : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 20, 50),
                    child: CircleAvatar(
                      backgroundColor: Colors.white60,
                      radius: 120,
                      child: FaIcon(
                        FontAwesomeIcons.userGraduate,
                        color: Colors.black,
                        size: 180,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextContainer(
                        text: '🧐 About me',
                      ),
                      const Text(
                        'Krina \nMendpara',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 50, 20),
                        child: Text(
                          '👋 I`m a creative that appreciates having a good'
                          'time and works hard to accomplish everything'
                          'well. I love to learn, and I work hard to make'
                          'the lives of others around me better.',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white60,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
      )
      : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: CircleAvatar(
                backgroundColor: Colors.white60,
                radius: 100,
                child: FaIcon(
                  FontAwesomeIcons.userGraduate,
                  color: Colors.black,
                  size: 120,
                ),
              ),
            ),
            TextContainer(
              text: '🧐 About me',
            ),
            const Text(
              'Krina \nMendpara',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                '👋 I`m a creative that appreciates having a good\n'
                    'time and works hard to accomplish everything\n'
                    'well. I love to learn, and I work hard to make\n'
                    'the lives of others around me better.',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white60,
                ),
              ),
            ),
          ],
    );
  }
}

class ColumnText extends StatelessWidget {
  ColumnText({
    required this.text,
    required this.text1,
    super.key,
  });
  String text;
  String text1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: Column(
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 12,
              color: Color(0xFF7B4AE2),
            ),
          ),
          Text(
            text1,
            style: const TextStyle(
                fontSize: 20,
                color: Color(0xFF7B4AE2),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/widgets/about_me.dart';
import 'package:portfolio/widgets/contact.dart';
import 'package:portfolio/widgets/container.dart';
import 'package:portfolio/widgets/skills.dart';
import 'package:portfolio/widgets/text_container.dart';
import 'package:portfolio/widgets/work_cards.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  ScrollController scrollController = ScrollController();

  Future<void> getData() async {
    final url = Uri.parse('https://drive.google.com/file/d/1BrVxhB9IP216tuFpVq9NKSJTAr_AKZKY/view?usp=drivesdk');
    await launchUrl(url);
    print(url);
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    print(width);
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF090E16),
        body: SingleChildScrollView(
          controller: scrollController,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed:  () {
                        launchUrl(Uri.parse('https://www.linkedin.com/in/krinamendpara'));
                        print('-------------');
                      },
                      icon: Image.asset(
                        'assets/images/linkedin.png',
                        height: 25,
                      ),
                    ),
                    IconButton(
                      onPressed:  () {
                        launchUrl(Uri.parse('https://github.com/KrinaMendpara'));
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.github,
                        size: 25,
                        color: Color(0x80FFFFFF),
                      ),
                    ),
                    // IconButton(
                    //   onPressed:  () {},
                    //   icon: Image.asset(
                    //     'assets/images/behance.png',
                    //     height: 25,
                    //   ),
                    // ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30,left: 25),
                  child: Center(
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
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: [
                      Image.asset('assets/images/waving_hand.png',height: 20,),
                      const Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          'Greetings!',
                          style: TextStyle(
                            color: Color(0xFF7B4AE2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Krina \nMendpara',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    'Front-end developer · UI designer',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w100,
                        color: Colors.white60,
                    ),
                  ),
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                    TextIconButton(
                      widget: const Icon(
                        Icons.arrow_downward,
                        size: 15,
                        color: Color(0x807B4AE2),
                      ),
                      text: 'Download CV',
                      onTap: () {
                        print('-------');
                        getData();
                      },
                    ),
                    // if (width < 350) const Expanded(
                    //     child: WhatsAppButton(),
                    //   ) else const WhatsAppButton(),
                //   ],
                // ),
                Center(
                  child: Column(
                    children: [
                      Containers(
                        path: 'assets/images/icon1.png',
                        text: '3 years like',
                        subtext: 'Programmer',
                      ),
                      Containers(
                        path: 'assets/images/icon2.png',
                        text: '7 years of',
                        subtext: 'Works',
                        boxColor: true,
                      ),
                      Containers(
                        path: 'assets/images/icon3.png',
                        text: '4 years like',
                        subtext: 'Designer',
                      ),
                    ],
                  ),
                ),
                const AboutMe(),
                TextContainer(
                  text: '🔗 Portfolio',
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'works and \nprojects',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TextIcon(
                        path: 'assets/images/icon3.png',
                        text: 'UI Design',
                      ),
                      TextIcon(
                        path: 'assets/images/icon3.png',
                        text: 'UI Design',
                      ),
                      TextIcon(
                        path: 'assets/images/icon3.png',
                        text: 'UI Design',
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      WorkCards(
                        first: true,
                        text: 'Application of Rotating planet. \n '
                            'Powered by Flutter.platform \n'
                            'Pomodoro with exercises.',
                        path: 'assets/images/planets.png',
                      ),
                      ...List.filled(
                        5,
                        WorkCards(
                          text: 'Application of Rotating planet. \n '
                              'Powered by Flutter.platform \n'
                              'Pomodoro with exercises.',
                          path: 'assets/images/planets.png',
                        ),
                      ),
                      ...List.filled(
                        4,
                        WorkCards(
                          text: 'Application of Notification. \n '
                              'Powered by Flutter.platform \n'
                              'Pomodoro with exercises.',
                          path: 'assets/images/notification.png',
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextButton.icon(
                      icon: const Icon(
                        Icons.arrow_right_alt,
                        size: 18,
                        color: Color(0x807B4AE2),
                      ),
                      label: const Text(
                        'Ver mais project`s na Behance',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0x807B4AE2),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                const Text(
                  'video projects',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      textBaseline: TextBaseline.alphabetic,
                  ),
                ),
                const Text(
                  'It`s always good to know a little editing',
                  style: TextStyle(
                      color: Colors.white60,
                      fontSize: 10,
                  ),
                ),
                Skills(),
                // Career(),
                // const Padding(
                //   padding: EdgeInsets.symmetric(vertical: 20),
                //   child: Recomendacoes(),
                // ),
                Center(
                  child: Contact(
                    scrollController: scrollController,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

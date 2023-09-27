import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/widgets/about_me.dart';
import 'package:portfolio/widgets/contact.dart';
import 'package:portfolio/widgets/container.dart';
import 'package:portfolio/widgets/portfolio_work.dart';
import 'package:portfolio/widgets/skills.dart';
import 'package:portfolio/widgets/text_container.dart';
import 'package:url_launcher/url_launcher.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  ScrollController scrollController = ScrollController();

  Future<void> getData() async {
    try{
      final url = Uri.parse('https://drive.google.com/file/d/1BrVxhB9IP216tuFpVq9NKSJTAr_AKZKY/view?usp=drivesdk');
      await launchUrl(url, mode: LaunchMode.inAppWebView);
      print(url);
    }
    catch(error){
      print('Error : $error');
    }
  }
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    print('Width : $width');
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 30),
      child: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all( 20),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                        const Text(
                          'Front-end developer · UI designer',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w100,
                            color: Colors.white60,
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed:  () {
                                launchUrl(Uri.parse('https://www.linkedin.com/in/krinamendpara'));
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
                        )
                      ],
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20),
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
                  Expanded(
                    // child: Column(
                    //   crossAxisAlignment: CrossAxisAlignment.end,
                    //   children: [
                    child: Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: TextIconButton(
                              text: 'Download CV',
                              widget: const Icon(
                                Icons.arrow_downward_rounded,
                                size: 18,
                                color: Color(0x807B4AE2),
                              ),
                              onTap: (){
                                print('----');
                                getData();
                              },
                            ),
                          ),
                        ),
                        // const WhatsAppButton(),
                      // ],
                    // ),
                  )
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 20),
                child: Wrap(
                  children: [
                    Containers(
                      path: 'assets/images/icon1.png',
                      text: '3 Months like',
                      subtext: 'Programmer',
                    ),
                    Containers(
                      path: 'assets/images/icon2.png',
                      text: '8 Months of',
                      subtext: 'Works',
                      boxColor: true,
                    ),
                    Containers(
                      path: 'assets/images/icon3.png',
                      text: '4 Months like',
                      subtext: 'Designer',
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                // height: 100,
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0x1A7B4AE2),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ColumnText(
                      text: 'Developer',
                      text1: 'Front-end',
                    ),
                    if (width < 700) Expanded(
                        child: ColumnText(
                          text: 'Dozens of projects and',
                          text1: 'Experiences',
                        ),
                      )
                    else ColumnText(
                      text: 'Dozens of projects and',
                      text1: 'Experiences',
                    ),
                    ColumnText(
                      text: 'Designer Freelancer e',
                      text1: 'UI · UX',
                    ),
                  ],
                ),
              ),
            ),
            const AboutMe(),
            const PortfolioWork(),
            Center(
              child: Skills(),
            ),
            // Center(
            //   child: Career(),
            // ),
            // const Padding(
            //   padding: EdgeInsets.symmetric(vertical: 20),
            //   child: Recomendacoes(),
            // ),
            Contact(scrollController: scrollController),
          ],
        ),
      ),
    );
  }
}

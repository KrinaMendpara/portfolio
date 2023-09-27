import 'package:flutter/material.dart';
import 'package:portfolio/screens/home_screen.dart';
import 'package:portfolio/widgets/about_me.dart';
import 'package:portfolio/widgets/contact.dart';
import 'package:portfolio/widgets/portfolio_work.dart';
import 'package:portfolio/widgets/skills.dart';



class WebScreen extends StatefulWidget {
  const WebScreen({super.key});

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> with TickerProviderStateMixin{
  late final TabController _tabController;
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF090E16),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          child: Column(
            children: [
              Container(
                height: 30,
                margin: const EdgeInsets.symmetric(vertical: 20,horizontal: 50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0x1A7B4AE2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Image.asset(
                        'assets/images/portfolio_logo.png',
                        height: 25,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/3,
                      child: TabBar(
                        controller: _tabController,
                        dividerColor: Colors.transparent,
                        tabs: const [
                          Tab(
                            text: 'Home',
                          ),
                          Tab(
                            text: 'About me',
                          ),
                          Tab(
                            text: 'Portfolio',
                          ),
                          Tab(
                            text: 'Skills',
                          ),
                          // Tab(
                          //   text: 'Careers',
                          // ),
                          // Tab(
                          //   text: 'Recommendations',
                          // ),
                          Tab(
                            text: 'Contact',
                          ),
                        ],
                        indicatorColor: Colors.transparent,
                        labelPadding: EdgeInsets.zero,
                        indicatorSize: TabBarIndicatorSize.label,
                        padding: EdgeInsets.zero,
                        labelColor: const Color(0x807B4AE2),
                        unselectedLabelColor: Colors.white60,
                        unselectedLabelStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        labelStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    const HomeScreen(),
                    const AboutMe(),
                    const PortfolioWork(),
                    Skills(),
                    Contact(scrollController: scrollController),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

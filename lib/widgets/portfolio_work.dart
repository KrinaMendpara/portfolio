import 'package:flutter/material.dart';
import 'package:portfolio/widgets/contact.dart';
import 'package:portfolio/widgets/text_container.dart';
import 'package:portfolio/widgets/work_cards.dart';


class PortfolioWork extends StatelessWidget {
  const PortfolioWork({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: TextContainer(
              text: '🔗 Portfolio',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: Text(
                    'works and projects',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Row(
                  children: [
                    TextIcon(
                      path: 'assets/images/icon3.png',
                      text: 'UI Design',
                    ),
                    TextIcon(
                      path: 'assets/images/design_icon.png',
                      text: 'UI Design',
                      boxColor: true,
                    ),
                    TextIcon(
                      path: 'assets/images/icon3.png',
                      text: 'UI Design',
                    ),
                  ],
                ),
              ],
            ),
          ),
          Wrap(
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
          Align(
            alignment: Alignment.centerRight,
            child: TextIconButton(
              text: 'See more project`s on Behance',
              widget: const Icon(
                Icons.arrow_right_alt,
                size: 18,
                color: Color(0x807B4AE2),
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}

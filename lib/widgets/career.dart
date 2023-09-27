import 'package:flutter/material.dart';
import 'package:portfolio/widgets/text_container.dart';

class Career extends StatelessWidget {
  Career({super.key});

  List<Widget> listCard = [
    const CareerContainer(
      boxColor: true,
      titleText: 'Front-end developer at Ensinio',
      description: 'Development of features in the main application and website. with React\n'
          'Js and Typescript, in addition to the help of other technologies such as\n'
          'Next, Styled Components and Architecture Patterns.',
      text: '1 year and 7 months',
      text2: 'April/2021 · Currently',
    ),
    const CareerContainer(
      titleText: 'Designer na Viralizzi',
      description: 'Providing services for digital media on Viralizzi as\n'
          'Designer.',
      text: '3 months',
      text2: 'January/2021 · April/2021',
    ),
    const CareerContainer(
      titleText: 'Programming Instructor at SuperGeeks',
      description:
      'As an instructor of programming, computer science and \n'
          'development of games with children and adolescents. In addition to\n'
          'support for the creation of digital content and media.',
      text: '1 year and 11 months',
      text2: 'February/2019 · January/2021',
    ),
    const CareerContainer(
      titleText: 'Designer, editor and hardware support at Alorean',
      description: 'Freelance design services, hardware maintenance, editions\n'
          'of digital and graphic media for companies and people in the region of\n'
          'São José dos Campos and Jacareí by its own brand “Alorean”.',
      text: '1 more',
      text2: 'January/2020 · January/2021',
    ),
    const CareerContainer(
      titleText: 'Young apprentice',
      description: 'At the end of 2016 I started in the experience phase, at the beginning of 2017\n'
          'already as an Apprentice working in the creation, development and\n'
          'design. Support for the company`s digital marketing and IT.',
      text: '1 year and 3 months',
      text2: 'October/2016 · December/2017',
    )
  ];
  List<Widget> listCard2 = [
    const CareerContainer(
      titleText: 'Superior, Systems Analysis and Development',
      description: 'Recently graduated from FATEC in São José dos Campos in the\n'
          'Analysis and systems development.',
      text: '3 years',
      text2: 'August/2019 · August/2022',
    ),
    const CareerContainer(
      titleText: 'Technician, Computer Networks',
      description: 'Development of features in the main application and website. with React\n'
          'Js and Typescript, in addition to the help of other technologies such as Next,\n'
          'Styled Components and architectural patterns.',
      text: '1 year and 6 months',
      text2: 'February/2018 · June/2019',
    ),
    const CareerContainer(
      titleText: 'English · Advanced conversation',
      description: 'In the second half of 2018 I was able to improve my level of English\n'
          '(Today: Advanced) with 6 months of advanced conversation by\n'
          'Federal Institute of Jacareí (IFSP)',
      text: '6 months',
      text2: 'July/2018 · December/2018',
    ),
    const CareerContainer(
      titleText: 'complete high school',
      description: 'At the end of 2017 I graduated from high school at Amância Dias school\n'
          'Sampaio in Jacareí.',
      text: '',
      text2: 'December/2017',
    )
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: TextContainer(
            text: '💼 Career',
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            (width > 600) ? 'Trajectory until here' : 'Trajectory \nuntil here',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: (width > 600) ?  Wrap(
              children: [
                Column(
                  children: [

                    const Text(
                      'professional area',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const Text(
                      '2016 · Currently',
                      style: TextStyle(
                        color: Color(0x80FFFFFF),
                        fontSize: 15,
                      ),
                    ),
                    ...List.generate(listCard.length, (index) => listCard[index]),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      'academic',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const Text(
                      '2014 · Currently',
                      style: TextStyle(
                        color: Color(0x80FFFFFF),
                        fontSize: 15,
                      ),
                    ),
                    ...List.generate(listCard2.length, (index) => listCard2[index],),
                  ],
                ),
              ],
            )
            : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Profissional area',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  '2016 · Currently',
                  style: TextStyle(
                    color: Color(0x80FFFFFF),
                    fontSize: 15,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(listCard.length, (index) => listCard[index]),
                    ],
                  ),
                ),
                const Text(
                  'Currently',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  '2014 · Currently',
                  style: TextStyle(
                    color: Color(0x80FFFFFF),
                    fontSize: 15,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(listCard2.length, (index) => listCard2[index]),
                    ],
                  ),
                ),
              ],
            ),
        ),
      ],
    );
  }
}

class CareerContainer extends StatelessWidget {
  const CareerContainer({
    required this.titleText, required this.description, required this.text, required this.text2, super.key,
    this.boxColor = false,
  });

  final bool boxColor;
  final String titleText;
  final String description;
  final String text;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 400,
      margin: const EdgeInsets.all(30),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: (boxColor == true)
            ? const Color(0x1A7B4AE2)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        border: (boxColor == true)
            ? null
            : Border.all(
          color: const Color(0x807B4AE2),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titleText,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              description,
              style: const TextStyle(
                color: Color(0x80FFFFFF),
                fontSize: 10,
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                    color: Color(0x807B4AE2),
                    fontSize: 10,
                  ),
                ),
                Text(
                  text2,
                  style: const TextStyle(
                    color: Color(0x807B4AE2),
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


class TextContainer extends StatelessWidget {
  TextContainer({required this.text , this.boxColor = false, super.key});
  String text;
  bool boxColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: (boxColor == true) ? const Color(0x4D4AE290) : const Color(0x337B4AE2),
      ),
      child: Text(
        text,
        maxLines: 1,
        style: TextStyle(
          color: (boxColor == true) ? const Color(0xFF4AE290) : const Color(0xFF7B4AE2),
        ),
      ),
    );
  }
}


class TextIcon extends StatelessWidget {
  TextIcon({required this.text, required this.path,this.boxColor = false, super.key});
  String text;
  String path;
  bool boxColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20,horizontal: 5),
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: (boxColor == true) ? const Color(0x1A7B4AE2) : Colors.transparent,
        border: (boxColor == true)
            ? null
            : Border.all(
          color: const Color(0x807B4AE2),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Image.asset(
              path,
              height: 30,
              width: 30,
            ),
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 15,
              color: Color(0xFF7B4AE2),
            ),
          ),
        ],
      ),
    );
  }
}

class WhatsAppButton extends StatelessWidget {
  const WhatsAppButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0x807B4AE2),
        ),
      ),
      child: TextButton.icon(
        icon: const FaIcon(
          FontAwesomeIcons.whatsapp,
          size: 25,
          color: Color(0x807B4AE2),
        ),
        label: const Text(
          'Let`s talk',
          style: TextStyle(
            fontSize: 15,
            color: Color(0x807B4AE2),
          ),
        ),
        onPressed: () {
          launchUrl(Uri.parse('whatsapp://send?phone="+917016910584+"'));
        },
      ),
    );
  }
}

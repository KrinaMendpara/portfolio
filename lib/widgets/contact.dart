import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/widgets/text_container.dart';
import 'package:url_launcher/url_launcher.dart';


class Contact extends StatefulWidget {
  Contact({required this.scrollController, super.key});
  ScrollController scrollController;

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;


    Future<void> _showDialog() async {
       return showDialog(
         context: context,
         builder: (BuildContext context) {
            return Padding(
              padding: EdgeInsets.only(
                bottom: 170,
                left: (width > 600) ? 150 : 0,
              ),
              child: Dialog(
                alignment: Alignment.bottomCenter,
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(20),
                ),
                child: Container(
                  height: 30,
                  color: Colors.black87,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton.icon(
                        onPressed: () {
                          Clipboard.setData(
                            const ClipboardData(
                              text: 'mendparakrina@gmail.com',
                            ),
                          ).then((_){
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'Email address copied to clipboard',
                                ),
                              ),
                            );
                          });
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.email_outlined,
                          color: Colors.white60,
                          size: 15,
                        ),
                        label: const Text(
                          'Copy mendparakrina@gmail.com',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 10,
                          ),
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 1,
                        color: Colors.white60,
                      ),
                      TextButton(
                        onPressed: () async{
                          final emailLaunchUri = Uri(
                            scheme: 'mailto',
                            path: 'mendparakrina@gmail.com',
                          );
                          launchUrl(emailLaunchUri).toString();
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Send Mail',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white60,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
      );
    }

    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Column(
          crossAxisAlignment: (width > 600)
              ? CrossAxisAlignment.center
              : CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: TextContainer(
                text: '📬 Contacts',
              ),
            ),
            Text(
              (width < 600)
                  ? 'In between \nin touch'
                  : 'Let`s talk!',
              style: const TextStyle(
                height: 1,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            if (width > 600) Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // const WhatsAppButton(),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const FaIcon(
                          FontAwesomeIcons.paperPlane,
                          color: Color(0x807B4AE2),
                          size: 20,
                        ),
                        const Text(
                          'E-mail:',
                          style: TextStyle(
                            color: Color(0x807B4AE2),
                            fontSize: 20,
                          ),
                        ),
                        TextButton(
                          onHover: (v){
                            (v == true)
                                ? _showDialog()
                                : null;
                          },
                          onPressed: (){
                            // _showDialog();
                          },
                          child: const Text(
                            'mendparakrina@gmail.com',
                            style: TextStyle(
                              color: Color(0x80FFFFFF),
                              fontSize: 15,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.copy,
                          color: Color(0x807B4AE2),
                          size: 20,
                          ),
                          onPressed: (){
                            Clipboard.setData(
                              const ClipboardData(
                                text: 'mendparakrina@gmail.com',
                              ),
                            ).then((_){
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    'Email address copied to clipboard',
                                  ),
                                ),
                              );
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
            else Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const Padding(
                //   padding: EdgeInsets.symmetric(vertical: 30),
                //   child: WhatsAppButton(),
                // ),
                const FaIcon(
                  FontAwesomeIcons.paperPlane,
                  color: Color(0x807B4AE2),
                  size: 20,
                ),
                const Text(
                  'E-mail:',
                  style: TextStyle(
                    color: Color(0x807B4AE2),
                    fontSize: 18,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: _showDialog,
                        child: const Text(
                          'mendparakrina@gmail.com',
                          style: TextStyle(
                            color: Color(0x80FFFFFF),
                            fontSize: 15,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.copy,
                          color: Color(0x807B4AE2),
                          size: 20,
                        ),
                        onPressed: (){
                          Clipboard.setData(
                            const ClipboardData(
                              text: 'mendparakrina@gmail.com',
                            ),
                          ).then((_){
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'Email address copied to clipboard',
                                ),
                              ),
                            );
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            TextIconButton(
              text: 'Back to the top',
              widget: const Icon(
                Icons.arrow_upward_rounded,
                size: 18,
                color: Color(0x807B4AE2),
              ),
              onTap: () {
                widget.scrollController.animateTo(0,
                  duration: const Duration(seconds: 1), curve: Curves.easeIn,);
              },
            )
          ],
        ),
    );
  }
}



class TextIconButton extends StatelessWidget {
  TextIconButton({
    required this.widget,
    required this.text,
    required this.onTap,
    super.key,});
  final Widget widget;
  final String text;
  Function onTap;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextButton.icon(
        label: Text(
          text,
          style: const TextStyle(
            fontSize: 12,
            color: Color(0x807B4AE2),
          ),
        ),
        icon: widget,
        onPressed: (){
          onTap();
        },
      ),
    );
  }
}


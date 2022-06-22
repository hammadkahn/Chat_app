import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:progress_bar/chat/message_box.dart';
import 'package:progress_bar/chat/message_write.dart';

class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Padding(
              padding: const EdgeInsets.only(top: 17),
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Container(
                          width: 44,
                          height: 44,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                          ),
                          child: Image.asset('assets/images/arrow-left.png'),
                        ),
                      ),
                      Expanded(
                        child: Center(
                            child: Text('G.Mamedoff',
                                style: TextStyle(
                                    fontFamily: 'Mulsih',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600))),
                      ),
                    ],
                  ),
                  Spacer(),
                  SizedBox(
                    height: 10,
                  ),
                  MessageItem(
                    send: false,
                    message:
                        'I commented on Figma, I want to add some fancy icons. Do you have any icon set?',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MessageItem(
                    send: true,
                    message:
                        'I am in a process of designing some. When do you need them?',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MessageItem(
                    send: false,
                    message: 'Next month?',
                  ),
                  Text('1 FEB 12:00'),
                  SizedBox(
                    height: 10,
                  ),
                  MessageItem(
                    send: true,
                    message:
                        'I am almost finish. Please give me your email, I will ZIP them and send you as son as im finish.',
                  ),
                  Message_write()
                ],
              ),
            )));
  }
}

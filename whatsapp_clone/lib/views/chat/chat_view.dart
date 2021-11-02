import 'package:flutter/material.dart';
import 'package:whatsapp_clone/custom_widgets/chat_session_view.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white24,
        body: ListView(padding: const EdgeInsets.all(10), children: const [
          ChatSessionView(
            name: 'Asante Usman',
            message: 'Hi, how are you?',
            date: 'Yesterday',
            numberOfMessages: '1',
            imageSrc: 'assets/images/user.jpeg',
          ),
          Divider(
            thickness: 1.0,
            indent: 70.0,
          ),
          ChatSessionView(
            name: 'Joane Hamadani',
            message: 'Hiii girlll !!!!',
            date: 'Yesterday',
            numberOfMessages: '3',
            imageSrc: 'assets/images/lady1.jpg',
          ),
          Divider(
            thickness: 1.0,
            indent: 70.0,
          ),
          ChatSessionView(
            name: 'Opoku Esther',
            message: 'Hi dear, have you eaten?',
            date: 'Today',
            imageSrc: 'assets/images/lady2.jpg',
          ),
          Divider(
            thickness: 1.0,
            indent: 70.0,
          ),
          ChatSessionView(
            name: 'Juliana Asante',
            message: 'I am there oooo',
            date: '11:45 AM',
            imageSrc: 'assets/images/lady3.jpg',
          ),
          Divider(
            thickness: 1.0,
            indent: 70.0,
          ),
        ]),
      ),
    );
  }
}

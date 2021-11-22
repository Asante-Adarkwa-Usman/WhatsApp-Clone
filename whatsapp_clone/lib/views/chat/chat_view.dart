import 'package:flutter/material.dart';
import 'package:whatsapp_clone/custom_widgets/chat_session_view.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<Widget> _chatSessionViews = [
      ChatSessionView(
        name: 'Asante Usman',
        message: 'Hi, how are you?',
        date: 'Yesterday',
        numberOfMessages: '1',
        imageSrc: 'assets/images/user.jpeg',
      ),
      ChatSessionView(
        name: 'Rockline Hamadani',
        message: 'I miss you already',
        date: 'Yesterday',
        numberOfMessages: '1',
        imageSrc: 'assets/images/lady3.jpg',
      ),
      ChatSessionView(
        name: 'Joane Hamadani',
        message: 'You r welcome',
        date: 'Yesterday',
        numberOfMessages: '1',
        imageSrc: 'assets/images/lady1.jpg',
      ),
      ChatSessionView(
        name: 'Joane Hamadani',
        message: 'Hiii girlll !!!!',
        date: 'Yesterday',
        numberOfMessages: '3',
        imageSrc: 'assets/images/lady2.jpg',
      ),
      ChatSessionView(
        name: 'Joane Hamadani',
        message: 'Hiii girlll !!!!',
        date: 'Yesterday',
        numberOfMessages: '2',
        imageSrc: 'assets/images/lady3.jpg',
      ),
      ChatSessionView(
        name: 'Rancelo',
        message: 'Hiii',
        date: 'Today',
        numberOfMessages: '3',
        imageSrc: 'assets/images/lady2.jpg',
      ),
      ChatSessionView(
        name: 'Opoku Esther',
        message: 'Hi dear, have you eaten?',
        date: 'Today',
        imageSrc: 'assets/images/lady2.jpg',
      ),
      ChatSessionView(
        name: 'Juliana Asante',
        message: 'I am there oooo',
        date: '11:45 AM',
        imageSrc: 'assets/images/lady3.jpg',
      ),
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white24,
        //using limitedBox and looping through the _chatSessionViews list
        body: ListView(padding: const EdgeInsets.all(10), children: [
          for (var i = 0; i < _chatSessionViews.length; i++)
            LimitedBox(
              maxHeight: 100,
              child: Column(
                children: [
                  _chatSessionViews.elementAt(i),
                  const Divider(
                    thickness: 1.0,
                    indent: 70.0,
                  ),
                ],
              ),
            ),
        ]),
        //Using listview.separated to render the chat session
        // body: ListView.separated(
        //     itemBuilder: (BuildContext context, int index) {
        //       return const ChatSessionView(
        //         name: 'Asante Usman',
        //         message: 'Hi, how are you?',
        //         date: 'Yesterday',
        //         numberOfMessages: '1',
        //         imageSrc: 'assets/images/user.jpeg',
        //       );
        //     },
        //     separatorBuilder: (BuildContext context, int index) {
        //       return const Divider(
        //         thickness: 1.0,
        //         indent: 70.0,
        //       );
        //     },
        //     itemCount: 10),
      ),
    );
  }
}

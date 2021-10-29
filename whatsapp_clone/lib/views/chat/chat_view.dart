import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white24,
        body: ListView(padding: const EdgeInsets.all(10), children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              TextButton(
                  onPressed: null,
                  child: Text('Edit',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 18,
                      ))),
              IconButton(
                  onPressed: null,
                  icon: Icon(
                    UniconsLine.external_link_alt,
                    color: Colors.blueAccent,
                  )),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            'Chats',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            height: 15.0,
          ),
          TextField(
            style: const TextStyle(fontSize: 15),
            decoration: InputDecoration(
              prefixIcon: const Icon(UniconsLine.search, size: 18),
              hintText: 'Search',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  )),
            ),
          ),
        ]),
      ),
    );
  }
}

import 'dart:ui';

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
          SizedBox(
            height: 44.0,
            child: TextField(
              style: const TextStyle(fontSize: 18),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(top: 25.0),
                prefixIcon: const Icon(UniconsLine.search,
                    size: 24, color: Colors.grey),
                hintText: 'Search',
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13.0),
                    borderSide: BorderSide(color: Colors.grey.shade300)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13.0),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton.icon(
                  onPressed: null,
                  icon:
                      const Icon(UniconsLine.archive, color: Colors.blueAccent),
                  label: const Text('Achieve Chats',
                      style: TextStyle(color: Colors.blueAccent))),
              const Text('0'),
            ],
          ),
          const Divider(
            thickness: 1.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              TextButton(
                  onPressed: null,
                  child: Text('Broadcast Lists',
                      style: TextStyle(color: Colors.blueAccent))),
              TextButton(
                  onPressed: null,
                  child: Text('New Group',
                      style: TextStyle(color: Colors.blueAccent))),
            ],
          ),
          const Divider(
            thickness: 1.0,
          ),
          const ChatSession(),
          const Divider(
            thickness: 1.0,
            indent: 70.0,
          ),
          const ChatSession(),
          const Divider(
            thickness: 1.0,
            indent: 70.0,
          ),
          const ChatSession(),
          const Divider(
            thickness: 1.0,
            indent: 70.0,
          ),
          const ChatSession(),
          const Divider(
            thickness: 1.0,
            indent: 70.0,
          ),
          const ChatSession(),
          const Divider(
            thickness: 1.0,
            indent: 70.0,
          ),
        ]),
      ),
    );
  }
}

class ChatSession extends StatelessWidget {
  const ChatSession({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: null,
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.blueAccent,
          backgroundImage: AssetImage('assets/images/user.jpeg'),
        ),
        title: const Text('Asante Adarkwa Usman',
            style: TextStyle(fontWeight: FontWeight.w700)),
        subtitle: Row(
          children: const [
            Icon(UniconsLine.check, color: Colors.grey),
            Text('Yo, how was your day', style: TextStyle(color: Colors.grey))
          ],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Yesterday', style: TextStyle(color: Colors.blueAccent)),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                width: 20,
                height: 20,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    color: Colors.blueAccent, shape: BoxShape.circle),
                child: const Text('2',
                    style: TextStyle(fontSize: 15, color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

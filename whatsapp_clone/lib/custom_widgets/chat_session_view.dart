import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class ChatSessionView extends StatelessWidget {
  final String? name, imageSrc, message, date, numberOfMessages;

  const ChatSessionView(
      {Key? key,
      this.imageSrc,
      this.name,
      this.message,
      this.date,
      this.numberOfMessages})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: null,
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.blueAccent,
          backgroundImage: AssetImage(imageSrc.toString()),
        ),
        title: Text(name.toString(),
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 20)),
        subtitle: Row(
          children: [
            const Icon(UniconsLine.check, color: Colors.grey),
            Text(message.toString(),
                style: const TextStyle(color: Colors.grey, fontSize: 15))
          ],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(date.toString(), style: const TextStyle(color: Colors.grey)),
            numberOfMessages == null
                ? const Text('')
                : Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      width: 20,
                      height: 20,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.green.shade600, shape: BoxShape.circle),
                      child: Text(numberOfMessages.toString(),
                          style: const TextStyle(
                              fontSize: 15, color: Colors.white)),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

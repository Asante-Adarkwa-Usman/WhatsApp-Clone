import 'package:flutter/material.dart';
import 'package:whatsapp_clone/views/status/story_page_view.dart';

class StatusView extends StatelessWidget {
  const StatusView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xfff2f2f2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            color: Colors.white,
            elevation: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Stack(
                  children: <Widget>[
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/lady2.jpg"),
                    ),
                    Positioned(
                      bottom: 0.0,
                      right: 1.0,
                      child: Container(
                        height: 20,
                        width: 20,
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 15,
                        ),
                        decoration: const BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                      ),
                    )
                  ],
                ),
                title: const Text(
                  "My Status",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text("Tap to add status update"),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Viewed Updates",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.white,
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/lady1.jpg"),
                    ),
                    title: const Text(
                      "Juliet Angels",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text("Today, 20:16 PM"),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StoryPageView())),
                  ),
                  const Divider(
                    indent: 10,
                  ),
                  ListTile(
                    leading: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/lady3.jpg"),
                    ),
                    title: const Text(
                      "Asante Mary",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text("Today, 09:19 PM"),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StoryPageView())),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

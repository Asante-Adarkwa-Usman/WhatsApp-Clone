import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';
import 'package:whatsapp_clone/views/call/call_view.dart';
// import 'package:whatsapp_clone/views/call/call_view.dart';
// import 'package:whatsapp_clone/views/camera/camera_view.dart';
import 'package:whatsapp_clone/views/chat/chat_view.dart';
// import 'package:whatsapp_clone/views/settings/settings_view.dart';
// import 'package:whatsapp_clone/views/status/status_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              elevation: 0,
              backgroundColor: Theme.of(context).primaryColor,
              title: const Text('WhatsApp'),
              pinned: true,
              floating: true,
              actions: const <Widget>[
                IconButton(
                    onPressed: null,
                    icon: Icon(Icons.search, color: Colors.white)),
                IconButton(
                    onPressed: null,
                    icon: Icon(UniconsLine.comment_alt_lines,
                        color: Colors.white)),
                IconButton(
                    onPressed: null,
                    icon: Icon(Icons.more_vert, color: Colors.white)),
              ],
              bottom: const TabBar(
                indicatorColor: Colors.white,
                tabs: [
                  Tab(icon: Icon(Icons.camera_alt)),
                  Tab(text: 'CHATS'),
                  Tab(text: 'STATUS'),
                  Tab(text: 'CALLS'),
                ],
              ),
            ),
          ];
        },
        body: const TabBarView(
          children: <Widget>[
            Icon(Icons.directions_car),
            ChatView(),
            Icon(Icons.directions_car),
            CallView()
          ],
        ),
      )),
    );
  }
}

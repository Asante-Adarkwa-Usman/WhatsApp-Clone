import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/views/call/call_view.dart';
import 'package:whatsapp_clone/views/camera/camera_view.dart';
import 'package:whatsapp_clone/views/chat/chat_view.dart';
import 'package:whatsapp_clone/views/status/status_view.dart';

class HomeView extends StatefulWidget {
  final List<CameraDescription> cameras;
  const HomeView({Key? key, required this.cameras}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  bool showFab = true;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
    _tabController!.addListener(() {
      if (_tabController!.index == 1) {
        showFab = true;
      } else {
        showFab = false;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade900,
        title: const Text("WhatsApp"),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: const <Widget>[
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: "CHATS"),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            ),
          ],
        ),
        actions: const <Widget>[
          Icon(Icons.search),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
          ),
          Icon(Icons.more_vert)
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          CameraView(widget.cameras),
          const ChatView(),
          const StatusView(),
          const CallView(),
        ],
      ),
      floatingActionButton: showFab
          ? FloatingActionButton(
              backgroundColor: Colors.teal.shade900,
              child: const Icon(
                Icons.message,
                color: Colors.white,
              ),
              onPressed: () => print("open chats"),
            )
          : null,
    );
  }
}

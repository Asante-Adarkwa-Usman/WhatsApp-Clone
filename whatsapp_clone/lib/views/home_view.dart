import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';
import 'package:whatsapp_clone/views/call/call_view.dart';
import 'package:whatsapp_clone/views/camera/camera_view.dart';
import 'package:whatsapp_clone/views/chat/chat_view.dart';
import 'package:whatsapp_clone/views/settings/settings_view.dart';
import 'package:whatsapp_clone/views/status/status_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
//navigation index and screens
  int _currentIndex = 0;
  final List<Widget> _views = [
    const StatusView(),
    const CallView(),
    const CameraView(),
    const ChatView(),
    const SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: _views,
        index: _currentIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(UniconsLine.record_audio), label: 'Status'),
          BottomNavigationBarItem(
              icon: Icon(UniconsLine.phone_alt), label: 'Calls'),
          BottomNavigationBarItem(
              icon: Icon(UniconsLine.camera), label: 'Camera'),
          BottomNavigationBarItem(
              icon: Icon(UniconsLine.comments), label: 'Chats'),
          BottomNavigationBarItem(
              icon: Icon(UniconsLine.cog), label: 'Settings'),
        ],
      ),
    );
  }
}

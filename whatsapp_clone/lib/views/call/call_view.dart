import 'package:flutter/material.dart';

class CallView extends StatelessWidget {
  const CallView({Key? key}) : super(key: key);
  final bool isImageSet = true;

  @override
  Widget build(BuildContext context) {
    const List<Widget> _callTileslist = [
      CallTiles(
          isImageSet: true,
          name: 'Abanga Wizzy',
          dateTime: 'Today, 11:45 AM',
          callVideoIcon: 'video',
          forwardingReceiving: 'callReceived',
          imageSrc: 'assets/images/user.jpeg'),
      CallTiles(
          isImageSet: false,
          name: 'Joane',
          dateTime: 'Today, 11:45 AM',
          callVideoIcon: 'call',
          forwardingReceiving: 'callMade',
          imageSrc: 'assets/images/lady2.jpg'),
      CallTiles(
          isImageSet: false,
          name: 'Angel',
          dateTime: 'Today, 11:45 AM',
          callVideoIcon: 'call',
          forwardingReceiving: 'callReceived',
          imageSrc: 'assets/images/lady1.jpg'),
      CallTiles(
          isImageSet: false,
          name: 'Janet',
          dateTime: 'Today, 11:45 AM',
          callVideoIcon: 'call',
          forwardingReceiving: 'callMade',
          imageSrc: 'assets/images/lady3.jpg'),
    ];

    return Scaffold(
      body: ListView(
        children: <Widget>[
          for (var i = 0; i < _callTileslist.length; i++)
            LimitedBox(
              maxHeight: 100,
              child: Column(
                children: [
                  _callTileslist.elementAt(i),
                  const Divider(
                    thickness: 1.0,
                    indent: 70.0,
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class CallTiles extends StatelessWidget {
  final String? name, imageSrc, dateTime, callVideoIcon, forwardingReceiving;
  final bool? isImageSet;
  const CallTiles({
    Key? key,
    this.isImageSet,
    this.name,
    this.imageSrc,
    this.dateTime,
    this.callVideoIcon,
    this.forwardingReceiving,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.blueAccent,
        backgroundImage: isImageSet == true
            ? AssetImage(imageSrc.toString())
            : AssetImage(imageSrc.toString()),
      ),
      title: Text(name.toString()),
      subtitle: Row(
        children: <Widget>[
          Icon(
            forwardingReceiving.toString() == 'callReceived'
                ? Icons.call_made
                : Icons.call_received,
            color: Colors.greenAccent.shade700,
            size: 16,
          ),
          Text(dateTime.toString()),
        ],
      ),
      trailing: callVideoIcon.toString() == 'video'
          ? Icon(
              Icons.videocam,
              color: Theme.of(context).primaryColor,
              size: 24,
            )
          : Icon(
              Icons.call,
              color: Theme.of(context).primaryColor,
              size: 24,
            ),
    );
  }
}

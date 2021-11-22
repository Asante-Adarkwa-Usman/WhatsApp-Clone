import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraView extends StatefulWidget {
  final List<CameraDescription> cameras;

  const CameraView(this.cameras, {Key? key}) : super(key: key);

  @override
  CameraViewState createState() {
    return CameraViewState();
  }
}

class CameraViewState extends State<CameraView> {
  late CameraController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(widget.cameras[0], ResolutionPreset.medium);
    _controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_controller.value.isInitialized) {
      return Container();
    }
    return AspectRatio(
      aspectRatio: _controller.value.aspectRatio,
      child: Stack(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height,
              child: CameraPreview(_controller)),
          Positioned(
            bottom: 50,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                IconButton(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(
                    left: 26,
                    top: 26,
                  ),
                  onPressed: null,
                  icon: Icon(
                    Icons.flash_off,
                    color: Colors.white,
                    size: 45,
                  ),
                ),
                IconButton(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(right: 40),
                  onPressed: null,
                  icon: Icon(
                    Icons.panorama_fish_eye_sharp,
                    color: Colors.white,
                    size: 100,
                  ),
                ),
                IconButton(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(
                    right: 50,
                    top: 26,
                  ),
                  onPressed: null,
                  icon: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                    size: 45,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

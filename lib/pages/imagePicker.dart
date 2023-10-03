import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePicker_widget extends StatefulWidget {
  const ImagePicker_widget({super.key});

  @override
  State<ImagePicker_widget> createState() => _ImagePicker_widgetState();
}

class _ImagePicker_widgetState extends State<ImagePicker_widget> {
  XFile? file;
  ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Picker")),
      body: Column(
        children: [
          Container(
            color: Colors.amber,
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: Center(child: Text("Select a image")),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () async {
                final XFile? photo =
                    await _picker.pickImage(source: ImageSource.camera);
                setState(() {
                  file = photo;
                });
              },
              child: Icon(Icons.image))
        ],
      ),
    );
  }
}

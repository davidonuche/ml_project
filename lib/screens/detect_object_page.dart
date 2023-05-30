import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:google_ml_kit/google_ml_kit.dart';

class DetectObjectPage extends StatefulWidget {
  const DetectObjectPage({super.key});

  @override
  State<DetectObjectPage> createState() => _DetectObjectPageState();
}

class _DetectObjectPageState extends State<DetectObjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        onPressed: () async {
          final ImagePicker imagePicker = ImagePicker();
          final XFile? xFile =
              await imagePicker.pickImage(source: ImageSource.gallery);
          if (xFile != null) {
            final InputImage inputImage = InputImage.fromFilePath(xFile.path);
            final ImageLabeler imageLabeler = GoogleMlKit.vision.imageLabeler();
            final List<ImageLabel> labels =
                await imageLabeler.processImage(inputImage);
            final String label = labels.first.label;
            final int confidenceLevelString =
                ((labels.first.confidence * 100).toInt());
            showModalBottomSheet(
                context: context,
                builder: (context) => SizedBox(
                      height: 500,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                              "It is $label, with $confidenceLevelString confidence level", style: Theme.of(context).textTheme.bodySmall),
                              
                        ),
                      ),
                    ));
          }
        },
        child: Text("Detect Object"),
      ),
    ));
  }
}

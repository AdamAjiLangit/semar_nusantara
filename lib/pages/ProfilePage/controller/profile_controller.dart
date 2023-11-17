import 'dart:typed_data';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../helper/imagePicker.dart';

class ProfileController extends GetxController {
  final Rx<Uint8List?> _image = Rx<Uint8List?>(null);

  Uint8List? get image => _image.value;

  Future<void> selectImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      _image.value = await pickedFile.readAsBytes();
    } else {
      print('No image selected');
    }
  }
}
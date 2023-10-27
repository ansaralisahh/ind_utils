import 'package:flutter/services.dart';

class TextFile{
  Future<String> read(String file) async {
    try {
      String fileContent = await rootBundle.loadString(file);
      return fileContent;
    } catch (e) {
      print('Error reading asset file: $e');
      return '';
    }
  }
}
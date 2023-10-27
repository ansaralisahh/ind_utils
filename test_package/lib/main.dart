import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ind_utils/ind_utils.dart';
main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var log = Log();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.indigo[300],
      ),
      body: Column(
        mainAxisAlignment: INDConstant.mainCenter,
        crossAxisAlignment: INDConstant.crossCenter,
        children: [
          "Welcome".txt().center().onTab(() async {
            String textToSave = 'Hello, this is the text to be saved in the file.';
            await saveTextToFile(textToSave);
            print(await readAsset(),);
          })
        ],
      ),
    );
  }
}
Future<String> readAsset() async {
  try {
    String fileContent = await rootBundle.loadString('assets/name.txt');
    return fileContent;
  } catch (e) {
    print('Error reading asset file: $e');
    return '';
  }
}
Future<void> saveTextToFile(String text) async {
  try {
    // Get the directory for the app's documents
    Directory appDocumentsDirectory = Directory('C:\Users\ansar\flutterprojects\Flutter Package\ind_utils\ind_utils\test_package\assets');
    if (!appDocumentsDirectory.existsSync()) {
      appDocumentsDirectory.createSync(recursive: true);
    }

    // Construct the path to the file
    String filePath = '${appDocumentsDirectory.path}/name.txt';

    // Open the file (create it if it doesn't exist)
    File file = File(filePath);

    // Write the text to the file
    await file.writeAsString(text);
  } catch (e) {
    print('Error saving file: $e');
  }
}



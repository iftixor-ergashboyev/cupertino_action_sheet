import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
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
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoButton(
            child: Text('Cupertino Action Sheet', style: TextStyle(color: CupertinoColors.activeBlue)),
            onPressed: () {
              showCupertinoModalPopup(
                  context: context,
                  builder: buildActionSheet
              );
            }),
      )
    );
  }
  Widget buildActionSheet(BuildContext context) => CupertinoActionSheet(
    title: Text("What do you want to upload the image from?"),
    actions: [
      CupertinoActionSheetAction(
          onPressed: () {},
          child: Text("Camera", style: TextStyle(color: CupertinoColors.activeBlue),)
      ),
      CupertinoActionSheetAction(
          onPressed: () {},
          child: Text("Gallery", style: TextStyle(color: CupertinoColors.activeBlue),)
      ),
    ],
    cancelButton: CupertinoActionSheetAction(
      onPressed: () => Navigator.pop(context),
      child: Text("Cencel", style: TextStyle(color: CupertinoColors.systemRed)),
    ),
  );
}


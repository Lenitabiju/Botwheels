import 'package:flutter/material.dart';
import 'package:alan_voice/alan_voice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Voice assistance',
      theme: ThemeData(
        backgroundColor: const Color.fromARGB(255, 4, 0, 9),
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _MyHomePageState() {    
    AlanVoice.addButton("8582cb47dbe06d53445c1d155d7eeb942e956eca572e1d8b807a3e2338fdd0dc/stage",
    buttonAlign: AlanVoice.BUTTON_ALIGN_LEFT);
    AlanVoice.onCommand.add((command) {
      debugPrint("got new command ${command.toString()}");
  });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 8, 3, 43), // Set the background color here
        appBar: AppBar(
          title: const Text('AI VOICE ASSISTANT '),
          shadowColor: Colors.blue,
          backgroundColor: const Color.fromARGB(255, 3, 3, 34),
      ),
      body: Center(
        child: Column(  
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            const SizedBox(height: 20),
            Image.asset(
              'assets/images/img.jpg',
              width: 400,
              height: 400,
        ),
        const Text('Tap to speak',
              
              style: TextStyle(fontSize: 20,
              color: Color.fromARGB(255, 195, 233, 241),),
            ),
         ],
         ),
      ),
    );
  }
}

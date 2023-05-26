import 'package:flutter/material.dart';
import 'package:psychiatric_treatment_ai/ChosseAccount.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Psychiatric Treatment',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo.shade900),
        useMaterial3: true,
      ),
      home: const MaterialApp( home: StartPage(title: 'Start Psychiatric Treatment app')) ,
    );
  }
}

class StartPage extends StatefulWidget {
  const StartPage({Key? key, required String title}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const SizedBox(height: 70,),
          Center(child: Image.asset("assets/image/Psychologist-amico.png",height: 300, width: 300,)),
          const SizedBox(height: 60,),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Welcome to,',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Color.fromRGBO(0, 82, 152,1))
                ),
                Text('Psychiatric Treatment App',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromRGBO(0, 0, 0,100))
                ),
              ],
            ),
          ),

          const SizedBox(height: 180,),
          Row(children: [
            const SizedBox(width: 50,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ChosseAccount()) );
            },
            style: ElevatedButton.styleFrom(shape: CircleBorder(),padding: EdgeInsets.all(5),backgroundColor: Color.fromRGBO(0, 82, 152, 1)),
            child: const Icon(Icons.keyboard_arrow_right_rounded,size: 60, ),
          ),
            const SizedBox(width: 35,),
            const Text("Get Started", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),],
          )
        ],),
      ),
    );
  }
}



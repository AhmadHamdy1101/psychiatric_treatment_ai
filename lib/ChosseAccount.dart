import 'package:flutter/material.dart';
import 'package:psychiatric_treatment_ai/LoginPage.dart';
import 'package:psychiatric_treatment_ai/LoginPageDoctor.dart';
class ChosseAccount extends StatefulWidget {
  const ChosseAccount({Key? key}) : super(key: key);

  @override
  State<ChosseAccount> createState() => _ChosseAccountState();
}

class _ChosseAccountState extends State<ChosseAccount> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60,),
                Text("Chosse Your Account Type", textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color.fromRGBO(0, 82, 152,1))),
                SizedBox(height: 30,),
                OutlinedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (Context)=> LoginPage()));
                }, child: Text("Patients",style: TextStyle(fontSize: 20,color: Color.fromRGBO(0, 82, 152,1))),style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Color.fromRGBO(0, 82, 152, 1)),
                    fixedSize: Size(MediaQuery.of(context).size.width,50)),),
                SizedBox(height: 30,),
                Center(child: Text("Or",style: TextStyle(fontSize: 30, ),)),
                SizedBox(height: 30,),
                OutlinedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (Context)=> LoginPageDoctor()));
                }, child: Text("Doctor",style: TextStyle(fontSize: 20,color: Color.fromRGBO(0, 82, 152,1))),style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Color.fromRGBO(0, 82, 152, 1)),
                    fixedSize: Size(MediaQuery.of(context).size.width,50)),),

              ],
            ),
          ),
        ),
      )

      ,),);
  }
}

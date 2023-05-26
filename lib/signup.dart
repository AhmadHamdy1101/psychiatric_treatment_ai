import 'package:flutter/material.dart';
import 'package:psychiatric_treatment_ai/Homepage.dart';
import 'package:psychiatric_treatment_ai/LoginPage.dart';

class signupPage extends StatefulWidget {
  const signupPage({Key? key}) : super(key: key);

  @override
  State<signupPage> createState() => _signupPageState();
}

class _signupPageState extends State<signupPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController condirmPasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
              children: [
                const SizedBox(height: 35, ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 30),
                  child:  const Column(

                    children: [
                      Row(
                        children: [
                          Text("Sign Up",
                              textAlign: TextAlign.left,
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 50,
                                  color: Color.fromRGBO(0, 82, 152,1))),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("Plesse fill in form  to signup",
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),

                          ),
                        ],
                      ),



                    ],
                  ),

                ),
                SizedBox(height: 30,),
                Form(
                    key: _formKey,
                    child:  Padding(
                      padding: const EdgeInsets.only(left: 30 , right: 30),
                      child: Column(
                        children: [

                          Row(
                            children: [
                              const Text("Email",
                                style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Color.fromRGBO(1, 34, 79, 1)),

                              ),


                            ],
                          ),
                          SizedBox(height: 10,),
                          TextField( controller: emailController,decoration: InputDecoration(
                              hintText: "Type Your email"),),
                          SizedBox(height: 30,),
                          Row(
                            children: [
                              const Text("Password",
                                style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Color.fromRGBO(1, 34, 79, 1)),

                              ),


                            ],
                          ),
                          SizedBox(height: 10,),
                          TextField( controller: passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: "Type Your Password")),
                          SizedBox(height: 30,),
                          Row(
                            children: [
                              const Text("Confirm Password",
                                style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Color.fromRGBO(1, 34, 79, 1)),

                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          TextField( controller: condirmPasswordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: "Confirm Password")),
                          SizedBox(height: 50,),
                          ElevatedButton(onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              // Navigate the user to the Home page
                              Navigator.push(context, MaterialPageRoute(builder: (Context) => HomePage() ));
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Please fill input')),
                              );
                            }
                          }, child: Text("Signup"), style: ElevatedButton.styleFrom(fixedSize: Size(MediaQuery.of(context).size.width, 50), backgroundColor: Color.fromRGBO(0, 82, 152, 1)) ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [Text("I Heve Already Account",style: TextStyle(fontSize: 15),),

                              TextButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (Context) => LoginPage()));
                              }, child: Text("login",style: TextStyle(fontSize: 15),))],)
                        ],
                      ),
                    )),

              ]
          ),
        ),
      ),
    ));
  }
}


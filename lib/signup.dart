
import 'package:flutter/material.dart';
class Signup extends StatefulWidget {
  Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String? email;
  final _formKey = GlobalKey<FormState>();
  String? pass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //img
          Image.asset('images/signup.png'),
          //text
          Text("Sign-up",
            style: TextStyle(fontSize: 45,
                fontWeight: FontWeight.bold),
          ),

          //form
          Form(key: _formKey
              , child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xCDb4b7fc)
                        )
                        , child: TextFormField(
                      // validator: (v) {
                      //   if (v!.isEmpty) {
                      //     return 'null';
                      //   }
                      //   return null;
                      // },
                      onSaved: (n) {
                        setState(() {
                          email = n;
                        });
                      },

                      decoration: InputDecoration(
                        label: Text("Email"),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                      ),
                    )),
                    SizedBox(height: 20,),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xCDb4b7fc)
                        )
                        , child: TextFormField(
                      // validator: (v) {
                      //   if (v!.isEmpty) {
                      //     return 'null';
                      //   }
                      //   return null;
                      // },
                      onSaved: (n) {
                        setState(() {
                          pass = n;
                        });
                      },
                      decoration: InputDecoration(
                        label: Text("Password"),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                      ),
                    )),
                    SizedBox(height: 20,),
                    ElevatedButton(onPressed: () {
                      _formKey.currentState!.save();
                      // signupFun();

                    }, child: Center(child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text("Sgin up", style: TextStyle(fontSize: 20),),
                    ))),
                    ElevatedButton(onPressed: () {



                    }, child: Center(child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text("Sgin up with google", style: TextStyle(fontSize: 20),),
                    ))),
                    InkWell(
                      child: Text("Back to login"),
                      onTap: (){
                        Navigator.pushNamed(context, 'signin');
                      },
                    )


                  ],
                ),
              ))

          //text
        ],
      ),
    );
  }
  // signupFun() async{
  //   try {
  //     final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //       email: email!,
  //       password: pass!,
  //     );
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'weak-password') {
  //       print('The password provided is too weak.');
  //     } else if (e.code == 'email-already-in-use') {
  //       print('The account already exists for that email.');
  //     }
  //   } catch (e) {
  //     print("errorrrrrrrrrr");
  //   }
  // }


}








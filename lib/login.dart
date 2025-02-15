import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //img
          Image.asset('images/signin.png'),
          //text
          Text("Sign-in",
            style: TextStyle(fontSize: 45,
                fontWeight: FontWeight.bold),
          ),

          //form
          Form(child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:Color(0xCDb4b7fc)
                    )
                    ,child: TextFormField(
                  decoration:InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20),
                    label: Text("Email"),
                  ) ,
                )),
                SizedBox(height: 20,),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:Color(0xCDb4b7fc)
                    )
                    ,child: TextFormField(
                  decoration:InputDecoration(
                    label: Text("Password"),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20),
                  ) ,
                )),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){

                }, child: Center(child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text("Sgin in",style: TextStyle(fontSize: 20),),
                ))),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",style: TextStyle(fontSize: 20),),
                    InkWell(child: Text("SignUp",style: TextStyle(fontSize: 20,color: Color(0xCD6c63ff),fontWeight: FontWeight.bold),),
                      onTap: (){
                        Navigator.pushReplacementNamed(context, 'signup');
                      },)
                  ],
                )
              ],
            ),
          ))


          //text
        ],
      ),
    );
  }
}

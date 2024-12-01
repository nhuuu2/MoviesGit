import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
    body: Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 40),
        Image.asset(
          'assets/Screenshot 2024-11-18 085853.png',
          height: 140,
        ),

        const SizedBox(height: 10),
        Text('Account Login',style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 30, color: Colors.blue[900],
          fontFamily: 'HighlandGothicFLF'
        ),),

        const SizedBox(height: 5),
        const Text('Enter your email and password in the provided fields',style:
          TextStyle(fontSize: 17, color: Colors.black38),
          textAlign: TextAlign.center,),

        const SizedBox(height: 20),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Email',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold
            ),
          ),
        ),

        const SizedBox(height: 5),
        TextField(
          decoration: InputDecoration(
            labelText: 'Enter your Email',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            filled: true,
            fillColor: const Color(0xFFF5F5F5),
          ),
        ),
        const SizedBox(height: 20),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Password',style:
            TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),


        const SizedBox(height: 5),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Enter your password',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
            ),
            filled: true,
            fillColor: const Color(0xFFF5F5F5),
          ),
        ),

        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
              Checkbox(
              value: true,
              onChanged: (value) {},
            ),
              const Text('Stay signed in',
                style:
                TextStyle( fontSize: 16, fontWeight: FontWeight.bold),
                ),

            ],
          ),
          TextButton(onPressed: (){},
              child: const Text('Forgot password?',
                style:
              TextStyle( fontSize: 16,fontWeight: FontWeight.bold, color: Colors.black,
              decoration: TextDecoration.underline),)),
      ],
      ),

        const SizedBox(height: 10),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Screen2()));
          },
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.yellow,
            padding: const EdgeInsets.fromLTRB(150, 10, 150, 10),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
            ),
          ),
              child: const Text('Login', style:
          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
      ),

        const SizedBox(height: 10),
        const Row(
          children: [
            Expanded(child: Divider(color: Colors.black26,)),
            Padding(padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text('or continue with', style: TextStyle(color: Colors.black38),),),
            Expanded(child: Divider(color: Colors.black26,))
          ],
        ),

        const SizedBox(height: 10),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.amber, width: 1),
                  borderRadius: BorderRadius.circular(8.0)
                ),
                child: Image.asset('assets/idesign_logogg_1.jpg', width: 50, height: 50),
              ),

              const SizedBox(width: 10),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.amber, width: 1),
                      borderRadius: BorderRadius.circular(8.0)
                  ),
                child: Image.asset('assets/OIP.jpeg', width: 50, height: 50),
              ),

              const SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.amber, width: 1),
                    borderRadius: BorderRadius.circular(8.0)
                ),
                child: Image.asset('assets/3.webp',width: 50, height: 50),
              ),

              const SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.amber, width: 1),
                    borderRadius: BorderRadius.circular(8.0)
                ),
                child:  Image.asset('assets/round-tiktok3350.logowik.com.webp',width: 50, height: 50),
              ),

            ],
          ),


        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Don't have an account?"),
            TextButton(onPressed: (){

            },
                child: Text('Register', style:
                  TextStyle(color: Colors.yellow[900]),))
          ],
        ),

      ]
    ),
    ),
    );
  }

  void setState(Null Function() param0) {}


}
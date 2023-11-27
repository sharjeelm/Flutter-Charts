
import 'package:flutter/material.dart';

import 'Signup.dart';


class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding:  EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              const Column(

              children: [
              SizedBox(
              height: 45,
              ),
              Text(
                'Hello.',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                  fontFamily: 'Lexend',
                ),
              ),
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.grey,
                    fontFamily: 'Lexend',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            const Text(
              'Email ',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            TextField(
              decoration: InputDecoration(
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFD6D6D6),
                    )),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xFFD6D6D6),
                    ),
                    borderRadius: BorderRadius.circular(15)),
                hintText: 'Enter Email',
                fillColor: const Color(0xFFD6D6D6),
                filled: true,
                prefixIcon: const Icon(Icons.email_outlined),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Password',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            TextField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide:  const BorderSide(
                      color: Color(0xFFD6D6D6),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFD6D6D6),
                      ),
                      borderRadius: BorderRadius.circular(15)),
                  hintText: 'Enter Password',
                  fillColor: const Color(0xFFD6D6D6),
                  filled: true,
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: const Icon(Icons.visibility_off_rounded)),
            ),
            const Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot password?',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Lexend',
                      color: Color(0xFF304FFE)),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            const Text('We will text to confirm your number. Standard \n number and data rates apply.'
              ,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black,),),
            const SizedBox(
              height: 35,
            ),
            Container(
              width: 400,
              height: 50,
              color: const Color(0xFF304FFE),
              child: const Center(
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Lexend',
                      color: Colors.white,
                    ),
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            const   SizedBox(
              height: 7,
            ),
            const Padding(
              padding:  EdgeInsets.symmetric(horizontal:25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'OR',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF304FFE)),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                  ),

                ],
              ),
            ),
            const   SizedBox(
              height: 15,
            ),
            const Center(
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                      height: 70,
                      width: 70,
                      image: AssetImage(
                        'assets/google.png',
                      )),SizedBox(
                    width: 10,
                  ),
                  Image(
                      height: 70,
                      width: 70,
                      image: AssetImage(
                        'assets/facebook.png',
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Image(
                      height: 70,
                      width: 70,
                      image: AssetImage(
                        'assets/apply.png',
                      )),
                ],
              ),
            ),

               SizedBox(
                height: 40,
              ),
               Center(
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                     Text(
                      'Dont have an account?',
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Lexend',
                          color: Colors.black),
                    ),
                    TextButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignUpScreen()),
                        );
                      },
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Lexend',
                          color: Color(0xFF304FFE),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}

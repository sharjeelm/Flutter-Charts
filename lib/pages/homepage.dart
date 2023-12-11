import 'package:agora/pages/new_meeting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'join_with_code.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Agora Practice',
        style: TextStyle(
          color: Colors.white,

        ),)
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.fromLTRB( 20, 50, 0, 30),
            child: ElevatedButton.icon(
              onPressed: (){
                Get.to(NewMeeting());
              },
              icon: const Icon(Icons.add,
                color: Colors.white,
                size: 25,
              ),
              label: const Text("New Meeting",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                ),),
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(350, 50),
                backgroundColor: Colors.blue,
              ),
            ),
          ),

          const Divider(
            thickness: 1,
            height: 6,
            indent: 40,
            endIndent: 40,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
            child: OutlinedButton.icon(
              onPressed: (){
                Get.to(JoinWithCode());
              }, icon:const Icon(Icons.margin_outlined,
              color: Colors.blue,
            ) ,
              label: const Text(" Join with a code",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18
                ),
              ),
              style: OutlinedButton.styleFrom(
                fixedSize: const Size(350, 50),
              ),

            ),
          ),
          const SizedBox(
            height: 150,
          ),
          Image.network("https://user-images.githubusercontent.com/67534990/127524449-fa11a8eb-473a-4443-962a-07a3e41c71c0.png"),
        ],
      ),
    );
  }
}

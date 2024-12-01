import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Note'),
        backgroundColor: Color(0xE89AF3F3),
        actions: [
          IconButton(onPressed: () {
            debugPrint('Saved');
          },
              icon: const Icon(Icons.save))
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(image:
              NetworkImage('https://toigingiuvedep.vn/wp-content/uploads/2022/03/hinh-nen-phong-canh-anime.jpg'),
              fit: BoxFit.cover)
            ),
          ),
          const Padding(
          padding: EdgeInsets.all(16.0),
          child: TextField(
            keyboardType: TextInputType.multiline,
            maxLines: null,
            decoration: InputDecoration(
                hintText: "Write note in here...",
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Color(0xFFF3F6D8)
            ),
            style: TextStyle(fontSize: 16),
          ),
          )

        ],
      ),
    );
  }

}

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num){
    final player = AudioCache();
    player.play('note$num.wav');

  }

  Expanded buildKey(int soundNumber,{Color color,Widget widget}){

    return  Expanded(
      child: FlatButton(

        onPressed: ()
        {
          playSound(soundNumber);
        },

         color: color,
         child: widget,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,

                  children: <Widget>[
                    buildKey(1,color: Colors.red,widget: Icon(Icons.audiotrack)),
                    buildKey(2,color: Colors.orange,widget: Icon(Icons.audiotrack)),
                    buildKey(3,color: Colors.yellow,widget: Icon(Icons.audiotrack)),
                    buildKey(4,color: Colors.green,widget: Icon(Icons.audiotrack)),
                    buildKey(5,color: Colors.blue,widget: Icon(Icons.audiotrack)),
                    buildKey(6,color: Colors.indigo,widget: Icon(Icons.audiotrack)),
                    buildKey(7,color: Colors.purple,widget: Icon(Icons.audiotrack)),

                    


                    ],
                ),
        ),
      ),
    );
  }
}

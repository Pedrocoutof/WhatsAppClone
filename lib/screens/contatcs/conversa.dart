import 'package:flutter/material.dart';
import 'package:whats_app_flutter/models/chat_model.dart';


const colorWpp = Color(0xFF075F56);

class ConversaScreen extends StatelessWidget {
  final ChatModel contato;
  const ConversaScreen({ Key? key, required this.contato }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: colorWpp,
        leading: InkWell(
          onTap: (){ Navigator.pop(context);},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(Icons.arrow_back, size: 10,),

                CircleAvatar(
                  radius: 21,
                backgroundImage: NetworkImage(contato.perfilUrl),
              ),
            ],
          ),),
        title: Text(contato.nome),
        actions: [
          IconButton(icon: const Icon(Icons.video_camera_front_sharp), onPressed: (){},),
          IconButton(icon: const Icon(Icons.call), onPressed: (){},),
          
          IconButton(icon: const Icon(Icons.more_vert), onPressed: (){},),
        ],
      ),
    );
  }
}
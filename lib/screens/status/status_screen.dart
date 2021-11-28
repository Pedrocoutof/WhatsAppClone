import 'package:flutter/material.dart';
import 'package:whats_app_flutter/models/chat_model.dart';
import 'package:whats_app_flutter/models/user_model.dart';

class Status extends StatelessWidget {
  const Status({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(leading: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(userModel.perfilUrl),
        ),
        title: Text("Meu Status"),
        subtitle: Text("Agora mesmo."),
        trailing: IconButton(
          onPressed: (){},
          icon: Icon(Icons.more_horiz),),
        ),
        
        ListTile(subtitle: Text("Atualizações recentes"),),
      ],
    );
  }
}


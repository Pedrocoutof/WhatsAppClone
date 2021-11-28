import 'package:flutter/material.dart';
import 'package:whats_app_flutter/models/chat_model.dart';
import 'package:whats_app_flutter/models/user_model.dart';

class Status extends StatelessWidget {
  const Status({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        
        statusUser(),
        
        ListTile(title: Text("Atualizações recentes", style: TextStyle(color: Colors.grey.shade600),),),


        //LISTA DE STORIES
        ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: listaDeContatos.length,
          itemBuilder: (context, i) => 
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
            ListTile(
              leading: CircleAvatar(backgroundImage: NetworkImage(listaDeContatos[i].perfilUrl),),
              title: Text(listaDeContatos[i].nome),
              
              ),
            Divider()
          ],)
          )
        
      ],
    );
  }
}

Widget statusUser(){
      return ListTile(leading: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(userModel.perfilUrl),
        ),
        title: Text("Meu Status"),
        subtitle: Text("Agora mesmo."),
        trailing: IconButton(
          onPressed: (){},
          icon: Icon(Icons.more_horiz),),
        );
}


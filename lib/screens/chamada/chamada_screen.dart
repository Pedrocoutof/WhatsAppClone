import 'package:flutter/material.dart';
import 'package:whats_app_flutter/models/chat_model.dart';
import 'package:whats_app_flutter/models/user_model.dart';

const colorWpp = Color(0xFF075F56);

class Chamada extends StatelessWidget {
  const Chamada({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listaDeContatos.length,
      itemBuilder: (context, i) =>
    Column(
      children: [
        ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage(listaDeContatos[i].photoPerfil),),
          title: Text(listaDeContatos[i].nome),
          subtitle: Text(listaDeContatos[i].horario),
          trailing: Icon(Icons.call, color: colorWpp,),
          ),
        Divider(),
      ],
    )
    );
  }
}
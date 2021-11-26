import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whats_app_flutter/models/chat_model.dart';
import 'conversa.dart';

class Contacts extends StatefulWidget {
  const Contacts({ Key? key }) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      
      itemCount: listaDeContatos.length,
      itemBuilder: (context, i) => Column(
        children: [
          const Divider(
            height: 12,
          ),

          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(listaDeContatos[i].perfilUrl),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute (builder: (context) => ConversaScreen(contato: listaDeContatos[i])));
            },
            minVerticalPadding: 23,
            title: Text(listaDeContatos[i].nome, style: GoogleFonts.roboto(fontSize: 17)),
            subtitle: Text(listaDeContatos[i].ultimaMenssagem, maxLines: 1,), isThreeLine: true,
          )
      ],
      
      )

      );

  }
}
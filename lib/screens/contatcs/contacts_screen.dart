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
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(listaDeContatos[i].photoPerfil),
            ),
            onLongPress: (){
                listaDeContatos.remove(listaDeContatos[i]);
                setState(() {});
            },
            onTap: (){
              Navigator.push(context, MaterialPageRoute (builder: (context) => ConversaScreen(contato: listaDeContatos[i])));
            },
            minVerticalPadding: 23,
            title:    Text(listaDeContatos[i].nome, style: GoogleFonts.roboto(fontSize: 17)),
            subtitle: Text(listaDeContatos[i].ultimaMenssagem, maxLines: 1,), isThreeLine: true,
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Text(listaDeContatos[i].horario, style: TextStyle(fontSize: 13, color: Colors.grey),),
              const Icon(Icons.check,)
            ],)
          ),
          
          const Divider(
            height: 12,
          ),
      ],
      
      )

      );

  }
}

excluiContato(ChatModel contatoParaExcluir){



}
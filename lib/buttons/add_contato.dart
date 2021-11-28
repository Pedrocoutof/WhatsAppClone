import 'package:flutter/material.dart';
import 'package:whats_app_flutter/main.dart';
import 'package:whats_app_flutter/models/chat_model.dart';
import 'package:whats_app_flutter/screens/contatcs/contacts_screen.dart';

 late String nome;
 late String ultimaMensagem;
 late String fotoUrl;

class AddContact extends StatefulWidget {
  const AddContact({ Key? key }) : super(key: key);

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {

  TextEditingController controllerNome = TextEditingController();
  TextEditingController controllerUltimaMensagem = TextEditingController();
  TextEditingController controllerFotoUrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(title: Text("Novo Grupo"), toolbarHeight: 75, backgroundColor: colorWpp,),
      
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:  [
          const CircleAvatar(
            radius: 45,
            backgroundImage: NetworkImage("https://media.istockphoto.com/vectors/profile-placeholder-image-gray-silhouette-no-photo-vector-id1016744034?k=20&m=1016744034&s=170667a&w=0&h=JlerB4H3IeLolDMQOYiAF9uLuZeW0bs4jH6NdrNPDtE="),),
          
            ListTile(title: Text("Nome : "),
              subtitle: TextField(
                controller: controllerNome,
              ),
            ),

            ListTile(title: Text("Ultima mensagem : "),
              subtitle: TextField(
                controller: controllerUltimaMensagem,
              ),
            ),

            ListTile(title: Text("Foto URL : "),
              subtitle: TextField(
                controller: controllerFotoUrl,
              ),
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                ElevatedButton(onPressed: (){},
                              child: const Icon(Icons.cancel_outlined, color: Colors.white, size: 38,),
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all(EdgeInsets.all(8)),
                                shape: MaterialStateProperty.all(const CircleBorder()),
                                backgroundColor: MaterialStateProperty.all(Colors.red.shade900)),
                              ),


                ElevatedButton(onPressed: (){
                  saveContact();
                },
                              child: const Icon(Icons.task_alt_outlined, color: Colors.white, size: 38,),
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all(EdgeInsets.all(8)),
                                shape: MaterialStateProperty.all(const CircleBorder()),
                                backgroundColor: MaterialStateProperty.all(colorWpp)),
                              ),
            ],)
          
        ],)
        )
    );
  }
saveContact(){

  String nomeFinal = controllerNome.text;
  String fotoFinal;
  String horarioFinal = "15:08";
  String ultimaMensagemFinal = controllerUltimaMensagem.text;

  if(controllerFotoUrl.text.isEmpty){
    fotoFinal = "https://media.istockphoto.com/vectors/profile-placeholder-image-gray-silhouette-no-photo-vector-id1016744034?k=20&m=1016744034&s=170667a&w=0&h=JlerB4H3IeLolDMQOYiAF9uLuZeW0bs4jH6NdrNPDtE=";
  }else{
    fotoFinal = controllerFotoUrl.text;
  }

  ChatModel novoContato = ChatModel(
    nome: nomeFinal,
    ultimaMenssagem: ultimaMensagemFinal,
    perfilUrl: fotoFinal,
    horario: horarioFinal,
    );
  listaDeContatos.add(novoContato);
  Navigator.pop(context, (context) => Contacts());
  setState(() {});
}
}

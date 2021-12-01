import 'package:flutter/material.dart';
import 'package:whats_app_flutter/main.dart';
import 'package:whats_app_flutter/models/chat_model.dart';

class PerfilPage extends StatefulWidget {
  final ChatModel contato;
  const PerfilPage({ Key? key, required this.contato}) : super(key: key);

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  bool check = false;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            flexibleSpace: Image.asset(widget.contato.photoPerfil),
            expandedHeight: 400,
            toolbarHeight: 75,
            backgroundColor: colorWpp,
            pinned: true,
            leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: (){Navigator.pop(context);},),
            title: Text(widget.contato.nome),
            actions: [
              IconButton(icon: Icon(Icons.more_vert), onPressed: (){},),
              ],
          ),

        SliverList(
          delegate: SliverChildListDelegate(
            [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: midiaLinksDocs()
            ),

            Divider(),

            Padding(padding: EdgeInsets.only(bottom: 8.0),
            child: silenciaNotificacoes(),),

            Padding(padding: EdgeInsets.only(bottom: 8.0),
            child: ListTile(title: Text("Visibilidade da mídia"),)),

            Padding(padding: EdgeInsets.only(bottom: 8.0),
            child: mensagensTemporarias(),),

            Padding(padding: EdgeInsets.only(bottom: 8.0),
            child: recado(widget.contato),),

            Padding(padding: EdgeInsets.only(bottom: 8.0),
            child: numero(widget.contato),),


            Padding(padding: EdgeInsets.only(bottom: 10.0),
            child: bloquear(),),

            Padding(padding: EdgeInsets.only(bottom: 10.0),
            child: denunciar(),),



        ]
            ),
        )
        ],
      ),
      
    );
  }

Container midiaLinksDocs(){
  return Container(
                height: 100,
                color: Colors.grey.shade100,
                child: ListTile(leading: Text("Mídia, Links e docs"),
                trailing: Text(listaDeContatos.length.toString()),
                )
              );
}

ListTile silenciaNotificacoes(){
  return ListTile(
    title: Text("Silenciar notificações"),
    trailing: Checkbox(
      activeColor: colorWpp,
      value: check,
      onChanged: (bool? value){
        setState(() {
          check = value!;
        });
      },
    ),

  );

}
}


ListTile mensagensTemporarias(){
  return const ListTile(
    title: Text("Mensagens temporárias"),
    subtitle: Text("Desativadas"),
    trailing: Padding(padding: EdgeInsets.all(13),
    child: Icon(Icons.timelapse, color: colorWpp,),),
  );
}

  ListTile criptografia(){
    return const ListTile(
      title: Text("Criptografia"),
      subtitle: Text("As mensagens e as chamadas são protegidas com a criptografia de ponta a ponta. Toque para confirmar."),
      trailing: Icon(Icons.lock, color: colorWpp,),
    );
}

ListTile recado(ChatModel contato){
  return ListTile(
    title: Text("Recado"),
    subtitle: Text(contato.recado),
  );
}

ListTile numero(ChatModel contato){
  return ListTile(
    title: Text(contato.numero),
    trailing: Icon(Icons.call, color: colorWpp,),
  );
}


ListTile bloquear(){
  return ListTile(
    leading: Icon(Icons.block, color: Colors.red.shade700,),
    title: Text("Bloquear", style: TextStyle(color: Colors.red.shade700),),
  );
}


ListTile denunciar(){
  return ListTile(
    leading:  Icon(Icons.thumb_down, color: Colors.red.shade700,),
    title: Text("Denunciar contato", style: TextStyle(color: Colors.red.shade700),),
  );
}



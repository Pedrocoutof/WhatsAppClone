import 'package:flutter/material.dart';
import 'package:whats_app_flutter/main.dart';
import 'package:whats_app_flutter/models/chat_model.dart';

class PerfilPage extends StatelessWidget {
  final ChatModel contato;
  const PerfilPage({ Key? key, required this.contato}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            flexibleSpace: Image.network(contato.perfilUrl, fit: BoxFit.cover),
            expandedHeight: 400,
            toolbarHeight: 75,
            backgroundColor: colorWpp,
            pinned: true,
            leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: (){},),
            title: Text(contato.nome),
            actions: [
              IconButton(icon: Icon(Icons.more_vert), onPressed: (){},),
              ],
          ),

        SliverList(
          delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: midiaLinksDocs()
            ),
            Divider(),

            Padding(padding: EdgeInsets.only(bottom: 8.0),
            child: opcoes(),),
        ]
            ),
        )
        ],
      ),
      
    );
  }
}

Container midiaLinksDocs(){
  return Container(
                height: 100,
                color: Colors.grey,
              );
}

Container opcoes(){
  return Container(
                height: 300,
                color: Colors.grey,

  );
}

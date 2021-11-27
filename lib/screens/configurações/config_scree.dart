import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whats_app_flutter/models/user_model.dart';

const colorWpp = Color(0xFF075F56);

class ConfiguracaoScreen extends StatelessWidget {
  const ConfiguracaoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorWpp,
        title: Text("Configurações"),
        toolbarHeight: 75,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          perfilConfig(),
          Divider(),
          conta(),
          Divider(),
          conversas(),
          Divider(),
          notificacoes(),
          Divider(),
          armazenamentoEDados(),
          Divider(),
          ajuda(),
          Divider(),
          convidarUmAmigo(),
          Divider(),
          creditos(),
        ],
      ),
    );
  }
}

Widget perfilConfig() {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
    child: ListTile(
      leading: CircleAvatar(radius: 35, backgroundImage: NetworkImage(userModel.perfilUrl),),
      title: Text(userModel.nome, style: TextStyle(fontSize: 20),),
      subtitle: Text(userModel.statusText, style: TextStyle(fontSize: 14), maxLines: 1,),
      trailing: const Icon(Icons.qr_code),
    ),
  );
}

  Widget conta(){
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: ListTile(
        leading: Icon(Icons.vpn_key),
        title: Text("Conta"),
        subtitle: Text("Privacidade, segurança, mudar numero"),)
    );
  }

  Widget conversas(){
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: ListTile(
        leading: Icon(Icons.chat),
        title: Text("Conversas"),
        subtitle: Text("Tema, papel de parede, histórico de conversas")),
    );
  }

  Widget notificacoes(){
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: ListTile(
        leading: Icon(Icons.notifications),
        title: Text("Notificacoes"),
        subtitle: Text("Mensagens, grupos, chamadas")),
    );
  }

  Widget armazenamentoEDados(){
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: ListTile(
        leading: Icon(Icons.storage),
        title: Text("Armazenamento e dados"),
        subtitle: Text("Uso de rede, download automatico")),
    );
  }

  Widget ajuda(){
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: ListTile(
        leading: Icon(Icons.help),
        title: Text("Ajuda"),
        subtitle: Text("Central de ajuda, fale conosco, política de privacidade")),
    );
  }

  Widget convidarUmAmigo(){
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: ListTile(
        leading: Icon(Icons.group),
        title: Text("Convidar um amigo"),)
    );
  }

  Widget creditos(){
    return  ListTile(
          horizontalTitleGap: 100,
          isThreeLine: true,
          title: Text("From", textAlign: TextAlign.center,),
          subtitle: Text("Pedro do Couto\nInspirado no aplicativo 'WhatsApp'", textAlign: TextAlign.center,),
    );
  }

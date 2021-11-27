import 'package:flutter/material.dart';
import 'package:whats_app_flutter/buttons/add_contato.dart';
import 'package:whats_app_flutter/screens/configura%C3%A7%C3%B5es/config_scree.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({ Key? key }) : super(key: key);

 
   
  @override
  Widget build(BuildContext context) {


    int valor = -1;
    
    return PopupMenuButton(

      onSelected: (item) => mudaPage(context, item),

      itemBuilder: (context) => [
        PopupMenuItem(
          value: 0,
          onTap: () {
            valor = 0;},
          child: Text("Novo grupo"),
        ),
        PopupMenuItem(
          value: 1,
          onTap: () {valor = 1;},
          child: Text("Nova transmissão"),
        ),
        PopupMenuItem(
          value: 2,
          onTap: () {valor = 2;},
          child: Text("Aparelhos conectados"),
        ),
        PopupMenuItem(
          value: 3,
          onTap: () {valor = 3;},
          child: Text("Mensagens favoritas"),
        ),
        PopupMenuItem(
          value: 4,
          onTap: () {valor = 4;},
          child: Text("Pagamentos"),
        ),
        PopupMenuItem(
          value: 5,
          onTap: () {valor = 5;},
          child: Text("Configurações"),
        ),
      ],
    );
  }
}

void mudaPage(BuildContext context, var item){
    if(item == 0){
      Navigator.push(context, MaterialPageRoute(builder: (context) => const AddContact()));
      print("Novo grupo");
      }

    else if(item == 1){
      print("Nova Transmissão");
      }

    else if(item == 2){
      print("Aparelhos Conectados");
      }

    else if(item == 3){
      print("Mensagens Favoritas");
      }

    else if(item == 4){
      print("Pagamentos");
      }

    else if(item == 5){
      Navigator.push(context, MaterialPageRoute(builder: (context) => const ConfiguracaoScreen()));
    }
    }
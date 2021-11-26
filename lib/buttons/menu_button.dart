import 'package:flutter/material.dart';
import 'package:whats_app_flutter/screens/configura%C3%A7%C3%B5es/config_scree.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({ Key? key }) : super(key: key);

   
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) => [
        const PopupMenuItem(
          child: Text("Novo grupo"),
        ),
        const PopupMenuItem(
          child: Text("Nova transmissão"),
        ),
        const PopupMenuItem(
          child: Text("Aparelhos conectados"),
        ),
        const PopupMenuItem(
          child: Text("Mensagens favoritas"),
        ),
        const PopupMenuItem(
          child: Text("Pagamentos"),
        ),
        PopupMenuItem(
          onTap: (){ Navigator.pop(context, MaterialPageRoute(builder: (context) => const ConfiguracaoScreen()));
          
          Navigator.push(context, MaterialPageRoute(builder: (context) => const ConfiguracaoScreen()));},
          child: const Text("Configurações"),
        ),
      ],
      
    );
  }
}

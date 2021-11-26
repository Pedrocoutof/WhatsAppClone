import 'package:flutter/material.dart';

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
        const PopupMenuItem(
          child: Text("Configurações"),
        ),
      ],
      
    );
  }
}
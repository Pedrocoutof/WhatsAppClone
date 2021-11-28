import 'package:flutter/material.dart';
import 'package:whats_app_flutter/main.dart';
import 'package:whats_app_flutter/models/user_model.dart';

class EditPerfil extends StatelessWidget {
  EditPerfil({ Key? key }) : super(key: key);

  TextEditingController controllerNome = TextEditingController();
  TextEditingController controllerUrlFoto = TextEditingController();
  TextEditingController controllerRecado = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Perfil"),
        toolbarHeight: 75,
        backgroundColor: colorWpp,  
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

            InkWell(
              onTap: (){print("Clicou");},
              child: CircleAvatar(backgroundImage: NetworkImage(userModel.perfilUrl), radius: 75,),
              ),

            // NOME
            ListTile(
              leading: Icon(Icons.person),
              title : Text("Nome"),
              subtitle:TextField(
              controller: controllerNome,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: userModel.nome,
                suffixIcon: Icon(Icons.edit, color: colorWpp,)
              ),
            ),
            ),
            

            // RECADO
            ListTile(
              leading: Icon(Icons.info_outline),
              title : Text("Recado"),
              subtitle:
            TextField(
              controller: controllerRecado,
              decoration: InputDecoration(
                hintText: userModel.statusText,
                border: InputBorder.none,
                suffixIcon: Icon(Icons.edit, color: colorWpp,)
              ),
            ),
            ),

            
            // TELEFONE
            ListTile(
              leading: Icon(Icons.call),
              title : Text("Telefone"),
              subtitle:
            TextField(
              decoration: InputDecoration(
                hintText: userModel.numero,
                border: InputBorder.none,
              ),
            ),
            ),
          ],),
        ),
    );
  }
atualizaNomeUserModel(){
  if(controllerNome.text.isNotEmpty) {
    userModel.nome = controllerNome.text;
  }
}
atualizaRecadoUserModel(){
  if(controllerRecado.text.isNotEmpty) {
    userModel.statusText = controllerRecado.text;
  }
}

}

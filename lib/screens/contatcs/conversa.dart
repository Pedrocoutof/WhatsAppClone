import 'package:flutter/material.dart';
import 'package:whats_app_flutter/models/chat_model.dart';
import 'package:whats_app_flutter/models/user_model.dart';



const colorWpp = Color(0xFF075F56);

class ConversaScreen extends StatelessWidget {
  final ChatModel contato;
  const ConversaScreen({ Key? key, required this.contato }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: colorWpp,
        leading: InkWell(
          onTap: (){ Navigator.pop(context);},
          child: Center(
            child: Row(
              children: [
                const Icon(Icons.arrow_back, size: 14,),
                  CircleAvatar(
                  radius: 21,
                  backgroundImage: NetworkImage(contato.perfilUrl),
                ),
              ],
            ),
          ),),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(contato.nome),
            Text(contato.horario, style: const TextStyle(fontSize: 12, color: Colors.grey),),
          ],

        ),
        actions: [
          IconButton(icon: const Icon(Icons.videocam), onPressed: (){},),
          IconButton(icon: const Icon(Icons.call), onPressed: (){},),
          
          PopupMenuButton(
           itemBuilder: (context) => [
             const PopupMenuItem(child: Text("Ver contato")),
             const PopupMenuItem(child: Text("Mídia, links e docs")),
             const PopupMenuItem(child: Text("Pesquisar")),
             const PopupMenuItem(child: Text("Silenciar notificações")),
             const PopupMenuItem(child: Text("Papel de parede")),
             const PopupMenuItem(child: Text("Mais")),
           ], 
          )
        ],
      ),
      
      body: Stack(children: [
        Image.network(userModel.backgroundUrl, fit: BoxFit.cover,height: MediaQuery.of(context).size.height,width: MediaQuery.of(context).size.width,),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.transparent,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Container(height: 50, width: 400,
                  decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(100),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 2),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.emoji_emotions, color: colorWpp,),
                        hintText: "Mensagem",
                        border: InputBorder.none,

                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                          Icon(Icons.attach_file, color: colorWpp,),
                          Icon(Icons.camera,  color: colorWpp),
                        ],)
                      ),
                    ),
                  ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: colorWpp,
                      borderRadius: BorderRadius.circular(90)
                    ),
                    child: const Center(
                      child: Icon(Icons.mic, color: Colors.white, size: 30,),
                    ),
                  )
                ],),
            ),
            ),
            
          )
      ],)

    );
  }
}

/* body: Stack(
        
        children: [

          Image.network(userModel.backgroundUrl, fit: BoxFit.cover,height: MediaQuery.of(context).size.height,width: MediaQuery.of(context).size.width,),

          Padding(
            padding: const EdgeInsets.only(top: 690, bottom: 4),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                 Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(90)
                    ),
                    height: 60,
                    width: 410,
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(12),
                          child: Icon(Icons.emoji_emotions_outlined, size: 28,),
                        ),

                        Padding(
                          padding: EdgeInsets.only(right: 2),
                          child: Text("  Mensagem", style: TextStyle(color: Colors.grey, fontSize: 15),),
                        ),

                        Padding(padding: EdgeInsets.only(left: 190),
                        child: Icon(Icons.file_copy_outlined, size: 28,),
                        ),

                        Padding(padding: EdgeInsets.all(10),
                        child: Icon(Icons.camera_alt_outlined, size: 28,),
                        ),
                      ],
                    )
                  ),

                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: colorWpp,
                      borderRadius: BorderRadius.circular(90)
                    ),
                    child: const Center(
                      child: Icon(Icons.mic, color: Colors.white, size: 30,),
                    ),
                  )
                
              ],
            ),
          ),
        ],
      )
*/
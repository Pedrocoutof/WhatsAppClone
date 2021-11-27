import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whats_app_flutter/buttons/menu_button.dart';
import 'package:whats_app_flutter/screens/camera/camera_screen.dart';
import 'package:whats_app_flutter/screens/contatcs/contacts_screen.dart';
import 'package:whats_app_flutter/screens/status/status_screen.dart';

import 'screens/chamada/chamada_screen.dart';


const colorWpp = Color(0xFF075F56);
const titleWpp = Text("WhatsApp");

void main() {
  runApp(const WhatsApp());
}

class WhatsApp extends StatefulWidget {
  const WhatsApp({ Key? key }) : super(key: key);

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> with SingleTickerProviderStateMixin{

  int paginaAtual = 1;
  late PageController pc;

  late TabController _tabController;

  @override
  void initState(){
    super.initState();
    pc = PageController(initialPage: paginaAtual);
    _tabController = TabController(length: 4, vsync: this, initialIndex: paginaAtual);
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: colorWpp,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      title: "WhatsApp",
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 75,
          backgroundColor: colorWpp,
          title: titleWpp,
          actions:  [
            
            IconButton(
            icon: const Icon(Icons.search),
            color: Colors.white,
            onPressed: () {MenuButton();},),
            
            const MenuButton(),
          ],
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
            controller: _tabController,
            tabs:[
              Tab(icon: Icon(Icons.camera_alt),),

              Tab(text: "Conversas"),
              
              Tab(text: "Status"),
          
              Tab(text: "Chamadas"),
            ]
          ),
        ),
        body: TabBarView(
          
          controller: _tabController,
          children: [
            CameraPage(),
            Contacts(),
            Status(),
            Chamada(),
          ],
        ),
    )
    );

  }
}
import 'package:flutter/material.dart';

class UserModel{
    late final String nome;
    late final String perfilFoto;
    late final String background;
    late final String statusText;
    late final String numero;

  UserModel({required this.nome, required this.perfilFoto, required this.background, required this.statusText, required this.numero });

}

UserModel userModel = UserModel(
                                nome: "Pedro do Couto",
                                perfilFoto: "assets/images/user/userPhoto.jpg",
                                background: "assets/images/user/background.jpg",
                                statusText: "...And all your money won't another minute buy...⏳",
                                numero: "+55 99 99999 9999",
                                );
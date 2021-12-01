import 'package:flutter/material.dart';

class UserModel{
    late final String nome;
    late final String perfilFoto;
    late final String backgroundUrl;
    late final String statusText ;
    late final String numero;

  UserModel({required this.nome, required this.perfilFoto, required this.backgroundUrl, required this.statusText, required this.numero });

}

UserModel userModel = UserModel(
                                nome: "Pedro do Couto",
                                perfilFoto: "assets/images/user/userPhoto.jpg",
                                backgroundUrl: "https://www.10wallpaper.com/wallpaper/1366x768/1503/THE_WITCHER_3_WILD_HUNT_Game_HD_Wallpaper_17_1366x768.jpg",
                                statusText: "...And all your money won't another minute buy...⏳",
                                numero: "+55 99 99999 9999",
                                );
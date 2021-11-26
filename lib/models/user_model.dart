class UserModel{
    late final String nome;
    late final String perfilUrl;
    late final String backgroundUrl;
    late final String statusText ;
    late final String numero;

  UserModel({required this.nome, required this.perfilUrl, required this.backgroundUrl, required this.statusText, required this.numero });

}

UserModel userModel = UserModel(
                                nome: "Pedro do Couto",
                                perfilUrl: "https://pps.whatsapp.net/v/t61.24694-24/168992558_554171122286634_8831476413415548548_n.jpg?ccb=11-4&oh=2216475ed44dc2dfb9c95315ea52287a&oe=61A64E04",
                                backgroundUrl: "https://www.10wallpaper.com/wallpaper/1366x768/1503/THE_WITCHER_3_WILD_HUNT_Game_HD_Wallpaper_17_1366x768.jpg",
                                statusText: "...And all your money won't another minute buy...⏳",
                                numero: "+55 99 99999 9999",
                                );
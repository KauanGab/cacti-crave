import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 245, 244, 244),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/logo-sn.png', width: 25, height: 25),
              Text('Pedro Carvalho',
                  style: TextStyle(fontWeight: FontWeight.w500)),
              Image.asset('assets/images/logo-sn.png', width: 25, height: 25),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 135,
                  width: 135,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/pedro.jpg'),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ProfileMenu(
                icon: "assets/icons/new/profile.svg",
                text: 'Meu Perfil',
                press: () {},
              ),
              ProfileMenu(
                icon: "assets/icons/new/notification.svg",
                text: 'Notificações',
                press: () {},
              ),
              ProfileMenu(
                icon: "assets/icons/new/config.svg",
                text: 'Configurações',
                press: () {},
              ),
              // ProfileMenu(
              //   icon: "assets/icons/new/helping.svg",
              //   text: 'Ajuda',
              //   press: () {},
              // ),
              // ProfileMenu(
              //   icon: "assets/icons/new/about.svg",
              //   text: 'Sobre',
              //   press: () {},
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key,
    required this.text,
    required this.icon,
    required this.press,
  });

  final String text, icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: SizedBox(
        height: 70,
        child: TextButton(
          style: TextButton.styleFrom(
            primary: Color(0xFF47B67E),
            backgroundColor: Color.fromARGB(255, 245, 244, 244),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: press,
          child: Row(
            children: [
              SvgPicture.asset(
                icon,
                width: 20,
                color: Color(0xFF47B67E),
              ),
              SizedBox(
                width: 22,
              ),
              Expanded(
                child: Text(
                  text,
                  style: TextStyle(color: Color.fromARGB(255, 114, 113, 113)),
                ),
              ),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
        ),
      ),
    );
  }
}

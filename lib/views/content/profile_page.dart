import 'package:cacti_crave/views/content/about_page.dart';
import 'package:cacti_crave/views/content/help_page.dart';
import 'package:cacti_crave/views/content/mydata_page.dart';
import 'package:cacti_crave/views/content/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'notify_page.dart';

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
              SvgPicture.asset(
                "assets/icons/new/logo-sn.svg",
                width: 25,
                height: 25,
              ),
              Text('Pedro Carvalho',
                  style: TextStyle(fontWeight: FontWeight.w500)),
              SvgPicture.asset(
                "assets/icons/new/logo-sn.svg",
                width: 25,
                height: 25,
              ),
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
                icon: Icons.article_outlined,
                text: 'Meus dados',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => mydata()),
                  );
                },
              ),
              ProfileMenu(
                icon: Icons.notifications,
                text: 'Notificações',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NotifyPage()),
                  );
                },
              ),
              ProfileMenu(
                icon: Icons.settings,
                text: 'Configurações',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => settings()),
                  );
                },
              ),
              ProfileMenu(
                icon: Icons.question_mark,
                text: 'Ajuda',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => help()),
                  );
                },
              ),
              ProfileMenu(
                icon: Icons.info_outline,
                text: 'Sobre',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => abouting()),
                  );
                },
              ),
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
    required this.icon,
    required this.text,
    required this.press,
  });

  final IconData icon;
  final String text;
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
              Icon(
                icon,
                color: Color(0xFF47B67E),
                weight: 10,
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

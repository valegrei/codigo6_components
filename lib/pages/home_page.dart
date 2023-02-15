import 'package:codigo6_components/pages/alert_page.dart';
import 'package:codigo6_components/pages/avatar_page.dart';
import 'package:codigo6_components/pages/input_page.dart';
import 'package:codigo6_components/pages/list_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'card_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Image.network(
              //     "https://i.pinimg.com/736x/ef/3f/df/ef3fdfd2f39a4f5d4a9f5557c0f21246.jpg"
              // ),
              // Container(
              //   height: 200,
              //   width: 200,
              //   decoration: BoxDecoration(
              //     color: Colors.red,
              //   ),
              //   child: ClipRRect(
              //     borderRadius: BorderRadius.circular(20.0),
              //     child: Image.network(
              //         "https://i.pinimg.com/736x/ef/3f/df/ef3fdfd2f39a4f5d4a9f5557c0f21246.jpg"),
              //   ),
              // ),
              const SizedBox(
                height: 30.0,
              ),
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20.0),
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://i.pinimg.com/736x/ef/3f/df/ef3fdfd2f39a4f5d4a9f5557c0f21246.jpg")),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.12),
                      offset: const Offset(10, 10),
                      blurRadius: 12.0,
                    ),
                  ],
                ),
                // child: Text("Hola mundo"),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Text(
                "Flutter Components",
                style: GoogleFonts.manrope(
                  fontSize: 22.0,
                  color: Colors.black.withOpacity(0.75),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
                textAlign: TextAlign.center,
                style: GoogleFonts.manrope(
                  fontSize: 14.0,
                  color: Colors.black.withOpacity(0.75),
                  fontWeight: FontWeight.w400,
                ),
              ),
              ItemMenuWidget(
                title: "Avatars",
                description: "Detalle del avatar",
                icon: Icons.person,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AvatarPage()));
                },
              ),
              ItemMenuWidget(
                title: "Alertas",
                description: "Detalle de las alertas",
                icon: Icons.add_alert,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AlertPage()));
                },
              ),
              ItemMenuWidget(
                title: "Cards",
                description: "Detalle de cards",
                icon: Icons.credit_card_rounded,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CardPage()));
                },
              ),
              ItemMenuWidget(
                title: "Inputs",
                description: "Detalle de inputs",
                icon: Icons.input,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => InputPage()));
                },
              ),
              ItemMenuWidget(
                title: "ListView",
                description: "Detalle de listview",
                icon: Icons.list,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ListPage()));
                },
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class ItemMenuWidget extends StatelessWidget {
  String title;
  String description;
  IconData icon;
  VoidCallback onTap;

  ItemMenuWidget({
    required this.title,
    required this.description,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 7.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.06),
                  blurRadius: 12,
                  offset: const Offset(4, 4))
            ]),
        child: ListTile(
          title: Text(
            title,
            style: GoogleFonts.manrope(
              fontSize: 14.0,
              color: Colors.black.withOpacity(0.75),
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Text(
            description,
            style: GoogleFonts.manrope(
              fontSize: 13.0,
              color: Colors.black.withOpacity(0.60),
              fontWeight: FontWeight.w500,
            ),
          ),
          leading: Icon(icon),
          trailing: const Icon(Icons.chevron_right),
        ),
      ),
    );
  }
}

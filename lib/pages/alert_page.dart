import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlertPage extends StatelessWidget {
  void myAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Hola"),
            content: const Text(
                "Este es el contenido de mi AlertDialog donde estoy practicando"),
            actions: [
              TextButton(onPressed: () {}, child: const Text("Cancelar")),
              TextButton(onPressed: () {}, child: const Text("Aceptar")),
            ],
          );
        });
  }

  void myAlert2(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            scrollable: true,
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Caregiver Review",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.manrope(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF758DB8)),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                const SizedBox(
                  height: 12,
                ),
                const Icon(
                  Icons.account_circle,
                  size: 56,
                  color: Color(0xFF789BD6),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Amanda Johson",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.manrope(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF6D7C98)),
                ),
                Text(
                  "Rate the care provided Sunday, Jan 9",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.manrope(
                      fontSize: 11.0,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF6D7C98)),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xffd2d2d2),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  height: 60,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFF5F8FB)),
                      color: const Color(0xFFF7F9FC)),
                  child: Text(
                    "Aditional Comments...",
                    style: GoogleFonts.manrope(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFFA3B9D7)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                        child: OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              "Not Now",
                              style: GoogleFonts.manrope(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xFF6A88B7)),
                            ))),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Submit Review",
                              style: GoogleFonts.manrope(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ))),
                  ],
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Alerte Page"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                myAlert(context);
              },
              child: const Text("Alerta 1")),
          ElevatedButton(
              onPressed: () {
                myAlert2(context);
              },
              child: const Text("Alerta 2")),
        ],
      ),
    );
  }
}

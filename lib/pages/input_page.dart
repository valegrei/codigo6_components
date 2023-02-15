import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  TextEditingController firstNameController = TextEditingController();
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              cursorColor: Colors.red,
              cursorWidth: 3.0,
              maxLength: 20,
              style: GoogleFonts.montserrat(fontSize: 14.0, color: Colors.red),
              decoration: const InputDecoration(
                  hintText: "Ingresa tu correo electrónico",
                  icon: Icon(Icons.email),
                  prefixIcon: Icon(Icons.location_city),
                  suffixIcon: Icon(Icons.person),
                  labelText: "Correo Electrónico"
                  //label: Text("Hola")
                  ),
              onChanged: (String text) {
                print(text);
              },
              onSubmitted: (String text) {
                print("Wwwwwwwww::: $text");
              },
            ),
            const SizedBox(
              height: 30.0,
            ),
            TextField(
              style: GoogleFonts.manrope(
                fontSize: 14.0,
              ),
              decoration: InputDecoration(
                  fillColor: const Color(0xfff6f7f9),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.black.withOpacity(0.4)),
                  prefixIcon:
                      Icon(Icons.search, color: Colors.black.withOpacity(0.4)),
                  hintText: "Buscar producto...",
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 14.0,
                    vertical: 14.0,
                  ),
                  focusedBorder: OutlineInputBorder(
                      //UnderlineInputBorder
                      borderRadius: BorderRadius.circular(16.0),
                      borderSide: BorderSide.none),
                  enabledBorder: OutlineInputBorder(
                      //UnderlineInputBorder
                      borderRadius: BorderRadius.circular(16.0),
                      borderSide: BorderSide.none)),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  blurRadius: 12,
                  offset: const Offset(5, 5),
                )
              ]),
              child: TextField(
                style: GoogleFonts.manrope(
                  fontSize: 14.0,
                ),
                decoration: InputDecoration(
                    fillColor: const Color(0xfff6f7f9),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.black.withOpacity(0.4)),
                    prefixIcon:
                        Icon(Icons.call, color: Colors.black.withOpacity(0.4)),
                    hintText: "Ingresa tu teléfono",
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 14.0,
                      vertical: 14.0,
                    ),
                    focusedBorder: OutlineInputBorder(
                        //UnderlineInputBorder
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide.none),
                    enabledBorder: OutlineInputBorder(
                        //UnderlineInputBorder
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide.none)),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            TextField(
              controller: firstNameController,
              decoration: InputDecoration(hintText: "Ingrese tu nombre..."),
              onChanged: (String value) {
                name = value;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
                onPressed: () {
                  print(name);
                },
                child: Text("Iniciar Sesion")
            ),
            ElevatedButton(
                onPressed: () {
                  firstNameController.text = "Manolo Lopez";
                },
                child: Text("Opciones")
            ),
          ],
        ),
      ),
    );
  }
}

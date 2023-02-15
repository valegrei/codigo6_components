import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Page"),
      ),
      body: Scaffold(
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (BuildContext context, int mandarina) {
            return Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14.0),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(4,4),
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 12.0,
                  )
                ]
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(14.0),
                      bottomLeft: Radius.circular(14.0),
                    ),
                    child: Image.network(
                      "https://images.pexels.com/photos/6431572/pexels-photo-6431572.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      height: 120.0,
                      width: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10.0,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Informe de actividades",
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          "12-01-2023 12:00 pm",
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w400,
                            fontSize: 13.0,
                          ),
                        ),
                        Text(
                          "Se tuvo que actualizar el dominio de la aplicacion web porque no se pagó a tiempo.",
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10.0,),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

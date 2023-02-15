import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListPage extends StatelessWidget {
  List<Map<String, dynamic>> superheroes = [
    {
      "superhero": "Batman",
      "publisher": "DC Comics",
      "alter_ego": "Bruce Wayne",
      "first_appearance": "Detective Comics #27",
      "characters": "Bruce Wayne",
      "image":
          "https://www.dc.com/sites/default/files/Char_Gallery_Batman_DTC1018_6053f2162bdf03.97426416.jpg"
    },
    {
      "superhero": "Superman",
      "publisher": "DC Comics",
      "alter_ego": "Kal-El",
      "first_appearance": "Action Comics #1",
      "characters": "Kal-El",
      "image":
          "https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/hc_1440x810/public/media/image/2021/06/superman-2354819.jpg"
    },
    {
      "superhero": "Flash",
      "publisher": "DC Comics",
      "alter_ego": "Jay Garrick",
      "first_appearance": "Flash Comics #1",
      "characters": "Jay Garrick, Barry Allen, Wally West, Bart Allen",
      "image":
          "https://i0.wp.com/www.lacasadeel.net/wp-content/uploads/2022/01/Sin-titulo-14.png"
    },
    {
      "superhero": "Green Lantern",
      "publisher": "DC Comics",
      "alter_ego": "Alan Scott",
      "first_appearance": "All-American Comics #16",
      "characters":
          "Alan Scott, Hal Jordan, Guy Gardner, John Stewart, Kyle Raynor, Jade, Sinestro, Simon Baz",
      "image":
          "https://i0.wp.com/codigoespagueti.com/wp-content/uploads/2020/05/Green-Lantern.jpg"
    },
    {
      "superhero": "Green Arrow",
      "publisher": "DC Comics",
      "alter_ego": "Oliver Queen",
      "first_appearance": "More Fun Comics #73",
      "characters": "Oliver Queen",
    "image":
    "https://i0.wp.com/www.tomosygrapas.com/wp-content/uploads/2021/03/Green-Arrow-celebra-su-80-Cumplean%CC%83os-con-un-especial-de-100-pa%CC%81ginas.jpeg"
    },
    {
      "superhero": "Wonder Woman",
      "publisher": "DC Comics",
      "alter_ego": "Princess Diana",
      "first_appearance": "All Star Comics #8",
      "characters": "Princess Diana",
      "image":
      "https://i1.wp.com/www.game-monster.com/wp-content/uploads/2021/10/wonder-woman-mejores-comics-dc.jpg"
    },
    {
      "superhero": "Martian Manhunter",
      "publisher": "DC Comics",
      "alter_ego": "J'onn J'onzz",
      "first_appearance": "Detective Comics #225",
      "characters": "Martian Manhunter",
      "image":
      "https://bbts1.azureedge.net/images/p/full/2020/05/31ef4b7b-5ea8-4dff-9fc4-406cdb815771.jpg"
    },
    {
      "superhero": "Robin/Nightwing",
      "publisher": "DC Comics",
      "alter_ego": "Dick Grayson",
      "first_appearance": "Detective Comics #38",
      "characters": "Dick Grayson",
      "image":
      "https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/hc_1440x810/public/media/image/2017/02/nightwing-quien-es-heroe-nueva-pelicula-warner-dc.jpg"
    },
    {
      "superhero": "Blue Beetle",
      "publisher": "DC Comics",
      "alter_ego": "Dan Garret",
      "first_appearance": "Mystery Men Comics #1",
      "characters": "Dan Garret, Ted Kord, Jaime Reyes",
      "image":
      "https://as01.epimg.net/meristation/imagenes/2021/02/24/noticias/1614167627_950387_1614167687_noticia_normal.jpg"
    },
    {
      "superhero": "Black Canary",
      "publisher": "DC Comics",
      "alter_ego": "Dinah Drake",
      "first_appearance": "Flash Comics #86",
      "characters": "Dinah Drake, Dinah Lance",
      "image":
      "https://i.ytimg.com/vi/ari3tjlOy6k/maxresdefault.jpg"
    },
    {
      "superhero": "Spider Man",
      "publisher": "Marvel Comics",
      "alter_ego": "Peter Parker",
      "first_appearance": "Amazing Fantasy #15",
      "characters": "Peter Parker",
      "image":
      "https://f.rpp-noticias.io/2020/04/01/922185spider-1jpg.jpg"
    },
    {
      "superhero": "Captain America",
      "publisher": "Marvel Comics",
      "alter_ego": "Steve Rogers",
      "first_appearance": "Captain America Comics #1",
      "characters": "Steve Rogers",
      "image":
      "https://img.wattpad.com/e9f9f9e5036068addd1ab53f57a7a2f457d0b6e0/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f776174747061642d6d656469612d736572766963652f53746f7279496d6167652f756442775941737145536e2d41413d3d2d3235313435303535352e313434613363636638643065613135362e6a7067?s=fit&w=720&h=720"
    },
    {
      "superhero": "Iron Man",
      "publisher": "Marvel Comics",
      "alter_ego": "Tony Stark",
      "first_appearance": "Tales of Suspense #39",
      "characters": "Tony Stark",
      "image":
      "https://www.akiracomics.com/imagenes/poridentidad?identidad=486d4740-0c4d-43c9-9cd1-d695f7185445&ancho=850&alto="
    },
    {
      "superhero": "Thor",
      "publisher": "Marvel Comics",
      "alter_ego": "Thor Odinson",
      "first_appearance": "Journey into Myster #83",
      "characters": "Thor Odinson",
      "image":
      "https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/hc_1440x810/public/media/image/2020/09/thor-2070145.jpg?itok=deJm0cgv"
    },
    {
      "superhero": "Hulk",
      "publisher": "Marvel Comics",
      "alter_ego": "Bruce Banner",
      "first_appearance": "The Incredible Hulk #1",
      "characters": "Bruce Banner",
      "image":
      "https://eloutput.com/wp-content/uploads/2022/03/hulk.jpg"
    },
    {
      "superhero": "Wolverine",
      "publisher": "Marvel Comics",
      "alter_ego": "James Howlett",
      "first_appearance": "The Incredible Hulk #180",
      "characters": "James Howlett",
      "image":
      "https://e.rpp-noticias.io/normal/2020/04/27/345634_933540.jpg"
    },
    {
      "superhero": "Daredevil",
      "publisher": "Marvel Comics",
      "alter_ego": "Matthew Michael Murdock",
      "first_appearance": "Daredevil #1",
      "characters": "Matthew Michael Murdock",
      "image":
      "https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/hc_1440x810/public/media/image/2022/07/daredevil-marvel-comics-2759313.jpg?itok=ZkpdEeSB"
    },
    {
      "superhero": "Hawkeye",
      "publisher": "Marvel Comics",
      "alter_ego": "Clinton Francis Barton",
      "first_appearance": "Tales of Suspense #57",
      "characters": "Clinton Francis Barton",
      "image":
      "https://i.pinimg.com/550x/31/f3/2e/31f32e43b839c47e970f24bbd5a3f53f.jpg"
    },
    {
      "superhero": "Cyclops",
      "publisher": "Marvel Comics",
      "alter_ego": "Scott Summers",
      "first_appearance": "X-Men #1",
      "characters": "Scott Summers",
      "image":
      "https://i0.wp.com/codigoespagueti.com/wp-content/uploads/2021/03/Cosplay-Femenino-de-Cyclops.jpg?fit=1280%2C720&quality=80&ssl=1"
    },
    {
      "superhero": "Silver Surfer",
      "publisher": "Marvel Comics",
      "alter_ego": "Norrin Radd",
      "first_appearance": "The Fantastic Four #48",
      "characters": "Norrin Radd",
      "image":
      "https://cdn.mos.cms.futurecdn.net/MiZqm5cFJmSZRrajccrLzg-1200-80.jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Page"),
      ),
      body: Scaffold(
        body: ListView.builder(
            itemCount: superheroes.length,
            itemBuilder: (BuildContext context, int index){
              return MyItemListWidget(superheroe: superheroes[index]);
            }),
      ),
    );
  }
}

class MyItemListWidget extends StatelessWidget {
  const MyItemListWidget({
    Key? key,
    required this.superheroe,
  }) : super(key: key);

  final Map<String, dynamic> superheroe;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 14.0),
      padding: const EdgeInsets.all(14.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.8),
            blurRadius: 12,
            offset: const Offset(4,4),
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14.0),
            child: Image.network(
              superheroe["image"],
              height: 280.0,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 4.0,),
          Text(
            superheroe["superhero"],
            style: GoogleFonts.manrope(
              fontSize: 26.0,
              fontWeight: FontWeight.w600,
              color: Colors.black.withOpacity(0.80),
            ),
          ),
          Text(
            superheroe["alter_ego"],
            style: GoogleFonts.manrope(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.80),
            ),
          ),
          Text(
            superheroe["publisher"],
            style: GoogleFonts.manrope(
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.80),
            ),
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.manrope(
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.80),
            ),
          ),
          const SizedBox(height: 8.0,)
        ],
      ),
    );
  }
}

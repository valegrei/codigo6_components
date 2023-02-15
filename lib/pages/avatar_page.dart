import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Avatar Page"),
        actions: [
          Icon(Icons.more_vert),
          CircleAvatar(backgroundColor: Colors.purple,)
        ],
      ),
      body: Column(
        children: [
          FadeInImage(
            fadeInDuration: Duration(seconds: 5),
              fadeInCurve: Curves.bounceIn,
              placeholder: AssetImage("assets/images/loading.gif"),
              image: NetworkImage("https://images.pexels.com/photos/13060249/pexels-photo-13060249.jpeg")
          )
        ],
      ),
    );
  }
}

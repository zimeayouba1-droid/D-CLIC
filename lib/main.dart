import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:  'Magazine info',
      home: const PageAccueil(),
      debugShowCheckedModeBanner: false,
    
    ); 
  } 
}

class PageAccueil extends StatelessWidget{
  const PageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.red,
        elevation: 12,
        title: Text( 'Magazine infos'),
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.white),
        leading: IconButton(onPressed: (){},
        icon: Icon(Icons.menu, color: Colors.white),
       ),
       actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.white)),
       ]
      ),
      body: const Column(children: [ 
       Image(
        image:AssetImage('assets/images/mag.jpg' ),  
      ),
        PartieTitre(),
        PartieTexte(),
        PartieIcone(),
        PartieRubrique(),
      ]),
      floatingActionButton: FloatingActionButton
      (onPressed: (){}, 
      backgroundColor: Colors.red,
      child: Text("click"),
      
      
      )
      //floatingActionButtonLocation: FloatingActionButtonLocation.startDocked
    );
    
  }
}
class PartieTitre extends StatelessWidget{
  const PartieTitre({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: const Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          Text(
            "Bienvenu au Magazine  Infos",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800)
            ),
            Text(
              "Votre magazine numérique, votre source d'inspiration",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
            )
        ],

      ),
    );
  }
}

class PartieTexte extends StatelessWidget{
  const PartieTexte({super.key});

@override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Text(
        "Magazine Infos est bien plus qu'un simple magazine d'informations. c'est votre passerelle vers le monde, une source inestimable de connaissances e d'actualités soigneusement selectionnées pour vous éclairer sur les enjeux mondiaux, la culture, la science, l'art et voir meme le divertissement(le jeux)",
      )
    );
  }
}

class PartieIcone extends StatelessWidget{
  const PartieIcone({super .key});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Icon(Icons.phone, color: Colors.blueAccent,),
                const SizedBox(height: 5,),
                Text(
                  "Tel".toUpperCase(),
                  style: const TextStyle(color: Colors.blue),
                )
              ],
            )
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Icon(Icons.mail, color: Colors.blueAccent),
                const SizedBox(height: 5),
                Text(
                  "Mail".toUpperCase(),
                  style: const TextStyle(color: Colors.blue),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
            children:[
              const Icon(Icons.share, color: Colors.blue),
              const SizedBox(height: 5),
              Text(
                "Partage".toUpperCase(),
                style: const TextStyle(color: Colors.blue),
              )
            ]
          )
          ),
        ],
      ),
    );
  }
}
class PartieRubrique extends StatelessWidget{
  const PartieRubrique({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
      children:[
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            "assets/images/images.jpg",
            width: 300,
            height: 200,
            ), 
            ),
      
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            "assets/images/MaquetteADC_86_2025_COUV-COUL-scaled.jpg",
            width: 300,
            height:200,
          ),
        ),
      ],
      ),
    );
  }

}
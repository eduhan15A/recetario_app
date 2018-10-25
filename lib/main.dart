import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Calculo de Areas',
      theme: new ThemeData(          // Add the 3 lines from here...
        primaryColor: Colors.blueAccent,
      ),

      home: new RandomWords(),
    );
  }
}


class RandomWordsState extends State<RandomWords> {
  final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    // final WordPair wordPair = new WordPair.random();
    //return new Text(wordPair.asPascalCase);
    return new Scaffold (                   // Add from here...
      appBar: new AppBar(
        title: new Text('Master Che'),
        // ... to here.
      ),

      body:
      new Column(

        children: <Widget>[

          Container(
            padding: EdgeInsets.all(26.0),
            child: Center(

              child:new Text("Selecciona una receta",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32.0, color: Colors.redAccent)),

            ),
          ),
          Container(
             padding: EdgeInsets.all(26.0),
            child: Center(
              child: Image.asset(
                'assets/chef.jpg',
                height: 240.0,
                fit: BoxFit.cover,
              ),
            )
          ),
          new Expanded(

            child: new  ListView(
              padding: new EdgeInsets.symmetric(vertical: 8.0),
              children: <Widget>[
                /* ListTile (
                            title: Text('Texto'),
                          )*/
                new GestureDetector(
                  onTap:  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondScreen()),
                    );
                  }
                  ,
                  child: new Card(

                      child: new Row(
                          children: <Widget>[
                            new  IconButton(icon: const Icon(Icons.filter_hdr)),
                            new Column(
                              children: <Widget>[
                                new Text("Paninis con mermelada de cebolla")
                              ],
                            )
                          ]
                      )

                  ),
                )
                ,
                new GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondScreen()),
                    );
                  }
                  ,
                  child: new Card(

                      child: new Row(
                          children: <Widget>[
                            new  IconButton(icon: const Icon(Icons.card_giftcard)),
                            new Column(
                              children: <Widget>[
                                new Text("Rollos primavera")
                              ],
                            )
                          ]
                      )

                  ),
                ),
                new GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondScreen()),
                    );
                  }
                  ,
                  child: new Card(

                      child: new Row(
                          children: <Widget>[
                            new  IconButton(icon: const Icon(Icons.album)),
                            new Column(
                              children: <Widget>[
                                new Text("Arroz Frito")
                              ],
                            )
                          ]
                      )

                  ),
                )

              ],
            ),
          ),
        ],
      ),


    );

  }



  Widget onTapTriangle() {

  }

  Widget onTapRectangle() {

  }



}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}



class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Receta Rollos primavera "),
        ),
        body:
            new Container(
        padding: new EdgeInsets.all( 8.0),
        child:
        new Column(
          children: <Widget>[
            new Container(
                padding: new EdgeInsets.all( 8.0),
                child:Image.asset(
              'assets/rollos.jpg',
              height: 240.0,
              fit: BoxFit.cover,
            )),
            
            new Text(
                "Ingredientes",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32.0, color: Colors.lightBlue),

            ),
                 new Text("* 1 1/2 tazas de arroz"),
                      new Text("* 1 zanahoria picada"),
                      new Text("* 1 calabacita picada"),
                      new Text("*1/2 cebolla picada"),
                      new Text("* 1 diente de ajo picado"),
                     new Text(" *1/2 cucharadita de jengibre rallado"),
                      new Text("* 4 cucharadas de cebollín picado"),


                      new Text("* 2 cucharadas de mirín"),
                      new Text("* 5 cucharadas de salsa de soya"),
                      new Text("* 2 cucharadas de aceite de ajonjolí"),
                      new Text("* 2 cucharadas de aceite vegetal"),
            new Text(""),
            new Text(""),

            new Text("Preparación",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32.0, color: Colors.lightBlue),

            ),

            new Text("1. Enjuaga el arroz en un tazón con agua varias veces hasta que el agua deje de salir turbia, escurre y ponlo en una olla mediana con dos tazas de agua."),
            new Text("2. Tapa y cuece a fuego alto hasta que comience a hervir, reduce el fuego al mínimo y cuece 13 minutos. Retira del fuego y enfría,"),
            new Text("3. En un wok saltea las verduras con los aceites; des- pués de algunos minutos agrega el arroz, el mirin y la salsa de soya; cuando esté caliente salpimienta y sirve. "),

          ],

        ),
        )


    );
  }
}


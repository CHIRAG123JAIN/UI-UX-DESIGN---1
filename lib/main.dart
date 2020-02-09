import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    )
  );
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(224, 223,222, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          icon:Icon(Icons.menu), onPressed: (){},color: Colors.black87,)
      ),
    body: SafeArea(child: Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white
          ),
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Find Your",style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black87
                ),
              ),
              SizedBox(height: 3,),
              Text(
                "Inspiration",style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(15)
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search,color: Colors.black87,),
                    hintText: "Search You're Looking for",
                    hintStyle: TextStyle(fontSize: 15),
                  ),
                ),
              ), 
              SizedBox(height: 10,),
            ],
          ),
        ),
        SizedBox(height: 10,),
        Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
          child:Column(
            children: <Widget>[
              Text("Promo Today",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
                ),),
                SizedBox(height: 15,),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      promoCard('images/one.jpg'),
                       promoCard('images/two.jpg'),
                        promoCard('images/three.jpg'),
                         promoCard('images/four.jpg'),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 105,
                  decoration: BoxDecoration(
                    
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(image: 
                    AssetImage("images/three.jpg"),
                    fit: BoxFit.cover,
                    )
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          colors: 
        [Colors.black.withOpacity(.8),
        Colors.black.withOpacity(.2),]
        )
                    ),
               child: Align(
                 alignment: Alignment.bottomLeft,
                 child: Text("Best Degisn",style: 
                 TextStyle(color: Colors.white,fontSize: 20),),
               ),     
                  ),
                ),
            ],
          ),
           ),
      ],
    ),
    )
    );
  
  }
}

Widget promoCard(image){
  return AspectRatio(aspectRatio:2.7/3,
  child: Container(
    margin: EdgeInsets.only(right: 23),
    decoration: BoxDecoration(
      
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(

        fit: BoxFit.cover,
        image: AssetImage( image,))
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          colors: 
        [Colors.black.withOpacity(.15),
        Colors.black.withOpacity(.3),
        ]
        )
      ),
    ),
   ),
  );
}
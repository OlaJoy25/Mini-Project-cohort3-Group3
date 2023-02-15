import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name

      // Application theme data, you can set the colors for the application as

      // A widget which will be started on application startup
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(height: 60.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Welcome, Dancan',
                  style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF473D3A)
                      )
                      ),
              Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
// @Dancan will add the images
                            image: AssetImage('assets/pic.jpg'),
                            fit: BoxFit.cover
                            )
                            ),
                  )
                  )
            ],
          ),
            SizedBox(height: 12.0),
          Padding(
            padding: const EdgeInsets.only(right: 40.0),
            child: Container(
              child: Text('Select your taste, We deliver',
             style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 12.0,
              fontWeight: FontWeight.w300,
              color: Color(0xFF473D3A)),
              ),
            ),
          ),
           SizedBox(height: 25.0),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Scholars Coffee Shop',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 17.0,
                    color: Color(0xFF473D3A)),
              ),
              
              Padding(
                padding: const EdgeInsets.only(right:10.0),
                child: Text('See all',
                  style:TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 12.0,
                    color: Color(0xFFCEC7C4)),
                ),
                ),
                     ],
      
      ),
      SizedBox(height: 15.0),
          Container(
            height: 410.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
// @Dancan will add the images
                _foodListCard('Image',
                'Cafe Mistro',
                'Mr Crepe',
                'Our dark, rich espresso balanced with steamed milk and a light layer of foam',
                '\Rwf 3500',
                false
                ),
                _foodListCard('assets/pic10.jpg',
// @Dancan will add the images
                'Quesadilla',
                'Meze Fresh',
                'Crispy tortillas stuffed with molten, juicy goodness.',
                '\Rwf 3500',
                false
                 )
              ]
            )
          ),
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Explore more',
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 17.0,
                    color: Color(0xFF473D3A)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Text(
                  'See all',
                  style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 15.0,
                      color: Color(0xFFCEC7C4)),
                ),
              ),
            ],
          ),
          SizedBox(height: 15.0),
          Container(
            height: 125.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
// @Dancan will add the images in the second page of our app
                _buildImage('assets/coffee.jpg'),
                _buildImage('assets/coffee2.jpg'),
                _buildImage('assets/coffee3.jpg')
              ]
            )
          ),
          SizedBox(height: 20.0)
        ],
      )
      
    );
  }

  _buildImage(String imgPath) {
    return Padding(
      padding: EdgeInsets.only(right: 15.0),
      child: Container(
        height: 100.0,
        width: 175.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(image: AssetImage(imgPath), fit: BoxFit.cover)
        )
      )
    );

  }
  _foodListCard(String imgPath, String coffeeName, String shopName, String description, String price, bool isFavorite) {
    return Padding(
      padding: EdgeInsets.only(left: 12.0, right: 12.0),
      child: Container(
        height: 300.0,
        width: 225.0,
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Container(
                  height: 335.0
                ),
                Positioned(
                  top: 75.0,
                  child: Container(
                    padding: EdgeInsets.only(left: 10.0, right: 20.0),
                    height: 260.0,
                    width: 225.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Color(0xFFDAB68C)
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 60.0,
                          ),
                          Text(
                            shopName + '\'s',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                  ),
                  Text(
                            shopName + '\'s',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),

                  ),SizedBox(height: 10.0),
                          Text(
                            coffeeName,
                            style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            description,
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 12.0,
                                // fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                price,
                                style: TextStyle(
                                    fontFamily: 'OpenSans',
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3A4742)),
                 ),
                              Container(
                                height: 40.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white
                                ),
                                child: Center(
                                  child: Icon(Icons.favorite,
                                  color: isFavorite ? Colors.red: Colors.grey,
                                  size: 15.0
                )
                )
                )              
              ],
            )
          ]
        )
      )
    ),
    Positioned(
                  left: 60.0,
                  top: 25.0,
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(

//@Dancan will add the images

                        image: AssetImage('assets/pic7.jpg'),
                        fit: BoxFit.contain                 
                         )
                    )
                  )
                )
              ],
            ) 
          ]
        )
      )
      );
      
   }
}
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
 // const HomePage({Key? key}) : super(key: key);
  static final String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> itemList = [
    "assets/images/img_1.jpg",
    "assets/images/img_2.png",
    "assets/images/img_3.jpg",
    "assets/images/img_4.jpeg",
    "assets/images/img_5.jpg",
    "assets/images/img_6.jpg",
    "assets/images/img_7.jpg",
    "assets/images/img_8.jpg",
    "assets/images/img_9.jpg",
    "assets/images/img_10.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        leading: Icon(Icons.menu),
        title: Text('Apple products'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 30,
              width: 35,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(child: Text('9')),
            ),
          )
        ],
      ),
      body:Container(
        padding: EdgeInsets.all(20.0),
       child: Column(
         children: [
           // #header
            Container(
              height: 240,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage('assets/images/img_5.jpg'),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(0.7),
                      Colors.black.withOpacity(0.3),
                      Colors.black.withOpacity(0.09),
                    ]
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('LifeStyle sale', style: TextStyle(color: Colors.white, fontSize: 35),),
                    SizedBox(height: 40,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                      ),
                      child: Center(child: Text('Shop Now', style: TextStyle(color: Colors.grey),),),
                    ),
                    SizedBox(height: 40,),
                  ],
                ),
              ),
            ),
           SizedBox(height: 20,),
           Expanded(child: GridView.count(
               crossAxisCount: 1,
             mainAxisSpacing: 10,
             children: itemList.map((item) => cellOfList(item)).toList()
           ),
           )
         ],
       ),
      ),
    );
  }

  Widget cellOfList(String item) {
    return Card(
          elevation: 0,
          color: Colors.transparent,
         child: Container(
           padding: EdgeInsets.all(20.0),
           decoration: BoxDecoration(
             image: DecorationImage(
               image: AssetImage(item),
               fit: BoxFit.cover
             ),
             borderRadius: BorderRadius.circular(20),
           ),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.end,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Icon(Icons.favorite, color: Colors.red, size: 35,)
             ],
           ),
         ),
    );
  }
}

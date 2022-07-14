import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_myapp/Notifications.dart';
import 'package:flutter_myapp/ObservationsDetails.dart';

class Observationslist extends StatefulWidget {
  const Observationslist({ Key ? key}) : super(key: key);

  @override
  State<Observationslist> createState() => _Observationslist();
}
bool status = false;
class _Observationslist extends State<Observationslist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
          toolbarHeight: 100,
          elevation: 0.0,
          title: Container(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 7.0,
                ),
                Image(
                  image: AssetImage('assets/images/Municiaplite.jpeg'),
                  width: 35.0,
                  height: 35.0,
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  'Municipalité de Hammam Sousse',
                  style: TextStyle(color: Colors.black, fontSize: 15.0),
                ),
              ],
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              padding: EdgeInsets.symmetric(horizontal: 18),
              icon: Icon(
                Icons.notifications,
                color: Colors.blue,
              ),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Notifications()));
              },
            )
          ],
          backgroundColor: Colors.white),
     body:new Container(
         padding: new EdgeInsets.all(10.0),
         child:new Column(
         crossAxisAlignment: CrossAxisAlignment.center,
     children: [
       SizedBox(
         height: 20,
       ),
       Text('Mes observations',
           style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600, fontSize: 22.0)),
       SizedBox(
         height: 17,
       ),
       TextField(
         decoration: InputDecoration(
           prefixIcon: Icon(Icons.search),
           border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(30),
               borderSide: BorderSide(width: 3, color: Colors.red)
           ),
           contentPadding: EdgeInsets.symmetric(vertical: 2),
           hintText: 'Recherche',
         ),
         style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,
             color: const Color.fromRGBO(169, 180, 202, 1)
         ),
       ),


     Expanded(
 child:ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
        return Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              Text("Aujourd'hui" , style: TextStyle(fontSize: 16,
                  color: const Color.fromRGBO(41,41, 41, 1),
                  fontWeight: FontWeight.w500),),
              const SizedBox(
                height: 7,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => ObservationsDetails()));
                },
                child: Card(
                  elevation: 0,
                    color: Colors.grey[50],

                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Image(
                                 image: AssetImage('assets/images/observation.PNG'),
                                 width: 45.0,
                                 height: 45.0,
                               ),
                                   Flexible(
                                       child: Text('Votre observation Pateau de lumière '
                                           'de lumière cassé est cours de traitement',
                                           overflow: TextOverflow.fade,
                                           maxLines: 3,
                                           softWrap: true,
                                           style: TextStyle(fontWeight: FontWeight.w600,
                                               color: const Color.fromRGBO(41,41, 41, 1)
                                           ))),
                               IconButton(
                                 icon: Icon(
                                   Icons.arrow_forward_ios_sharp,
                                   color: Colors.grey,
                                 ),
                                 onPressed: () {
                                   Navigator.pushReplacement(context,
                                       MaterialPageRoute(builder: (context) => ObservationsDetails()));
                                 },
                               )

                             ],
                           ),
                            Row(
                              children: [
                                SizedBox(width: 47,),
                                Text ("23 Jan 2022 a 12:15",style: TextStyle(
                                    color: const Color.fromRGBO(155, 155, 155, 1),
                                    fontWeight: FontWeight.w400 ),),


                              ],
                            ),
                            Divider(
                              thickness: 1, // thickness of the line
                              indent: 5, // empty space to the leading edge of divider.
                              endIndent: 5, // empty space to the trailing edge of the divider.
                              color: const Color.fromRGBO(0, 0, 0, 0.1), // The color to use when painting the line.
                              // The divider's height extent.
                            ),

                      ]),
                  
                ),
              )
    ]
    )
    );
    }
    ))

    ])
     ) );
  }}
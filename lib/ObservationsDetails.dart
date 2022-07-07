import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_myapp/observationslist.dart';

class ObservationsDetails extends StatefulWidget {
  const ObservationsDetails({ Key ? key}) : super(key: key);

  @override
  State<ObservationsDetails> createState() => _ObservationsDetails();
}
bool status = false;
class _ObservationsDetails extends State<ObservationsDetails> {
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
    // do something
    },
    )
    ],
   leading: new IconButton(
    icon: new Icon(Icons.arrow_back_ios_new_outlined, color: Colors.blue),
    onPressed: () => Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => Observationslist())),
            ),
            backgroundColor: Colors.white),
        body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 18),
    shrinkWrap: true,
    itemCount: 1,
    itemBuilder: (BuildContext context, int index) {
    return Container(
    child: Column(children: [
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
    SizedBox(
    height: 75,
    ),
    Text('Détails de l"observation',
    style: TextStyle(color: const Color.fromRGBO(79, 150, 247, 1),
        fontWeight: FontWeight.w600, fontSize: 22.0)),
    ],
    ),
      SizedBox(
        height: 15,
      ),
      Container(
        padding: EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(235, 238, 245, 0.3),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 1, color: const Color.fromRGBO(201, 209, 224, 0.7)),
        ),
        alignment: Alignment.topLeft,
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,

         children: [
           Row(
             children: [
               Image(
                 image: AssetImage('assets/images/observation.PNG'),
                 width: 45.0,
                 height: 45.0,
               ),
              Container(
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                   Text("Eclairage public",style: TextStyle(fontWeight: FontWeight.w600),),
                   SizedBox(height: 5,),
                   Text("En cours",style: TextStyle(fontWeight: FontWeight.w500,
                       color: const Color.fromRGBO(242, 163, 65, 1)

                   ),
                   )

                 ],
               )),

             ],
           ),
            Row(
              children: [
                Text("Date:", style: TextStyle(fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(106, 106, 106, 1)),),
                Text("23 Janvier 2022", style: TextStyle(fontWeight: FontWeight.w500))
              ],
            ),
           SizedBox(height: 7,),
           Row(
             children: [
               Text("Heure:", style: TextStyle(fontWeight: FontWeight.w400,
                   color: const Color.fromRGBO(106, 106, 106, 1)),),
               Text("12:40", style: TextStyle(fontWeight: FontWeight.w500)),
             ],
           ),
           SizedBox(height: 7,),

           RichText(
             text: const TextSpan(
                 style: TextStyle(
                     color: Colors.black
                 ),
                 children: [
                   TextSpan(
                     text: 'Lieu: ',
                  style: TextStyle(fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(106, 106, 106, 1)),),
                   TextSpan(
                     text: '8 avenu 14 janvier ,Hammam Sousse ,4011',
                        style: TextStyle(fontWeight: FontWeight.w500)),

                 ]
             ),
           ),
           SizedBox(height: 7,),

           RichText(
             text: const TextSpan(
                 style: TextStyle(
                     color: Colors.black
                 ),
                 children: [
                   TextSpan(
                     text: 'Description: ',
                  style: TextStyle(fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(106, 106, 106, 1)),),
                   TextSpan(
                     text: 'Dysfonctionnement d"un poteau de lumière  '
                       , style: TextStyle(fontWeight: FontWeight.w500)),

                 ]
             ),
           ),
           SizedBox(height: 7,),

           RichText(
             text: const TextSpan(
                 style: TextStyle(
                     color: Colors.black
                 ),
                 children: [
                   TextSpan(
                     text: 'État: ',
                   style: TextStyle(fontWeight: FontWeight.w400,
                       color: const Color.fromRGBO(106, 106, 106, 1)),),
                   TextSpan(
                     text: 'Votre observation est en court de traitement ',
                       style: TextStyle(fontWeight: FontWeight.w500)),

                 ]
             ),
           ),
           SizedBox(height: 7,),
           RichText(
             text: const TextSpan(
                 style: TextStyle(
                     color: Colors.black
                 ),
                 children: [
                   TextSpan(
                     text: 'Réponse: ',
                 style: TextStyle(fontWeight: FontWeight.w400,
                     color: const Color.fromRGBO(106, 106, 106, 1)),),
                   TextSpan(
                     text: 'L"opération sera traitée dans les délais des 24heures.',
                       style: TextStyle(fontWeight: FontWeight.w500)),

                 ]
             ),
           ),
           SizedBox(height: 7,),

           Text("Photo ajoutée:", style: TextStyle(fontWeight: FontWeight.w400,
               color: const Color.fromRGBO(106, 106, 106, 1)),),
           SizedBox(height: 7,),
           Container(
             height: 150.0,
             decoration: const BoxDecoration(
               image: DecorationImage(
                   fit: BoxFit.cover, image: AssetImage('assets/images/news.jpg')),
               borderRadius: BorderRadius.all(Radius.circular(8.0)),

             ),
           ),

         ],
       ),
      ),
    ]
    )


    );
    })
    );
  }}

import 'package:flutter/material.dart';
import 'package:flutter_app/uitls/custom_clipper.dart';
import 'package:url_launcher/url_launcher.dart';
import '../infoClass.dart';

 
 void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PersonList(),
  ));
}
class PersonList extends StatefulWidget {
  Info info = new Info();
   String name ;
   String phoneNumber ;
   String email ;
   String bio;
  PersonList({this.name,this.bio,this.email,this.phoneNumber}) ;
  @override
  _PersonListState createState() => _PersonListState();
}

class _PersonListState extends State<PersonList> {
   String name ;
   String phoneNumber ;
   String email ;
   String bio;
  Info info = new Info();
  
   List<Info> infoList =  [
     // Info(name:widget.name,phoneNumber: "0037",email: "ginan@gmail.com",bio: "kjsdfjhfk"),
     Info(name:"Ginan" ,phoneNumber: "07737984648",email: "ginankbadir@gmail.com",bio: "Flutter App"),
     Info(name:"Hanan" ,phoneNumber: "0037",email: "ginankbadir@gmail.com",bio: "Flutter App"),
     Info(name:"Noor" ,phoneNumber: "0037",email: "ginankbadir@gmail.com",bio: "Flutter App"),
     Info(name:"Abeer" ,phoneNumber: "0037",email: "ginankbadir@gmail.com",bio: "Flutter App"),
     Info(name:"Ai" ,phoneNumber: "0037",email: "ginankbadir@gmail.com",bio: "Flutter App"),
     Info(name:"noor" ,phoneNumber: "0037",email: "ginankbadir@gmail.com",bio: "Flutter App"),
     Info(name:"Ginan" ,phoneNumber: "0037",email: "ginankbadir@gmail.com",bio: "kjsdfjhfk"),
     Info(name:"Zeena" ,phoneNumber: "0037",email: "ginankbadir@gmail.com",bio: "Flutter App"),
     Info(name:"Noor" ,phoneNumber: "0037",email: "ginankbadir@gmail.com",bio: "Flutter App"),
     Info(name:"Ginan" ,phoneNumber: "0037",email: "ginankbadir@gmail.com",bio: "kjsdfjhfk"),
     Info(name:"hanan" ,phoneNumber: "0037",email: "ginankbadir@gmail.com",bio: "Flutter App"),
     Info(name:"Abeer" ,phoneNumber: "0037",email: "ginankbadir@gmail.com",bio: "kjsdfjhfk"),
   ];
     //infoList.add( Info(name,email,bio,phoneNumber));
      //var l =infoList<>.length; 
   List _isFavorite =List.filled(12, false);

   void _launchCaller(String number)async{
     var Url ="tel:${number.toString()}";
    if(await canLaunch(Url)){
     await launch(Url);
    }else{
      throw 'Could not place Call';
    }
   }

   void _launchEmail(String email)async{
     var Url ="mailto:${email.toString()}";
    if(await canLaunch(Url)){
     await launch(Url);
    }else{
      throw 'Could not Send Email';
    }
   }
       
   

  // Widget personCard({name,phoneNumber,email}){
  //  return Card(
  //    margin: EdgeInsets.fromLTRB(16.0, 16, 16, 16),
  //    child: Padding(
  //      padding: const EdgeInsets.all(12.0),
  //      child: Column(
  //        crossAxisAlignment: CrossAxisAlignment.stretch,
  //        children: <Widget>[
  //          Text(
  //            name,
  //            style: TextStyle(
  //              fontSize: 18,
  //              color: Colors.black12,
  //            ),
  //          ),
  //          SizedBox(height:6.0),
  //           Text(
  //             phoneNumber,
  //            style: TextStyle(
  //              fontSize: 14,
  //              color: Colors.black,
  //            ),
  //          ),
  //          SizedBox(height:6.0),
  //           Text(
  //            email,
  //            style: TextStyle(
  //              fontSize: 14,
  //              color: Colors.black,
  //            ),
  //          ),
  //          SizedBox(height:6.0),
  //        ],
  //      ),
  //    ),
  //  );
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize (
        preferredSize : Size.fromHeight(100),
        child: AppBar(
           title: Text(
             'Users',
             style: TextStyle(
             color: Colors.white,
             fontSize: 24,
             fontWeight: FontWeight.bold,
             ),
           ),
           backgroundColor: Colors.transparent,
           elevation:0,
           flexibleSpace:ClipPath(
             clipper: MyCustomClipper(),
                child: Container(
               decoration : BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromRGBO(221, 42, 123, 7),Color.fromRGBO(81, 91, 212 ,7)],
                 begin: Alignment.bottomRight,
                 end: Alignment.topLeft,
                 tileMode: TileMode.clamp,
                ),
               ),
             ),
           ),
        ),
        ),
      body: 
      Container(
        color : Colors.white24,
        child: ListView.builder(
          itemCount: infoList.length,
          itemBuilder:(context,i)
          {
            return Column
            (
              children: <Widget>
             [
                Card(
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  elevation: 3,
                 
                  margin: EdgeInsets.fromLTRB(16.0, 0, 16, 16),
                  child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                         children: <Widget>[
                           Padding(
                             padding: EdgeInsets.only(right:7),
                             
                             child: Row(
                               
                               children: [
                                 Container(
                                    margin: EdgeInsets.only(right:7),
                                   child: CircleAvatar(
                                     backgroundImage: AssetImage('images/img1.jpg'),
                                    radius:30,
                                   ),
                                 ),
                          Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: <Widget>[ 
                           Text( 
                             infoList[i].name,
                             style: TextStyle(
                               fontSize: 16,
                               color: Colors.black87,
                             ),
                           ),
                            SizedBox(height:6.0),
                            Text( 
                             infoList[i].bio,
                            // widget.name,
                             style: TextStyle(
                               fontSize: 14,
                               color: Colors.black12,
                             ),
                           ),
                            SizedBox(height:12.0),
                             ]
                            ),
                             SizedBox(height:6.0),
                               ],
                             ),
                           ),
                              Container(
                               margin: EdgeInsets.fromLTRB(7.0, 16, 7, 16),
                              child: Row (
                              children:<Widget>[
                                Text('''Hi, My Name is ${infoList[i].name}, \n Welcome in My First App''',
                                 style: TextStyle(
                                fontSize: 17,
                                color: Colors.black54,
                              ),
                                ),
                                SizedBox(height:22.0),
                              ],
                              ),
                                ),
                          Row (
                              children:<Widget>[
                                   Expanded(
                                     flex: 3,
                                  child: Container(
                                    child: IconButton(icon: Icon(Icons.email),
                                    color: Colors.amber,
                                    onPressed: (){
                                       setState(() {
                                        _launchEmail(infoList[i].email);
                                      });

                                    }),
                                    
                                  ),
                                ),
                                   Expanded(
                                     flex: 3,
                                  child: Container(
                                    child: IconButton(icon: Icon(Icons.phone),
                                    color: Colors.green[400],
                                    onPressed: (){
                                      setState(() {
                                        _launchCaller(infoList[i].phoneNumber);
                                      });
                                    }),
                                  ),
                                ),
                                   Expanded(
                                     flex: 3,
                                  child:  Container(
                                           transformAlignment: Alignment.topRight,
                                     child:  IconButton(
                                      icon: _isFavorite[i]? Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                      )
                                        :Icon(Icons.favorite_border ),
                                        onPressed: (){
                                          setState(() {
                                            _isFavorite[i]=! _isFavorite[i];
                                          });
                                        },
                                    ) ,  
                                  ),
                                  
                                ),
                                  
                                  
                              ], 
                              
                           ),
                           
                        ],
                      ),
                  ),
                )
             ],
                // children: infoList.map((infoPerson) => personCard(infoPerson)),
            );
          }  
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
          setState(() {
             Navigator.pushNamed(context, '/home');
          });
      }, 
      child: Icon(Icons.add),
      backgroundColor: Color.fromRGBO(81, 91, 212 ,7),
      ),
    );
  }
}


  //     Text(
                        //       infoList[i].phoneNumber,
                        //   // widget.phoneNumber,
                        //     style: TextStyle(
                        //       fontSize: 14,
                        //       color: Colors.black,
                        //     ),
                        //   ),
                        //  // SizedBox(height:6.0),
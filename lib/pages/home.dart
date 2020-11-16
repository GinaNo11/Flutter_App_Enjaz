import 'package:flutter/material.dart';
import 'package:flutter_app/infoClass.dart';
import 'package:flutter_app/uitls/custom_clipper.dart';
import '../pages/person_list.dart';
import '../infoClass.dart';
 void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}
class Home extends StatefulWidget {
  //Info info =new Info();
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //  String _name ;
  //  String _phoneNumber ;
  //  String _email ;
   //InfoCard info =new InfoCard();
   Info info =new Info();
   final nameController = new TextEditingController();
   final bioController = new TextEditingController();
   final phoneNumberController = new TextEditingController();
   final emailController = new TextEditingController();

   Color hexToColor(String code) {
      return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
    }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PreferredSize (
        preferredSize : Size.fromHeight(100),
        child: AppBar(
          centerTitle: true,
           title: Text(
             'User Info',
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
        body:  Container(
          
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Container(
              child: SingleChildScrollView(
                     child: Column(
                  
                     // mainAxisAlignment: MainAxisSize.min,
                     // crossAxisAlignment:CrossAxisAlignment.start ,
                      children: [
                      new Padding(padding: EdgeInsets.only(top:15)),
                     //  new Padding(padding: EdgeInsets.only(top:15)),
                     
                      ////////////Name ///////////
                       Padding(
                         padding: const EdgeInsets.only(top: 15),
                         child: Container(
                            
                           child: new TextFormField(
                              decoration: new InputDecoration(
                                labelText: "Enter Name",
                                fillColor: Colors.white,
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(25.0),
                                  borderSide: new BorderSide(
                                  ),
                                ),
                                //fillColor: Colors.green
                              ),
                              validator: (val) {
                                if(val.length==0) {
                                  return "Name cannot be empty";
                                }else{
                                  return null;
                                }
                              },
                             // keyboardType: TextInputType.emailAddress,
                              style: new TextStyle(
                                fontFamily: "Poppins",
                              ),
                            ),
                         ),
                       ),
                        /////////// bio/////////
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Container(
                            child: new TextFormField(
                              controller: bioController,
                              decoration: new InputDecoration(
                                labelText: "Enter Bio",
                                fillColor: Colors.white,
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(25.0),
                                  borderSide: new BorderSide(
                                  ),
                                ),
                                //fillColor: Colors.green
                              ),
                              validator: (val) {
                                if(val.length==0) {
                                  return "Bio cannot be empty";
                                }else{
                                  return null;
                                }
                              },
                             // keyboardType: TextInputType.,
                              style: new TextStyle(
                                fontFamily: "Poppins",
                              ),
                            ),
                          ),
                        ),

                        ///////////phone number//////
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Container(
                            child: new TextFormField(
                              controller: phoneNumberController,
                              decoration: new InputDecoration(
                                labelText: "Enter Phone Number",
                                fillColor: Colors.white,
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(25.0),
                                  borderSide: new BorderSide(
                                  ),
                                ),
                                //fillColor: Colors.green
                              ),
                              validator: (val) {
                                if(val.length==0) {
                                  return "Phone Number cannot be empty";
                                }else{
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.number,
                              style: new TextStyle(
                                fontFamily: "Poppins",
                              ),
                            ),
                          ),
                        ),
                        /////////////////email/////////
                         Padding(
                           padding: const EdgeInsets.only(top: 15),
                           child: Container(
                             child: new TextFormField(
                               controller: emailController,
                              decoration: new InputDecoration(
                                labelText: "Enter Email",
                                fillColor: Colors.white,
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(25.0),
                                  borderSide: new BorderSide(
                                  ),
                                ),
                                //fillColor: Colors.green
                              ),
                              validator: (val) {
                                if(val.length==0) {
                                  return "Email cannot be empty";
                                }else{
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.emailAddress,
                              style: new TextStyle(
                                fontFamily: "Poppins",
                              ),
                        ),
                           ),
                         ),

                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            child: RaisedButton(
                              onPressed:(){
                               setState((){
                                //  widget.info.name = nameController.toString();
                                //  widget.info.email = remailContoller.toString();
                                //  widget.info.phoneNumber =phoneNumberController.toString();
                                //  widget.info.bio =bioController.toString();
                                  
                                
                                      info.name = nameController.toString();
                                      info.phoneNumber = phoneNumberController.toString();
                                      info.email = emailController.toString();
                                  
                                  //Navigator.pushNamed(context, '/Persons');
                                 Navigator.of(context).push(MaterialPageRoute(
                                 builder: (context) =>  new PersonList( 
                                   name: nameController.toString(),
                                   bio: bioController.toString(),
                                   email: emailController.toString(),
                                   phoneNumber: phoneNumberController.toString()
                                 )
                                 )
                                 );
                               });

                            } ,
                             child: Text("Add"),
                             textColor: Colors.white,
                              color: Color.fromRGBO(81, 91, 212 ,7), 
                             highlightColor: Colors.amber,
                             
                            ),
                          ),
                        ),
                        //Text(info.name)
                      ],
                ),
              ),
            )
          ,),
        )
      );
  }
}
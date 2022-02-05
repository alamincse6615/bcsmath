import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';



class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}
class _AboutState extends State<About> {


  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launch(launchUri.toString());
  }


  Future<void> _launchInWebViewOrVC(String url) async {
    if (!await launch(
      url,
      forceSafariVC: true,
      forceWebView: true,
      headers: <String, String>{'my_header_key': 'my_header_value'},
    )) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Developer of বি সি এস ম্যাথ"),
      ),
      body:ListView(

        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 170,
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15,left: 10,right: 10,bottom: 15),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                            child: Text("About",textAlign:TextAlign.left,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                        Divider(height: 5,color: Colors.white,endIndent: MediaQuery.of(context).size.width * .72,),
                        SizedBox(height: 5,),
                        Text(
                          "“Without mathematics, there’s nothing you can do. Everything around you is mathematics. Everything around you is numbers.”",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 270,
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15,left: 10,right: 10,bottom: 15),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          alignment: Alignment.topLeft,
                          width: MediaQuery.of(context).size.width,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                                "assets/sir.jpg"
                            ),
                            radius: 50,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          alignment: Alignment.topLeft,
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "Md Al Amin Mia",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          alignment: Alignment.topLeft,
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            " Android Developer",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 15,fontStyle: FontStyle.italic),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          height: 75,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (
                                      ){
                                    _launchInWebViewOrVC("https://web.facebook.com/alamincse6615");
                                  },
                                  icon: FaIcon(FontAwesomeIcons.facebook,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (){},
                                  icon:  FaIcon(FontAwesomeIcons.envelope),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (){
                                    _launchInWebViewOrVC("");
                                  },
                                  icon: FaIcon(FontAwesomeIcons.linkedin),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (){
                                    _launchInWebViewOrVC("https://github.com/alamincse6615");
                                  },
                                  icon: FaIcon(FontAwesomeIcons.github),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 270,
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15,left: 10,right: 10,bottom: 15),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          alignment: Alignment.topLeft,
                            width: MediaQuery.of(context).size.width,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/md osman.png"
                              ),
                              radius: 50,
                            ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          alignment: Alignment.topLeft,
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "Md Osman ",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          alignment: Alignment.topLeft,
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            " Flutter Developer",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 15,fontStyle: FontStyle.italic),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          height: 75,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (
                                      ){
                                    _launchInWebViewOrVC("https://web.facebook.com/mdosman202166");
                                  },
                                  icon: FaIcon(FontAwesomeIcons.facebook,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (){
                                    launch(
                                        "mailto:mdosman202166@gmail.com?subject=Hi&body=How are you");
                                  },
                                  icon:  FaIcon(FontAwesomeIcons.envelope),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (){
                                    _launchInWebViewOrVC("https://www.linkedin.com/in/md-osman-0aa6b0230/");
                                  },
                                  icon: FaIcon(FontAwesomeIcons.linkedin),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (){
                                    _launchInWebViewOrVC("https://github.com/mdosman202166?tab=repositories");
                                  },
                                  icon: FaIcon(FontAwesomeIcons.github),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 270,
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15,left: 10,right: 10,bottom: 15),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          alignment: Alignment.topLeft,
                            width: MediaQuery.of(context).size.width,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/jahirul.jpg"
                              ),
                              radius: 50,
                            ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          alignment: Alignment.topLeft,
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "Zahirul Islam ",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          alignment: Alignment.topLeft,
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            " Flutter Developer",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 15,fontStyle: FontStyle.italic),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          height: 75,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (
                                      ){
                                    _launchInWebViewOrVC("https://web.facebook.com/profile.php?id=100007236345736");
                                  },
                                  icon: FaIcon(FontAwesomeIcons.facebook,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (){
                                    launch(
                                        "mailto:jahirulislam0276@gmail.com?subject=Hi&body=How are you");
                                  },
                                  icon:  FaIcon(FontAwesomeIcons.envelope),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (){
                                    _launchInWebViewOrVC("https://www.linkedin.com/in/zahirul-islam-zahir-385661230/");
                                  },
                                  icon: FaIcon(FontAwesomeIcons.linkedin),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (){
                                    _launchInWebViewOrVC("https://github.com/jahirulislam0276");
                                  },
                                  icon: FaIcon(FontAwesomeIcons.github),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 270,
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15,left: 10,right: 10,bottom: 15),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          alignment: Alignment.topLeft,
                            width: MediaQuery.of(context).size.width,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/prodip.jpg"
                              ),
                              radius: 50,
                            ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          alignment: Alignment.topLeft,
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "Prodip Biswas ",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          alignment: Alignment.topLeft,
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            " Flutter Developer",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 15,fontStyle: FontStyle.italic),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          height: 75,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (
                                      ){
                                    _launchInWebViewOrVC("https://web.facebook.com/prodip1020");
                                  },
                                  icon: FaIcon(FontAwesomeIcons.facebook,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (){
                                    launch(
                                        "mailto:prodip767@gmail.com?subject=Hi&body=How are you");
                                  },
                                  icon:  FaIcon(FontAwesomeIcons.envelope),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (){
                                    _launchInWebViewOrVC("https://www.linkedin.com/in/prodip-biswas-432228176/");
                                  },
                                  icon: FaIcon(FontAwesomeIcons.linkedin),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (){
                                    _launchInWebViewOrVC("https://github.com/Prodipbiswas1");
                                  },
                                  icon: FaIcon(FontAwesomeIcons.github),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 270,
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15,left: 10,right: 10,bottom: 15),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          alignment: Alignment.topLeft,
                          width: MediaQuery.of(context).size.width,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                                "assets/saha.jpeg"
                            ),
                            radius: 50,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          alignment: Alignment.topLeft,
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "Khondoker Shahazadi",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          alignment: Alignment.topLeft,
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            " Flutter Developer",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 15,fontStyle: FontStyle.italic),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          height: 75,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (
                                      ){
                                    _launchInWebViewOrVC("https://www.facebook.com/angel.srute.1");
                                  },
                                  icon: FaIcon(FontAwesomeIcons.facebook,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (){
                                    launch(
                                        "mailto:khondokersahazadi@gmail.com?subject=Hi&body=How are you");
                                  },
                                  icon:  FaIcon(FontAwesomeIcons.envelope),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (){
                                    _launchInWebViewOrVC("");
                                  },
                                  icon: FaIcon(FontAwesomeIcons.linkedin),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (){
                                    _launchInWebViewOrVC("");
                                  },
                                  icon: FaIcon(FontAwesomeIcons.github),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 270,
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15,left: 10,right: 10,bottom: 15),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          alignment: Alignment.topLeft,
                            width: MediaQuery.of(context).size.width,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/sanuarul.jpg"
                              ),
                              radius: 50,
                            ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          alignment: Alignment.topLeft,
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "Md Sanuarul Islam ",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          alignment: Alignment.topLeft,
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            " Flutter Developer",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 15,fontStyle: FontStyle.italic),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          height: 75,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (
                                      ){
                                    _launchInWebViewOrVC("https://web.facebook.com/profile.php?id=100011836710146");
                                  },
                                  icon: FaIcon(FontAwesomeIcons.facebook,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (){
                                    launch(
                                        "mailto:si.shawon396@gmail.com?subject=Hi&body=How are you");
                                  },
                                  icon:  FaIcon(FontAwesomeIcons.envelope),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (){
                                    _launchInWebViewOrVC("https://www.linkedin.com/mwlite/in/si-shawon-6297a4230");
                                  },
                                  icon: FaIcon(FontAwesomeIcons.linkedin),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (){
                                    _launchInWebViewOrVC("https://github.com/SiShawon");
                                  },
                                  icon: FaIcon(FontAwesomeIcons.github),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 270,
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15,left: 10,right: 10,bottom: 15),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          alignment: Alignment.topLeft,
                            width: MediaQuery.of(context).size.width,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/tanvir.jpg"
                              ),
                              radius: 50,
                            ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          alignment: Alignment.topLeft,
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "Tanvir Ahamed ",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          alignment: Alignment.topLeft,
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            " Flutter Developer",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 15,fontStyle: FontStyle.italic),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          height: 75,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (
                                      ){
                                    _launchInWebViewOrVC("https://web.facebook.com/messages/t/100025280164985/");
                                  },
                                  icon: FaIcon(FontAwesomeIcons.facebook,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (){
                                    launch(
                                        "mailto:iqbal.bepary440@gmail.com.com?subject=Hi&body=How are you");
                                  },
                                  icon:  FaIcon(FontAwesomeIcons.envelope),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (){
                                    _launchInWebViewOrVC("https://www.linkedin.com/in/tanvir-ahamed-7936ab230");
                                  },
                                  icon: FaIcon(FontAwesomeIcons.linkedin),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (){
                                    _launchInWebViewOrVC("https://github.com/tnvirahamed");
                                  },
                                  icon: FaIcon(FontAwesomeIcons.github),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 270,
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15,left: 10,right: 10,bottom: 15),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          alignment: Alignment.topLeft,
                            width: MediaQuery.of(context).size.width,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/iqbal.jpg"
                              ),
                              radius: 50,
                            ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          alignment: Alignment.topLeft,
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "Iqbal Hossain ",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          alignment: Alignment.topLeft,
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            " Flutter Developer",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 15,fontStyle: FontStyle.italic),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          height: 75,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (
                                      ){
                                    _launchInWebViewOrVC("https://web.facebook.com/messages/t/100007784528091/");
                                  },
                                  icon: FaIcon(FontAwesomeIcons.facebook,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (){
                                    launch(
                                        "mailto:iqbal.bepary440@gmail.com?subject=Hi&body=How are you");
                                    },
                                  icon:  FaIcon(FontAwesomeIcons.envelope),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (){
                                    _launchInWebViewOrVC("https://www.linkedin.com/in/leave-green-16a709230");
                                  },
                                  icon: FaIcon(FontAwesomeIcons.linkedin),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (){
                                    _launchInWebViewOrVC("https://github.com/iqbal4400");
                                  },
                                  icon: FaIcon(FontAwesomeIcons.github),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 270,
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15,left: 10,right: 10,bottom: 15),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          alignment: Alignment.topLeft,
                            width: MediaQuery.of(context).size.width,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/"
                              ),
                              radius: 50,
                            ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          alignment: Alignment.topLeft,
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "Shawon matubber ",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          alignment: Alignment.topLeft,
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            " Flutter Developer",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 15,fontStyle: FontStyle.italic),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          height: 75,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (
                                      ){
                                    _launchInWebViewOrVC("https://www.facebook.com/profile.php?id=100018924194099");
                                  },
                                  icon: FaIcon(FontAwesomeIcons.facebook,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (){
                                    launch(
                                        "mailto:shawonsp424@gmail.com?subject=Hi&body=How are you");
                                  },
                                  icon:  FaIcon(FontAwesomeIcons.envelope),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (){
                                    _launchInWebViewOrVC("https://www.linkedin.com/in/shawon-matubber-751718230");
                                  },
                                  icon: FaIcon(FontAwesomeIcons.linkedin),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                height: 40,
                                width: 60,
                                child: IconButton(
                                  onPressed: (){
                                    _launchInWebViewOrVC("https://github.com/shawonmatubber");
                                  },
                                  icon: FaIcon(FontAwesomeIcons.github),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:new_app/helper/util.dart';
import 'package:new_app/some_screens/read_json.dart';

class WidgetImage1 extends StatefulWidget {
  const WidgetImage1({super.key});

  @override
  State<WidgetImage1> createState() => _WidgetImage1State();
}

class _WidgetImage1State extends State<WidgetImage1> {
  late Map<dynamic, dynamic> myMap;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    ReadJsonFile.readJsonData(path: "assets/json/image.json").then((value) {
      setState(() {
        myMap = value["ImageView"];
        // print("myMapppp$myMap");
        // print("mytxtdesc${myMap["TextView"]["Description"]}");
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var textColor = Util.getColorFromHex(myMap["TextView"]["FontColor"]);
    var bgColor = Util.getColorFromHex(myMap["BackgroundColor"]);

    return Container(
        width: double.infinity,
        color: bgColor,
        child: Column(children: [
          Image.network(
            myMap["Src"],
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Text(
            myMap["TextView"]["Description"],
            style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: myMap["TextView"]['DescriptionFontSize']),
          ),
        ]));
  }
}
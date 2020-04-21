import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
//import './container_widget.dart';

void main() => runApp(MyApp());

class ContainerWidget extends StatelessWidget {
  final List<Color> colors;
  final String colorName;

  const ContainerWidget(
      {Key key, @required this.colors, @required this.colorName})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10.0),
            width: MediaQuery.of(context).size.width - 10,
            height: 140,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: colors,
            )),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 30.0,
              child: Center(
                child: Text(
                  "$colorName",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              color: Color.fromRGBO(0, 0, 0, 0.3),
            ),
          )
        ],
      ),
    );
  }
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Display colors !",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Display colors!!!"),
        ),
        body: BodyPart(),
      ),
    );
  }
}

class BodyPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoScrollbar(
      child: ListView(
        children: <Widget>[
          ContainerWidget(
            colorName: "Blue",
            colors: GradientColors.blue,
          ),
          ContainerWidget(
            colorName: "Cool Blue",
            colors: GradientColors.coolBlues,
          ),
          ContainerWidget(
            colorName: "Pink",
            colors: GradientColors.pink,
          ),
          ContainerWidget(
            colorName: "Orange",
            colors: GradientColors.orange,
          ),
          ContainerWidget(
            colorName: "Indigo",
            colors: GradientColors.indigo,
          ),
          ContainerWidget(
            colorName: "White",
            colors: GradientColors.white,
          ),
          ContainerWidget(
            colorName: "Black",
            colors: GradientColors.black,
          ),
          ContainerWidget(
            colorName: "Piggy Pink",
            colors: GradientColors.piggyPink,
          ),
          ContainerWidget(
            colorName: "Evening Sunshine",
            colors: GradientColors.eveningSunshine,
          ),
          ContainerWidget(
            colorName: "Dark Ocean",
            colors: GradientColors.darkOcean,
          ),
          ContainerWidget(
            colorName: "Grade Grey",
            colors: GradientColors.gradeGrey,
          ),
          ContainerWidget(
            colorName: "Dim Blue",
            colors: GradientColors.dimBlue,
          ),
          ContainerWidget(
            colorName: "Ver",
            colors: GradientColors.ver,
          ),
          ContainerWidget(
            colorName: "LightBlue",
            colors: GradientColors.lightBlue,
          ),
          ContainerWidget(
            colorName: "Lunada",
            colors: MoreGradientColors.lunada,
          ),
          ContainerWidget(
            colorName: "Light Green",
            colors: GradientColors.lightGreen,
          ),
          ContainerWidget(
            colorName: "Violet",
            colors: GradientColors.violet,
          ),
          ContainerWidget(
            colorName: "Light Black",
            colors: GradientColors.lightBlack,
          ),
          ContainerWidget(
            colorName: "Facebook Messenger",
            colors: GradientColors.facebookMessenger,
          ),
          
          ContainerWidget(
            colorName: "Azure Lane",
            colors: MoreGradientColors.azureLane,
          ),
          ContainerWidget(
            colorName: "Orange Pink Teal",
            colors: MoreGradientColors.orangePinkTeal,
          ),
          Divider()
        ],
      ),
    );
  }
}
 



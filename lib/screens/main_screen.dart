//import 'package:bmi/screens/main_screen.dart';
import 'package:bmi/widgets/reusablecard.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

enum Gender {
  male,
  female,
}

const boxcColor = Color(0xff1d1e33);
const inactivecolor = Color(0xff111328);

class _MainPageState extends State<MainPage> {
  Gender? selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title:
            const Text("BMI CALCULATOR", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedGender == Gender.male
                          ? boxcColor
                          : inactivecolor,
                      cardChild: CardData(icons: Icons.male, text1: "MALE"),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedGender == Gender.female
                          ? boxcColor
                          : inactivecolor,
                      cardChild: CardData(icons: Icons.female, text1: "FEMALE"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: boxcColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: boxcColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: boxcColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 235, 21, 85),
            height: 50,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}

// imports
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // variables
  final bool isMale;
  final bool isFemale;
  final double height;
  final int weight;
  final int age;
  final Function resetCalc;

  // bmi hashmap
  static const Map<dynamic, List<String>> BMIData = {
    16: [
      'Severe Thinness',
      'A BMI <16.0 is known to be associated with a markedly increased risk for ill-health, poor physical performance, lethargy and even death, therefore, this cut-off point is a valid extreme limit.'
    ],
    17: [
      'Moderate  Thinness',
      'A BMI <17.0 indicates moderate and severe thinness in adult populations. It has been clearly linked to increases in illness in adults studied in three continents; therefore, it is a reasonable value to choose as a cut-off point for moderate risk.'
    ],
    19: [
      'Mild Thinness',
      'The cut-off point of a BMI of 19 for underweight in both genders has less experimental validity as a cut-off point for moderate and severe thinness, but is a reasonable value for use pending further comprehensive studies.'
    ],
    25: [
      'Normal',
      'This is a perfectly balanced weight, please try to maintain this'
    ],
    30: [
      'Overweight',
      'A BMI ≥25 signifies overweight; it is a major determinant of many NCDs (e.g. non-insulin-dependent diabetes mellitus, coronary heart disease and stroke), and it increases the risks for several types of cancer, gallbladder disease etc.'
    ],
    35: [
      'Obese Class I',
      'A BMI ≥30 signifies obesity, which is a disease that is largely preventable through lifestyle changes. The costs attributable to obesity are high, not only in terms of premature death and health care, but also in terms of disability and a diminished quality of life.'
    ],
    40: [
      'Obese Class II',
      'A BMI ≥30 signifies obesity, which is a disease that is largely preventable through lifestyle changes. The costs attributable to obesity are high, not only in terms of premature death and health care, but also in terms of disability and a diminished quality of life.'
    ],
    "extra": [
      'Obese Class III',
      'A BMI ≥30 signifies obesity, which is a disease that is largely preventable through lifestyle changes. The costs attributable to obesity are high, not only in terms of premature death and health care, but also in terms of disability and a diminished quality of life.'
    ],
  };

  static const List<int> BMIList = [16, 17, 19, 25, 30, 35, 40];

  // constructor
  Result(this.isMale, this.isFemale, this.height, this.weight, this.age,
      this.resetCalc);

  static String extraInfo;
  static int bmiVal;

  // color pallete
  static final notBarColor = const Color(0xff070A19);
  static final primaryColor = const Color(0xff090E21);
  static final secondaryColor = const Color(0xff1D1E33);
  static final accentColor = const Color(0xffEB1555);
  static final iconColor = const Color(0xff4C4F5E);

  // helper function
  double getBMI(weight, height) {
    double val = weight / ((height / 100) * (height / 100));
    val *= 100;
    val = val.roundToDouble();
    bmiVal = (val / 100).round().toInt();
    val /= 100;
    return val;
  }

  String getInfo(bmi, index) {
    for (int i = 0; i < BMIList.length; i++) {
      if (BMIList[i] >= bmiVal) {
        // print("bmival : $bmiVal");
        // print("bmi list : " + BMIList[i].toString());
        // return BMIList[i].toString();
        return ((BMIData[BMIList[i]])[index]).toString();
      }
    }
    // print("overload");
    // return "extra";
    return ((BMIData["extra"])[index]).toString();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      child: Column(
        children: [
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(
                  bottom: 3, left: 10, right: 10, top: 25),
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "BMI Calculator",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, bottom: 10.0, right: 10.0, left: 10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Container(
                  color: secondaryColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Your BMI is :",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w300),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            getBMI(weight, height).toString(),
                            style: TextStyle(
                                fontSize: 75,
                                color: Colors.white,
                                fontWeight: FontWeight.w800),
                          ),
                          Text(
                            "kg/m^2",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w200),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 5.0, bottom: 15.0, right: 10.0, left: 10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Container(
                  color: secondaryColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        getInfo(bmiVal, 0).toString(),
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.w800),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(16.0),
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: Text(
                              getInfo(bmiVal, 1).toString(),
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w200),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              Flexible(
                fit: FlexFit.tight,
                child: RaisedButton(
                  color: accentColor,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(15.0)),
                  onPressed: () {
                    print("calculate btn pressed");
                    resetCalc();
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "CALCULATE AGAIN",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

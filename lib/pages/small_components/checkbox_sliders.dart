import 'package:flutter/material.dart';
import 'package:spiritual/components/common/style/styles.dart';
import 'package:spiritual/menu/default_layout.dart';

class CheckboxSliders extends StatefulWidget {
  @override
  CheckboxSlidersState createState() => new CheckboxSlidersState();
}

class CheckboxSlidersState extends State<CheckboxSliders> {
  Map<String, bool> values = {
    'I love Flutter': true,
    'Flutter UIkit': false,
    'Flutter Widgets': false,
    'Flutter Screens': false,
  };

  int radioValue = 1;
  double sliderValue_1 = 25.0;
  double sliderValue_2 = 50.0;

  Map<String, int> values2 = {
    'I love Flutter': 0,
    'Flutter UIkit': 1,
    'Flutter Widgets': 2,
    'Flutter Screens': 3,
  };

  @override
  Widget build(BuildContext context) {
    void handleRadioValueChanged(int value) {
      setState(() {
        radioValue = value;
      });
    }

    return Layout(
        backButton: true,
        title: 'CHECKBOXES & SLIDERS',
        body: Container(
          padding: EdgeInsets.all(5.0),
          color: Colors.white,
          child: ListView(children: [
            /** Checkbox */
            Card(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              ),
              elevation: 3.0,
              child: Column(
                children: values.keys.map((String key) {
                  return CheckboxListTile(
                    title: Text(key,
                        style: values[key]
                            ? TextStyle(
                                color: Styles.primaryFontColor,
                                fontSize: Styles.h3,
                                fontWeight: Styles.lightFont)
                            : TextStyle(
                                color: Styles.secondaryFontColor,
                                fontSize: Styles.h3,
                                fontWeight: Styles.lightFont)),
                    value: values[key],
                    onChanged: (bool value) {
                      setState(() {
                        values[key] = value;
                      });
                    },
                    activeColor: Styles.primaryFontColor,
                  );
                }).toList(),
              ),
            ),
            /** =============================================== */

            /** Radio Checkbox  */
            Card(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              ),
              elevation: 3.0,
              child: Align(
                alignment: const Alignment(0.0, -0.2),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: values2.keys.map((String key) {
                    return RadioListTile(
                      title: Text(key,
                          style: values2[key] == radioValue
                              ? TextStyle(
                                  color: Styles.primaryFontColor,
                                  fontSize: Styles.h3,
                                  fontWeight: Styles.lightFont)
                              : TextStyle(
                                  color: Styles.secondaryFontColor,
                                  fontSize: Styles.h3,
                                  fontWeight: Styles.lightFont)),
                      value: values2[key],
                      groupValue: radioValue,
                      onChanged: handleRadioValueChanged,
                      activeColor: Styles.primaryFontColor,
                    );
                  }).toList(),
                ),
              ),
            ),
            /** ================================================= */

            /** Sliders */
            Card(
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                elevation: 3.0,
                child: Container(
                    padding: EdgeInsets.all(15.0),
                    height: 150.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Slider(
                          inactiveColor: Color(0xffE1E1E1),
                          activeColor: Styles.primaryFontColor,
                          value: sliderValue_1,
                          min: 0.0,
                          max: 100.0,
                          onChanged: (double value) {
                            setState(() {
                              sliderValue_1 = value;
                            });
                          },
                        ),
                        Slider(
                          inactiveColor: Color(0xffE1E1E1),
                          activeColor: Styles.primaryFontColor,
                          value: sliderValue_2,
                          min: 0.0,
                          max: 100.0,
                          onChanged: (double value) {
                            setState(() {
                              sliderValue_2 = value;
                            });
                          },
                        ),
                      ],
                    )))

            /** ============================================ */
          ]),
        ));
  }
}

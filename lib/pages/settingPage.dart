import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool switchValue = false;
  bool switchPersonalValue = false;
  String regionValue = 'Toshkent';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Setting',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Text(
            'Abdujabbor_17',
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Location",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Show content in this Location ",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'when tis is on, you ll see, whats happening\naround you right now',
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                Switch(
                    value: switchValue,
                    onChanged: (val) {
                      setState(() {});
                    })
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            DropdownButton(
                hint: Text('Selected you region'),
                items: <String>[
                  'Toshkent',
                  'Namangan',
                  'Qashqadaryo',
                  'Andjon',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  print('New value selected:$newValue');
                }),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 1,
            )
          ],
        ),
      ),
    );
  }
}

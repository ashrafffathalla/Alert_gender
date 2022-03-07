import 'package:flutter/material.dart';
class Gender extends StatefulWidget {
  const Gender({Key? key}) : super(key: key);
  @override
  _GenderState createState() => _GenderState();
}
class _GenderState extends State<Gender>
{
  int currentValue = 1;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(),
      body:buildGender(),
    );
  }
  Widget buildGender()=>Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Row(
        children: [
          Radio(
            value: 1,
            groupValue: currentValue,
            onChanged: (value)
            {
              setState(()
              {
                currentValue = 1;
              });
            },
          ),
          const SizedBox(width: 5.0,),
          const Text('Male'),
        ],
      ),
      Row(
        children: [
          Radio(
            value: 2,
            groupValue: currentValue,
            onChanged: (value)
            {
              setState(()
              {
                currentValue = 2;
              });
            },
          ),
          const SizedBox(width: 5.0,),
          const Text('Female'),
        ],
      ),
      Row(
        children: [
          Radio(
            value: 3,
            groupValue: currentValue,
            onChanged: (value)
            {
              setState(()
              {
                currentValue = 3;
              });
            },
          ),
          const SizedBox(width: 5.0,),
          const Text('Other'),
        ],
      ),
    ],
  );
}

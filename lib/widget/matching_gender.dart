import 'package:flutter/material.dart';
import 'package:gender/widget/gender.dart';
class SelectGender extends StatefulWidget
{
  const SelectGender({Key? key}) : super(key: key);

  @override
  State<SelectGender> createState() => _SelectGenderState();
}

class _SelectGenderState extends State<SelectGender>
{
  ///int? currentValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: InkWell(
          onTap: ()
          {
            showDialogWidget(context);
          },
          child: Container(
            height: 50,
            color: Colors.grey[100],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:const
              [
                Text('Matching Gender'),
                Icon(
                    Icons.arrow_right,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

   showDialogWidget(BuildContext context)
  {
    showDialog(
        context: context,
        builder: (BuildContext context ) {
          int? selectedRadio = 0;
          return AlertDialog(
            title: const Text("Matching Gender"),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15.0),
                  topLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                  bottomLeft: Radius.circular(15.0),
                )),
            content: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: List<Widget>.generate(3, (int index)
                    {
                      return Row(
                        children: [
                          Radio<int>(
                            value: index,
                            groupValue: selectedRadio,
                            onChanged: (int? value)
                            {
                              setState(() => selectedRadio = value);
                            },
                          ),
                          if(index == 0 )const Text('Male'),
                          if(index == 1 ) const Text('Female'),
                          if(index == 2 ) const Text('Female'),
                        ],
                      );
                      
                    },
                    ),
                  );
                }
            ),
          );
        }
    );
  }
    }





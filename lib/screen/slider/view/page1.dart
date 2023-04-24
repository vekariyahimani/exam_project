import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Page1> {
  double _sliderValue = 1;
  String _pattern = '1';

  void _generatePattern(double value) {
    String pattern = '';
    for (int i = 1; i <= value; i++) {
      pattern += '${List.generate(i, (j) => j + 1).join()} \n';
    }
    setState(() {
      _pattern = pattern;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Slider Patten"),
            centerTitle: true,
            backgroundColor: Colors.green.shade700,
            elevation: 0,
          ),
          body: Stack(
            children: [
              Container(height: 780,
              width: double.infinity,child: Image.asset("assets/image/img3.png",fit: BoxFit.cover,),),
              Container(height: 780,
                width: double.infinity,decoration: BoxDecoration(
                  color: Colors.black26,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Slider Patten",
                    style: TextStyle(color: Colors.green,fontSize: 20,),
                  ),
                  const SizedBox(height: 20),
                  Slider(
                    activeColor: Colors.green,
                    inactiveColor: Colors.green.shade100,
                    value: _sliderValue,
                    min: 1,
                    max: 10,
                    divisions: 15,
                    label: _sliderValue.round().toString(),
                    onChanged: (value) {
                      setState(() {
                        _sliderValue = value;
                      });
                    },
                    onChangeEnd: _generatePattern,
                  ),
                  const SizedBox(height: 18),
                  Text(
                    _pattern,
                    style: const TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
import 'package:fl_components/Themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders and Checks'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Slider.adaptive(
              min: 50,
              max: 400,
              activeColor: AppTheme.primary,
              divisions: 10,
              value: _sliderValue,
              onChanged: _sliderEnable ? (value) {
                print(value);
                _sliderValue = value;
                setState(() {});
              }
              : null
            ),

              Checkbox(
                  value: _sliderEnable,
                  onChanged: (value) {
                    _sliderEnable = value ?? true;
                    setState(() {});
                  }
                  ),

            Switch(
                value: _sliderEnable,
                onChanged: (value) => setState(() {
                  _sliderEnable = value;
                })
            ),

              CheckboxListTile(
                activeColor: AppTheme.primary,
                title: const Text('Enable Slider'),
                  value: _sliderEnable,
                  onChanged: (value) => setState(() {
                    _sliderEnable = value ?? true;
                  })
              ),
              
              SwitchListTile.adaptive(
                  activeColor: AppTheme.primary,
                  title: const Text('Enable Slider'),
                  value: _sliderEnable,
                  onChanged: (value) => setState(() {
                    _sliderEnable = value;
                    })
                ),

              const AboutListTile(),

              SingleChildScrollView(
                child: Image(
                    image: const NetworkImage('https://www.pngall.com/wp-content/uploads/4/Geralt-Of-Rivia-PNG-Image.png'),
                    fit: BoxFit.contain,
                    width: _sliderValue,
                  ),
              ),

          ],
        ),
    )
    );
  }
}

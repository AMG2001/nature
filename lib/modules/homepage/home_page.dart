import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nature_app/config/device/device_dimenssions.dart';
import 'package:nature_app/modules/images/images_screen.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    const Items = 3;
    List<String> names =['Images' , 'Records' , 'Videos'];

    return Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(builder: (context , constraints){
        return Container(
          width: DeviceDimenssions.width,
          height: DeviceDimenssions.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/splash_back.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: List.generate(
                     Items, (index) => ItemWidget(text: names[index]),
                  ),
                ),
              ),
            ),
          ),
        );
      }
      ),
    );
  }
}

class ItemWidget extends StatelessWidget{
  const ItemWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 100,
        child: Center(child: Text(text)),
      ),
    );
  }

}

import 'package:flutter/material.dart';



class ImagesScreen extends StatelessWidget {
  const ImagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 250, maxHeight: 250),
                    child: Image.asset('assets/images/album_1/1.jpg'),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 250, maxHeight: 250),
                    child: Image.asset('assets/images/album_1/2.jpg'),
                  ),
                ],
              ),
              Divider(),
              Row(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 250, maxHeight: 250),
                    child: Image.asset('assets/images/album_1/3.jpg'),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 250, maxHeight: 250),
                    child: Image.asset('assets/images/album_1/4.jpg'),
                  ),
                ],
              ),
              Divider(),
              Row(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 250, maxHeight: 250),
                    child: Image.asset('assets/images/album_1/5.jpg'),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 250, maxHeight: 250),
                    child: Image.asset('assets/images/album_1/6.jpg'),
                  ),
                ],
              ),
              Divider(),
              Row(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 250, maxHeight: 250),
                    child: Image.asset('assets/images/album_1/7.jpg'),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 250, maxHeight: 250),
                    child: Image.asset('assets/images/album_1/8.jpg'),
                  ),
                ],
              ),
              Divider(),
              Row(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 250, maxHeight: 250),
                    child: Image.asset('assets/images/album_1/9.jpg'),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 250, maxHeight: 250),
                    child: Image.asset('assets/images/album_1/10.jpg'),
                  ),
                ],
              ),
              Divider(),
              Row(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 250, maxHeight: 250),
                    child: Image.asset('assets/images/album_1/11.jpg'),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 250, maxHeight: 250),
                    child: Image.asset('assets/images/album_1/12.jpg'),
                  ),
                ],
              ),
              Divider(),
              Row(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 250, maxHeight: 250),
                    child: Image.asset('assets/images/album_1/13.jpg'),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 250, maxHeight: 250),
                    child: Image.asset('assets/images/album_1/14.jpg'),
                  ),
                ],
              ),
              Divider(),
              Row(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 250, maxHeight: 250),
                    child: Image.asset('assets/images/album_1/15.jpg'),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 250, maxHeight: 250),
                    child: Image.asset('assets/images/album_1/16.jpg'),
                  ),
                ],
              ),
              Divider(),
              Row(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 250, maxHeight: 250),
                    child: Image.asset('assets/images/album_1/17.jpg'),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 250, maxHeight: 250),
                    child: Image.asset('assets/images/album_1/18.jpg'),
                  ),
                ],
              ),
              Divider(),
              Row(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 250, maxHeight: 250),
                    child: Image.asset('assets/images/album_1/19.jpg'),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 250, maxHeight: 250),
                    child: Image.asset('assets/images/album_1/20.jpg'),
                  ),
                ],
              ),
              Divider(),
              Row(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 250, maxHeight: 250),
                    child: Image.asset('assets/images/album_1/21.jpg'),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 250, maxHeight: 250),
                    child: Image.asset('assets/images/album_1/2.jpg'),
                  ),
                ],
              ),
              Divider(),


            ],

          ),
        ),
      ),
    );
  }
}



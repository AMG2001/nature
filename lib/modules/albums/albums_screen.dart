import 'package:flutter/material.dart';
import '../../shared/components/components.dart';
import 'albums.dart';
import 'package:nature_app/modules/images/images_screen.dart';

class AlbumScreen extends StatelessWidget {
  const AlbumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Albums'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        children:[
          GestureDetector(
          onTap: () => navigateTo(context, ImagesScreen()),
          child: Albums(
            title: 'الاسبوع البيئي',
            artist: '',
          ),
        ),
          GestureDetector(
            onTap: () => navigateTo(context, ImagesScreen()),
            child: Albums(
              title: 'الهوية البصرية',
              artist: '',
            ),
          ),
          GestureDetector(
            onTap: () => navigateTo(context, ImagesScreen()),
            child: Albums(
              title: 'الاسبوع البيئي',
              artist: '',
            ),
          ),

      ]
      ),
    );
  }
}





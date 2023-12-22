import 'package:flutter/material.dart';
import 'package:nature_app/modules/login/login_screen.dart';
import 'package:nature_app/shared/components/components.dart';


class BoardingModel{
  final String image;
  final String title;
  final String body;

  BoardingModel({
    required this.image,
    required this.title,
    required this.body,
  });
}

class onBoardingScreen extends StatefulWidget {
  const onBoardingScreen({Key? key}) : super(key: key);

  @override
  State<onBoardingScreen> createState() => _onBoardingScreenState();
}

class _onBoardingScreenState extends State<onBoardingScreen> {


  var boardController = PageController();

  List<BoardingModel> boarding =[
    BoardingModel(
      image: 'assets/images/on_board1.jpg',
      title: 'صوت الطبيعة',
      body: 'يستحق الاستماع لنحميها من التلوث و التغير المناخي',
    ),
    BoardingModel(
      image: 'assets/images/on_board2.png',
      title: 'صوت الطبيعة',
      body: 'هو لحن الحياة, دعونا نحافظ عليه بكل حب',
    ),

  ];

  bool isLast = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: (){
                navigateAndFinish(context, LoginScreen());
              },
              child: Text(
                  'SKIP!',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                physics: BouncingScrollPhysics(),
                controller: boardController,
                onPageChanged: (int index){
                  if(index == boarding.length-1){
                    setState(() {
                      isLast = true;
                    });
                  }
                  else{
                    setState(() {
                      isLast = false;
                    });
                  }
                },
                itemBuilder: (context , index) => BuildBoardingItem(boarding[index]),
                itemCount: boarding.length,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              children: [
                Spacer(),
                FloatingActionButton(
                  backgroundColor: Colors.greenAccent,
                  onPressed: (){
                    if(isLast){
                      navigateAndFinish(context, LoginScreen());
                    }
                    else{
                      boardController.nextPage(
                        duration: Duration(
                          milliseconds: 750,
                        ),
                        curve: Curves.fastLinearToSlowEaseIn,
                      );
                    }

                  },
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget BuildBoardingItem(BoardingModel model) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        child: Image(
          image: AssetImage(
              '${model.image}'),
        ),
      ),
      Text(
        '${model.title}',
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 15.0,
      ),
      Text(
        '${model.body}',
        style: TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 15.0,
      ),
    ],
  );
}

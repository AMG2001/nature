import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nature_app/models/questions_and_answers/questions_and_answers_models.dart';
import 'package:nature_app/modules/questions_and_answers_page/components/more_info_widget.dart';
import 'package:nature_app/modules/questions_and_answers_page/controller/q_and_a_controller.dart';
import 'package:nature_app/shared/widgets/custom_future_builder.dart';

class QuestionsAndAnswersPage extends StatelessWidget {
  final controller = Get.put(QuestionsAndAnswersController(), permanent: true);
  QuestionsAndAnswersPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () async {
        await controller.addQuestion(
            questionsAndAnswersDataModel: QuestionsAndAnswersDataModel(
                question: "Q1",
                answer: "Answer1",
                hasMoreInfo: false,
                url: ""));
      }),
      appBar: AppBar(title: Text("Q & A")),
      body: CustomFutureBuilder(
          future: controller.loadQuestionsAndAnswers(),
          viewWhenLoaded: GetBuilder<QuestionsAndAnswersController>(
            init: controller,
            builder: (controller) {
              return ListView.builder(
                itemCount: controller.questionsAndAnswersList.length,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ExpandablePanel(
                      header: Text(
                          controller.questionsAndAnswersList[index].question),
                      collapsed: Text(
                        controller.questionsAndAnswersList[index].answer,
                        softWrap: true,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Container(
                        height: 400,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text(
                                controller
                                    .questionsAndAnswersList[index].answer,
                                softWrap: true,
                              ),
                              controller.questionsAndAnswersList[index]
                                      .hasMoreInfo
                                  ? MoreInfoWidget()
                                  : SizedBox()
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          )),
    );
  }
}


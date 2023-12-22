import 'package:get/get.dart';
import 'package:nature_app/models/questions_and_answers/questions_and_answers_models.dart';
import 'package:nature_app/services/cloud_storage/cloud_connection.dart';
import 'package:nature_app/shared/maps_keys.dart';

class QuestionsAndAnswersController extends GetxController {
  List<QuestionsAndAnswersDataModel> questionsAndAnswersList = [];

  Future<void> addQuestion(
      {required QuestionsAndAnswersDataModel
          questionsAndAnswersDataModel}) async {
    await CloudConnection.instance.getDbObject
        .collection(MapsKeys.questions_and_answers_collection_name)
        .insert(questionsAndAnswersDataModel.toMap());
    questionsAndAnswersList.add(questionsAndAnswersDataModel);
    update();
  }

  Future<void> loadQuestionsAndAnswers() async {
    questionsAndAnswersList.clear();
    await CloudConnection.instance.getDbObject
        .collection(MapsKeys.questions_and_answers_collection_name)
        .find()
        .toList()
        .then((qAndAMapsList) {
      print('length of data fetched from cloud : ${qAndAMapsList.length}');
      qAndAMapsList.forEach((qAndAMap) {
        print(qAndAMap);
        questionsAndAnswersList
            .add(QuestionsAndAnswersDataModel.fromMap(qAndAMap));
      });
    });
    update();
  }
}

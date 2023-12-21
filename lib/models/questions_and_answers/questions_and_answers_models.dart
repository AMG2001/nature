import 'package:nature_app/services/shared/maps_keys.dart';

class QuestionsAndAnswersDataModel {
  late String question;
  late String answer;
  late bool hasMoreInfo;
  late String url;
  QuestionsAndAnswersDataModel(
      {required this.question,
      required this.answer,
      required this.hasMoreInfo,
      required this.url});

  QuestionsAndAnswersDataModel.fromMap(Map<String, dynamic> map) {
    this.question = map[MapsKeys.question_key];
    this.answer = map[MapsKeys.answer_key];
    this.hasMoreInfo = map[MapsKeys.hasMoreInfo_key];
    this.url = map[MapsKeys.url_key];
  }
  Map<String, dynamic> toMap() {
    return {
      MapsKeys.question_key: this.question,
      MapsKeys.answer_key: this.answer,
      MapsKeys.hasMoreInfo_key: this.hasMoreInfo,
      MapsKeys.url_key: this.url
    };
  }
}

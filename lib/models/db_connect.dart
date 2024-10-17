import 'package:http/http.dart' as http;
import './question_model.dart';
import 'dart:convert';


class Dbconnect {
  final url = Uri.parse('###');

  Future<void> addQuestion(Question question) async {
    http.post(url, 
      body: json.encode({
        'title' : question.title,
        'options' : question.options,
      })
    );
  }

  //fetch the data from database
  Future<List<Question>> fetchQuestion() async {
    //http.get(url);

    //decode it first
    return http.get(url).then((response) {
      var data = json.decode(response.body) as Map<String, dynamic>;

      List<Question> newQuestions = [];

      data.forEach((key, value) {
        var newQuestion = Question(
          id: key, 
          title: value['title'], 
          options: Map.castFrom(value['options']),
          );

          newQuestions.add(newQuestion);

      });
      //print(newQuestions);
      return newQuestions;
    });
  }

}


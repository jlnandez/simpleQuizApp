import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import './question_model.dart';
import 'dart:convert';


class Dbconnect {
  final url = Uri.parse('https://#####.com/questions.json');

  Future<void> addQuestion(Question question) async {
    http.post(url, 
      body: json.encode({
        'title' : question.title,
        'options' : question.options,
      })
    );
  }

  //fetch the data from database
  Future<void> fetchQuestion() async {
    //http.get(url);

    //decode it first
    http.get(url).then((response) {
      var data = json.decode(response.body);
      print(data);

    });
  }

}


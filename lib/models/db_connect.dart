import 'package:http/http.dart' as http;
import './question_model.dart';


class DbConnect {
  final url = Uri.parse('https://simplequizapp-2b5df-default-rtdb.firebaseio.com/');

  Future<void> addQuestion(Question question) async {
    http.post(url);
  }

}


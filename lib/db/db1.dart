import 'package:uuid/uuid.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddRepeatedQuestionsService {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  void createRepeatedQuestion({
    required String question,
    required String noofrepeatition,
    required String yearsofrepeatition,
    required String year,
    required String subject,
    String? pageno1,
    String? pageno2,
    String? edition1,
    String? edition2,
    String? textbook1,
    String? textbook2,
  }) {
    var id = Uuid();
    String repeatedID = id.v1();
    _firestore.collection('repeated').doc(repeatedID).set({
      'question': question,
      'noofrepeatition': noofrepeatition,
      'yearsofrepeatition': yearsofrepeatition,
      'year': year,
      'subject': subject,
      'pageno1': pageno1,
      'pageno2': pageno2,
      'edition1': edition1,
      'edition2': edition2,
      'textbook1': textbook1,
      'textbook2': textbook2,
    });
  }
}

class AddDictionaryService {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  void createDictionary({
    required String word,
    required String meaning,
  }) {
    var id = Uuid();
    String dictionaryID = id.v1();
    _firestore.collection('dictionary').doc(dictionaryID).set({
      'word': word,
      'meaning': meaning,
    });
  }
}

class AddTopicWiseQuestionsService {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  void createTopicWiseQuestions({
    required String year,
    required String subject,
    required String topic,
    required String question,
  }) {
    var id = Uuid();
    String topicWiseID = id.v1();
    _firestore.collection('topicwise').doc(topicWiseID).set({
      'year': year,
      'subject': subject,
      'topic': topic,
      'question': question,
    });
  }
}

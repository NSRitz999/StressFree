import 'package:firebase_auth/firebase_auth.dart';
import 'package:firstapp/utils/units_constant.dart';

import '../model/stressFree_Model.dart';

class stressFree_Controller {
  final modelReference = new stressFree_Model();
  final String _userID = FirebaseAuth.instance.currentUser!.uid;

  /// inserts: {'name':<string>, 'status':<bool>, 'date':{'month':<int>,'day':<int>,'year':<int>}}
  insertActivityData(String name, bool status, List date, int priority) {
    print("ctrllr.insertActivityData{" +
        name +
        ", " +
        status.toString() +
        ", " +
        date[0].toString() +
        date[1].toString() +
        date[2].toString() +
        "}");
    modelReference.dbInsertActivity(name, status, date, priority);
  }

  /// inserts: {'mood':<String>, 'date':{'month':<int>,'day':<int>,'year':<int>}}
  insertMoodData(Moods mood, List date) {
    modelReference.dbInsertMood(mood, date);
  }

  insertVideo(String title, bool isFavorite, String URL) {
    modelReference.dbInsertVideo(isFavorite, title, URL);
  }

  removeVideo(String collection, String title) {
    modelReference.dbRemoveVideo(collection, title);
  }

  insertJournalData(String title, List date, String body) {
    modelReference.dbInsertJournal(title, date, body, _userID);
  }
}

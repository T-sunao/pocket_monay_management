import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';

class FirestoreService {
  final db = FirebaseFirestore.instance;

  Future<void> create() async {
    await db.collection('balances').doc('0').set({
      'amount': 1000,
      'balanceCatg': '支出',
      'category': '交際費',
      'date': DateTime.now(),
      'memo': '○○さんとユニバ',
    });
    await db.collection('balances').doc('1').set({
      'amount': 5000,
      'balanceCatg': '収入',
      'category': 'お小遣い',
      'date': DateTime.timestamp(),
      'memo': '',
    });
  }

  Future<void> read(int count, String collectionName) async {
    for (var i = 0; i < count; i++) {
      final doc = await db.collection(collectionName).doc('$i').get();
      // 文字に変換
      final balance = doc.data().toString();
      debugPrint(balance);
    }
  }

  Future<void> update() async {}
  Future<void> delete() async {}
}

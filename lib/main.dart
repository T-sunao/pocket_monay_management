import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:pocket_monay_management/expenditure.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pocket_monay_management/service.dart';
import 'firebase_options.dart';
// import 'package:go_router/go_router.dart';

import './index.dart';
import './savings.dart';
import './transition_list.dart';
import './graph.dart';
import './settings.dart';
import './savings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final service = FirestoreService();
  service.create();
  service.read(2, 'balances');
  // test2();
  final scope = ProviderScope(child: MaterialApp(home: App()));
  runApp(scope);
}

final indexProvider = StateProvider((ref) {
  return 0;
});

class App extends ConsumerWidget {
  App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // インデックス
    final index = ref.watch(indexProvider);

    // アイテムたち
    const items = [
      BottomNavigationBarItem(icon: Icon(Icons.mode_sharp), label: '入力'),
      BottomNavigationBarItem(icon: Icon(Icons.savings_rounded), label: '貯金'),
      BottomNavigationBarItem(
        icon: Icon(Icons.calendar_month_rounded),
        label: 'カレンダー',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.pie_chart_rounded),
        label: 'グラフ',
      ),
      BottomNavigationBarItem(icon: Icon(Icons.settings), label: '設定'),
    ];

    final bottomBar = BottomNavigationBar(
      items: items,
      backgroundColor: Colors.black12,
      selectedItemColor: const Color.fromARGB(255, 92, 91, 91),
      unselectedItemColor: Colors.black,
      currentIndex: index,
      onTap: (index) {
        ref.read(indexProvider.notifier).state = index;
      },
    );

    final appBar = AppBar(backgroundColor: Colors.black12);

    // ページたち
    final pages = [
      IndexPage(),
      SavingsPage(),
      TransitionListPage(),
      GraphPage(),
      SettingsPage(),
    ];

    return Scaffold(
      appBar: appBar,
      body: pages[index],
      bottomNavigationBar: bottomBar,
    );
  }
}

// void test1() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   final json = await rootBundle.loadString('stub/expenditure.json');

//   final map = jsonDecode(json);

//   final data = Expenditure.fromJson(map);

//   debugPrint('データの中身は $data');
// }

// void test2() async {
//   const data = Expenditure(
//     expenditureDate: '2024/09/23',
//     expenditureAmount: 5093,
//     expenditureCategory: '交際費',
//     expenditureMemo: '誕生日プレゼント',
//   );

//   final map = data.toJson();

//   final json = jsonEncode(map);

//   debugPrint('JSONの中身は $json');
// }

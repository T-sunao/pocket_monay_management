import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
// import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:intl/intl.dart';

// プロバイダー
final balanceProvider = StateProvider((ref) {
  return "支出";
});
final deteProvider = StateProvider((ref) {
  return "date";
});
final amountProvider = StateProvider((ref) {
  return "amount";
});
final categoryProvider = StateProvider((ref) {
  return "category";
});
final memoProvider = StateProvider((ref) {
  return "memo";
});

class IndexPage extends ConsumerWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // データを見張っておく
    final balance = ref.watch(balanceProvider);
    final date = ref.watch(deteProvider);
    final amount = ref.watch(amountProvider);
    final category = ref.watch(categoryProvider);
    final memo = ref.watch(memoProvider);

    // コントローラ
    final balanceController = TextEditingController();
    final dateController = TextEditingController(
      text: DateFormat('yyyy/MM/dd').format(DateTime.now()),
    );
    final amountController = TextEditingController();
    final categoryController = TextEditingController();
    final memoController = TextEditingController();

    pushedButton() {
      debugPrint(dateController.text);
      debugPrint(amountController.text);
      debugPrint(categoryController.text);
      debugPrint(memoController.text);
      final balanceNotifier = ref.read(balanceProvider.notifier);
      balanceNotifier.state = balanceController.text;
      final dateNotifier = ref.read(deteProvider.notifier);
      dateNotifier.state = dateController.text;
      final amountNotifier = ref.read(amountProvider.notifier);
      amountNotifier.state = amountController.text;
      final categoryNotifier = ref.read(categoryProvider.notifier);
      categoryNotifier.state = categoryController.text;
      final memoNotifier = ref.read(memoProvider.notifier);
      memoNotifier.state = memoController.text;
    }

    final balanceRadioButton = CustomRadioButton(
      elevation: 0,
      absoluteZeroSpacing: false,
      unSelectedColor: Colors.black45,
      buttonLables: ['支出', '収入'],
      buttonValues: ["支出", "収入"],
      defaultSelected: "支出",
      buttonTextStyle: ButtonTextStyle(
        selectedColor: Colors.black54,
        unSelectedColor: Colors.white38,
        textStyle: TextStyle(fontSize: 16),
      ),
      radioButtonValue: (value) {
        ref.read(balanceProvider.notifier).state = value;
      },
      selectedColor: Colors.black12,
      selectedBorderColor: Colors.black54,
      enableShape: true,
    );

    final dateField = TextFormField(
      readOnly: true,
      controller: dateController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: '日付',
        hintText: '0000/00/00',
      ),
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2100),
          locale: const Locale('ja', 'JP'),
        );
        if (pickedDate != null) {
          String formatteDate = DateFormat('yyyy/MM/dd').format(pickedDate);
          dateController.text = formatteDate;
          ref.read(deteProvider.notifier).state = formatteDate;
        }
      },
    );

    final amountField = TextField(
      controller: amountController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: '金額',
        hintText: '円',
      ),
    );

    final categoryField = TextField(
      controller: categoryController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'カテゴリ',
      ),
    );

    final memoField = TextField(
      controller: memoController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'メモ',
      ),
    );

    final button = ElevatedButton(
      onPressed: pushedButton,
      child: Text('push!'),
    );

    final column = Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        balanceRadioButton,
        // if (balance == "支出") ...[
        //   dateField,
        //   amountField,
        // ] else ...[
        //   categoryField,
        //   memoField,
        // ],
        dateField,
        amountField,
        categoryField,
        memoField,
        button,
        Text(balance),
        Text(date),
        Text(amount),
        Text(category),
        Text(memo),
      ],
    );

    final con = Container(
      color: Colors.black12,
      width: 400,
      height: 450,
      child: column,
      alignment: Alignment.center,
      padding: EdgeInsets.fromLTRB(50, 30, 50, 30),
    );

    final body = Center(child: con);

    return body;
  }
}


import 'package:equatable/equatable.dart';
import 'package:personal_expense_tracker_app/res/app_constants/app_constants.dart';

class ExpenseItem extends Equatable{
  final int? id;
  final String title;
  final String desc;
  final String amount;
  final DateTime dateTime;

  const ExpenseItem({
    this.id,
    required this.title,
    required this.desc,
    required this.amount,
    required this.dateTime
  });

  ExpenseItem copyWith({int? id, String? title, String? desc, String? amount, DateTime? dateTime}){
    return ExpenseItem(
        id: id ?? this.id,
        title: title ?? this.title,
        desc: desc ?? this.desc,
        amount: amount ?? this.amount,
        dateTime: dateTime ?? this.dateTime
    );
  }

  factory ExpenseItem.fromJson(Map<String, dynamic> map) {
    return ExpenseItem(
      id: map[AppConst.id],
      title: map[AppConst.title],
      desc: map[AppConst.desc],
      amount: map[AppConst.amount],
      dateTime: DateTime.parse(map[AppConst.dateTime])
    );
  }
  Map<String, dynamic> toMap() {
    return {
      AppConst.id: id,
      AppConst.title: title,
      AppConst.desc: desc,
      AppConst.amount: amount,
      AppConst.dateTime: dateTime.toString(),
    };
  }

  @override
  List<Object?> get props => [id, title, desc, amount, dateTime];
}

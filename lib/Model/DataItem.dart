import 'package:intl/intl.dart';

class DataItem {
  final String date;
  final String name;
  final String category;
  final String location;

  DataItem({
    required this.date,
    required this.name,
    required this.category,
    required this.location,
  });

  factory DataItem.fromJson(Map<String, dynamic> json) {
    return DataItem(
      date: _formatDate(int.parse(json['date'])),
      name: json['name'],
      category: json['category'],
      location: json['location'],
    );
  }

  static String _formatDate(int epoch) {
    var date = DateTime.fromMillisecondsSinceEpoch(epoch * 1000);
    var formatter = DateFormat(' hh:mm a');
    return formatter.format(date);
  }

  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'name': name,
      'category': category,
      'location': location,
    };
  }
}

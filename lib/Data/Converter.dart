var englishToBanglaDigits = {
  '0': '০',
  '1': '১',
  '2': '২',
  '3': '৩',
  '4': '৪',
  '5': '৫',
  '6': '৬',
  '7': '৭',
  '8': '৮',
  '9': '৯',
  ':': ':',
};

String Day_in_Bangla(String x) {
  
  String period = x.substring(x.length - 2);

  
  int hour = int.parse(x.substring(0, x.indexOf(':')));

  
  String sent = "";
  if (period == 'AM') {
    if (hour >= 5 && hour <= 11) {
      sent = "সকাল ";
    } else {
      sent = "মধ্যরাত";
    }
  } else if (period == 'PM') {
    if (hour == 12 || (hour >= 1 && hour <= 2)) {
      sent = "দুপুর ";
    } else if (hour >= 3 && hour <= 5) {
      sent = "বিকাল ";
    } else if (hour >= 6 && hour <= 8) {
      sent = "সন্ধ্যা";
    } else {
      sent = "রাত";
    }
  }

  return sent;
}


String Time_in_Bangla(String y) {
  String sent = "";
  for (var i = 0; i < y.length; i++) {
    if (y[i] == 'A' || y[i] == 'M' || y[i] == 'P') {
      break;
    } else {
      var a = y[i];
      sent += englishToBanglaDigits[a]??"";
    }
  }
  return "${sent} মি.";
}

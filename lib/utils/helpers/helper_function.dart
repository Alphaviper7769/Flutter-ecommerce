import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class THelperFunctions {
  static Color? getColor(String value){
    if (value == 'Green') {
      return Colors.green;
    } 
    else if (value == 'Red') {
      return Colors.red;
    } 
    else if (value == 'Blue') {
      return Colors.blue;
    } 
    else if (value == 'Pink') {
      return Colors.pink;
    } 
    else if (value == 'Grey') {
      return Colors.grey;
    } 
    else if (value == 'Purple') {
      return Colors.purple;
    } 
    else if (value == 'Black') {
      return Colors.black;
    } 
    else if (value == 'White') {
      return Colors.white;
    } 
    else {
      // Default color if value doesn't match any of the above
      return Colors.transparent;
    }
  }

  static void showSnackBar(String message, {int duration = 3}) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: duration),
      ),
    );
  }

  static void showAlert(String title, String message) {
    showDialog(
      context: Get.context!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
        ),
        ],
        );
      },
      );
  }

  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  static String truncateText(String text, int length) {
    if (text.length > length) {
      return text.substring(0, length) + '...';
    } else {
      return text;
    }
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize(BuildContext context) {
    return MediaQuery.of(Get.context!).size;
  }

  static double screenWidth(BuildContext context) {
    return MediaQuery.of(Get.context!).size.width;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(Get.context!).size.height;
  }

  static String getFormattedDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MM-yyyy').format(date);
  }

  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  static List<Widget> wrapWidgets(List<Widget> widgets,int rowSize){
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(i, i + rowSize > widgets.length ? widgets.length : i + rowSize);
      wrappedList.add(Row(
        children: rowChildren,
      ));
    }
    return wrappedList;
  }

}
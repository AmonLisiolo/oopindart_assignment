void main() {
  DateTime now = DateTime.now();
  DateTime futureDate = now.add(Duration(days: 7));
  DateTime earlierDate = DateTime(2024, 3, 1);
//formatting dates (yyyy-mm-dd)
  String formattedDate = "${now.year}-${(now.month)}-${(now.day)}";
  print("Cuurent Date: $now");
  print("Future Date: $futureDate");
  print("Earlier Date: $earlierDate");
  print(formattedDate);
}

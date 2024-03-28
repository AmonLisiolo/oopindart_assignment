enum weekDays {
  //constant values
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
  Sunday,
}

void main() {
  //access enum values
  print(weekDays.Monday.toString().split('.').last);
  for (var weekDay in weekDays.values) {
    print(weekDay.toString().split(".").last);
  }
}

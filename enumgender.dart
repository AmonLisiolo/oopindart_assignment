import 'dart:io';

enum Gender { Male, Female, Other }

void main() {
  print("Select your gender:");
  print("1. Male");
  print("2. Female");
  print("3. Other");

  int? choice;
  do {
    stdout.write("Enter your choice (1-3): ");
    String? input = stdin.readLineSync();
    try {
      choice = int.parse(input!);
      if (choice < 1 || choice > 3) {
        throw FormatException("Invalid choice. Please enter 1, 2, or 3.");
      }
    } catch (FormatException) {
      print("Invalid input. Please enter a number.");
    }
  } while (choice == null || choice < 1 || choice > 3);

  Gender selectedGender;
  switch (choice) {
    case 1:
      selectedGender = Gender.Male;
      break;
    case 2:
      selectedGender = Gender.Female;
      break;
    case 3:
      selectedGender = Gender.Other;
      break;
    default:
      throw ArgumentError('Invalid choice');
  }

  print("You selected: $selectedGender");
}

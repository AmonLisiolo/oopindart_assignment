enum MotorVehicle {
  Mercedes,
  Bently,
  LandRover,
  RollsRoyce,
}

void main() {
  // Accessing enum values
  print(MotorVehicle.Bently); // Output: MotorVehicle.Bently

  // Converting enum to string
  String MotorVehicleString = MotorVehicle.RollsRoyce.toString();
  print(MotorVehicleString); // Output: MotorVehicle.RollsRoyce

  // Accessing enum values using index
  print(MotorVehicle.values[2]); // Output: MotorVehicle.LandRover

  // Iterating through enum values
  for (var MotorVehicle in MotorVehicle.values) {
    print(MotorVehicle);
  }
}

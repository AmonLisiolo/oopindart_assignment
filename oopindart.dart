import 'dart:io';

// Interface for serialization
abstract class Serializable {
  Map<String, dynamic> toJson();
}

// Superclass representing hospital services
class HospitalService {
  String serviceType;

  HospitalService(this.serviceType);

  void displayServiceType() {
    print('Service Type: $serviceType');
  }
}

// Subclass representing patient information
class Patient extends HospitalService implements Serializable {
  String name;
  int idNumber;
  bool isAdult;

  Patient(String serviceType, this.name, this.idNumber, this.isAdult)
      : super(serviceType);

  @override
  void displayServiceType() {
    super.displayServiceType(); // Calling superclass method
    print('Patient Name: $name');
    print('Patient ID Number: $idNumber');
    print('Patient Age: ${isAdult ? "Adult" : "Minor"}');
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'serviceType': serviceType,
      'name': name,
      'idNumber': idNumber,
      'isAdult': isAdult,
    };
  }
}

// Read patient data from a file and create Patient objects
List<Patient> readPatientsFromFile(String filePath) {
  final patients = <Patient>[];
  final file = File(filePath);

  try {
    final lines = file.readAsLinesSync();
    for (var line in lines) {
      final parts = line.split(',');
      if (parts.length == 4) {
        final serviceType = parts[0];
        final name = parts[1];
        final idNumber = int.tryParse(parts[2]);
        final isAdult = parts[3].toLowerCase() == 'true';
        if (idNumber != null) {
          patients.add(Patient(serviceType, name, idNumber, isAdult));
        }
      }
    }
  } catch (e) {
    print('Error reading file: $e');
  }

  return patients;
}

void main() {
  // Initialize patients from file
  final patients = readPatientsFromFile('patients.txt');

  // Display patient information using a loop
  for (var patient in patients) {
    patient.displayServiceType();
  }
}

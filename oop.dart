

    class Patient {
        bool inPatient;
        String name;
        int idNumber;
        bool isAdult;
        String serviceType;
        int number;

        Patient(this.inPatient, this.name, this.idNumber, this.isAdult, this.serviceType, this.number);

    void displayInfo() {
        print("Patient Type: ${inPatient? "InPatient": "OutPatient"}");
        print("Patient Name: $name");
        print("Patient ID Number: $idNumber");
        print("Patient Age: ${isAdult? "Adult": "Minor"}");
        print("Medical Service: $serviceType");
        print("Patient Number: $number");
    }
    }
void main () {
    var patient= Patient(true, "Amon lisiolo", 36774512, true, "Surgery", 37819);
    patient.displayInfo();
}

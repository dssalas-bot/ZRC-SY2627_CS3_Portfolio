class Patient:
    def __init__(self, name, bill_amount):
        self.__name = name
        self.__bill_amount = bill_amount

    def get_name(self):
        return self.__name
    
    def get_bill_amount(self):
        return self.__bill_amount

    def set_bill_amount(self, new_bill_amount):
        self.__bill_amount = new_bill_amount

    def calculate_bill(self):
        return self.__bill_amount

class seniorpatient(Patient):
    def __init__(self, name, bill_amount, discount):
        super().__init__(name, bill_amount)
        self.__discount = discount

    def calculate_bill(self):
        original_bill = super().calculate_bill()
        discounted_bill = original_bill - (original_bill * self.__discount / 100)
        return discounted_bill

class PhilhealthPatient(Patient):
    def __init__(self, name, bill_amount, philhealth_discount):
        super().__init__(name, bill_amount)
        self.__philhealth_discount = philhealth_discount

    def calculate_bill(self):
        original_bill = super().calculate_bill()
        discounted_bill = original_bill - (original_bill * self.__philhealth_discount / 100)
        return discounted_bill

patient1 = Patient("John Doe", 1000)
senior_patient1 = seniorpatient("Jane Smith", 1000, 20)
philhealth_patient1 = PhilhealthPatient("Mark Johnson", 1000, 15)

print("\n welcome to the patient information system!")
print(f"\nPatient: {patient1.get_name()}, Bill Amount: {patient1.calculate_bill()}")
print(f"\nSenior Patient: {senior_patient1.get_name()}, Bill Amount after Discount:  {senior_patient1.calculate_bill()}")
print(f"\nPhilhealth Patient: {philhealth_patient1.get_name()}, Bill Amount after Discount:  {philhealth_patient1.calculate_bill()}")


class PSHS_GALAXY:
    def __init__(self, name):
        self.name = name

    def intrduce(self):
        print(f"Hello, I am {self.name} from PSHS Galaxy.")

class NATIONALITIES(PSHS_GALAXY):
    def __init__(self, name, nationality):
        super().__init__(name)
        self.nationality = nationality

    def introduce(self):
        print(f"Hello, I am {self.name} from PSHS Galaxy and I am a {self.nationality}.")

class ALIEN(PSHS_GALAXY):
    def __init__(self, name, species):
        super().__init__(name)
        self.species = species

    def introduce(self):
        print(f"Hello, I am {self.name} from PSHS Galaxy and I am a {self.species}.")

class filipino(NATIONALITIES):
    def __init__(self, name):
        super().__init__(name, "Filipino")

class indonesian(NATIONALITIES):
    def __init__(self, name):
        super().__init__(name, "Indonesian")

class spaniard(NATIONALITIES):
    def __init__(self, name):
        super().__init__(name, "Spaniard")

class avenger(ALIEN):
    def __init__(self, name):
        super().__init__(name, "Avengers")

class marvel(ALIEN):
    def __init__(self, name):
        super().__init__(name, "Marvel") 

filipino1 = filipino("Juan Carlos")
indonesian1 = indonesian("Muhammad Ali")
spaniard1 = spaniard("Magellan")
avenger1 = avenger("Thor")
marvel1 = marvel("Spiderman")

print("Welcome to PSHS Galaxy!")
print(filipino1.introduce()) 
print(indonesian1.introduce())
print(spaniard1.introduce())
print(avenger1.introduce())
print(marvel1.introduce())



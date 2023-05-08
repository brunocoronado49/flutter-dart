void main() {
  final WindPlant windPlant = WindPlant(initialEnery: 100);
  final NuclearPlant nuclearPlant = NuclearPlant(energyLeft: 1000);

  windPlant.consumeEnergy(30);
  print(windPlant.energyLeft);

  print('Wind: ${chargePhone(windPlant)}');
  print('Nuclear: ${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if(plant.energyLeft < 10) {
    throw Exception('Not enough energy!');
  }

  return plant.energyLeft - 10;
}

enum PlanType {
  nuclear,
  wind,
  water
}

abstract class EnergyPlant {
  double energyLeft;
  final PlanType type;

  EnergyPlant({
    required this.energyLeft,
    required this.type
  });

  void consumeEnergy(double amount);
}

// forma mas general
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnery})
    : super(energyLeft: initialEnery, type: PlanType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

// forma mas especifica
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlanType type = PlanType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}

void main() {
  final WindPlant windPlant = WindPlant(initialEnery: 100);
  windPlant.consumeEnergy(30);
  print(windPlant.energyLeft);

  print('Wind: ${chargePhone(windPlant)}');
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
  PlanType type;

  EnergyPlant({
    required this.energyLeft,
    required this.type
  });

  void consumeEnergy(double amount);
}

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnery})
    : super(energyLeft: initialEnery, type: PlanType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}


abstract class Chair {
  void sitOn();
  bool hasLegs();
}

class ModernChair implements Chair {
  @override
  bool hasLegs() => false;

  @override
  void sitOn() {
    print('sit on modern chair');
  }
}

class VictorianChair implements Chair {
  @override
  bool hasLegs() => true;

  @override
  void sitOn() {
    print('sit on Victorian chair');
  }
}

class NormalChair implements Chair {
  @override
  bool hasLegs() => true;

  @override
  void sitOn() {
    print('sit on normal chair');
  }
}
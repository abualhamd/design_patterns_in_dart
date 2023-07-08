abstract class Couch {
  void sitOn();
  bool hasLegs();
}

class ModernCouch implements Couch {
  @override
  bool hasLegs() => false;

  @override
  void sitOn() {
    print('sit on modern Couch');
  }
}

class VictorianCouch implements Couch {
  @override
  bool hasLegs() => true;

  @override
  void sitOn() {
    print('sit on Victorian Couch');
  }
}

class NormalCouch implements Couch {
  @override
  bool hasLegs() => true;

  @override
  void sitOn() {
    print('sit on normal Couch');
  }
}
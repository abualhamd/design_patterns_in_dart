abstract class Publisher {
  List<Subscriber> subscribers = [];

  void notifySubscriber({required String email});
  void addSubscriber({required Subscriber subsciber});
  void removeSubscriber({required Subscriber subscriber});
}

abstract class Subscriber {
  void update({required String email});
}

class MailingList extends Publisher {
  @override
  void notifySubscriber({required String email}) {
    for (int i = 0; i < subscribers.length; i++) {
      subscribers[i].update(email: email);
    }
  }

  @override
  void addSubscriber({required Subscriber subsciber}) {
    subscribers.add(subsciber);
  }

  @override
  void removeSubscriber({required Subscriber subscriber}) {
    subscribers.remove(subscriber);
  }
}

class MailSubscriber implements Subscriber {
  @override
  void update({required String email}) {
    print(email);
  }
}

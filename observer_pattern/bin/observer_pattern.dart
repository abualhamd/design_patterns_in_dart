import 'package:observer_pattern/observer.dart';

void main() {
  Publisher pub = MailingList();

  Subscriber mailSubscriber1 = MailSubscriber();
  Subscriber mailSubscriber2 = MailSubscriber();

  pub.addSubscriber(subsciber: mailSubscriber1);
  pub.addSubscriber(subsciber: mailSubscriber2);

  pub.notifySubscriber(
      email: 'Hello, dear customer! How are you and how is your mother');

  pub.removeSubscriber(subscriber: mailSubscriber1);

  pub.notifySubscriber(email: 'Dear customer, we wish you a good day in hell');
}

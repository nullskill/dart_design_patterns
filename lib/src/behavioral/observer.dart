/// The Observer pattern allows decoupling between subjects and observers,
/// ensuring that changes in one do not affect the other.
library;

// Abstract Observer interface
abstract interface class Observer {
  void update(String message);
}

// Concrete Observer: EmailSubscriber
class EmailSubscriber implements Observer {
  final String email;

  EmailSubscriber(this.email);

  @override
  void update(String message) {
    print("Email sent to $email: $message");
  }
}

// Concrete Observer: SmsSubscriber
class SmsSubscriber implements Observer {
  final String phoneNumber;

  SmsSubscriber(this.phoneNumber);

  @override
  void update(String message) {
    print("SMS sent to $phoneNumber: $message");
  }
}

// Subject (Observable)
class NewsPublisher {
  final List<Observer> _subscribers = [];

  void subscribe(Observer subscriber) {
    _subscribers.add(subscriber);
  }

  void unsubscribe(Observer subscriber) {
    _subscribers.remove(subscriber);
  }

  void notifySubscribers(String news) {
    for (final subscriber in _subscribers) {
      subscriber.update(news);
    }
  }
}

void main() {
  final newsPublisher = NewsPublisher();

  final emailSubscriber = EmailSubscriber("john@example.com");
  final smsSubscriber = SmsSubscriber("+1234567890");

  newsPublisher.subscribe(emailSubscriber);
  newsPublisher.subscribe(smsSubscriber);

  newsPublisher.notifySubscribers("Breaking news: Dart is awesome!");

  newsPublisher.unsubscribe(emailSubscriber);

  newsPublisher.notifySubscribers("More updates: Flutter is gaining popularity!");
}

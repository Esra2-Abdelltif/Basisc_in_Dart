main() {
  PostOffice postOffice = PostOffice([]);
  Person p1 = Person("Esraa");
  Person p2 = Person("Ahmed");
  Person p3 = Person("Khaled");

  postOffice.Attach(p1);
  postOffice.Attach(p2);

  postOffice.addMail(Mail("Esraa", "Alger", "Dart"));
  postOffice.addMail(Mail("Esraa", "Alger", "Kotlin"));
  postOffice.addMail(Mail("Ahmed", "Alger", "Java"));
}

class PostOffice implements Subject {
  final List<Mail> allMail;
  List<Observer> observers = [];

  PostOffice(this.allMail);

  addMail(Mail mail) {
    print("********************");
    allMail.add(mail);
    Notify();
  }

  @override
  Attach(Observer observer) {
    observers.add(observer);
  }

  @override
  Detach(Observer observer) {
    observers.remove(observer);
  }

  @override
  Notify() {
    for (Observer op in observers) {
      op.update(this);
    }
  }
}

class Mail {
  final String receiver, address, message;

  Mail(this.receiver, this.address, this.message);
}

class Person implements Observer {
  final String name;

  Person(this.name);

  @override
  update(Subject subject) {
    if (subject is PostOffice) {
      for (Mail mail in subject.allMail) {
        if (mail.receiver == name) {
          print("NEW MAIL [${mail.receiver}]: ${mail.message}");
        }
      }
    }
  }
}

///Observer Pattern

abstract class Subject {
  Attach(Observer observer);

  Detach(Observer observer);

  Notify();
}

abstract class Observer {
  update(Subject subject);
}
/// The Facade pattern allows to create a unified and simplified interface
/// for complex subsystems, promoting loose coupling and ease of use.
library;

// Subsystem classes
class SecuritySystem {
  void enable() => print("SecuritySystem enabled");
  void disable() => print("SecuritySystem disabled");
}

class Intercom {
  void on() => print("Intercom ready");
  void off() => print("Intercom standing by");
}

class WindowShades {
  void open() => print("WindowShades open");
  void close() => print("WindowShades closed");
}

class Lights {
  void on() => print("Lights on");
  void off() => print("Lights off");
}

// Facade class
class SmartHome {
  final SecuritySystem securitySystem = SecuritySystem();
  final Intercom intercom = Intercom();
  final WindowShades windowShades = WindowShades();
  final Lights lights = Lights();

  void activateHome() {
    securitySystem.enable();
    intercom.on();
    windowShades.open();
    lights.on();
  }

  void deactivateHome() {
    securitySystem.disable();
    intercom.off();
    windowShades.close();
    lights.off();
  }
}

void main() {
  final myHome = SmartHome();

  print("Activating smart home...");
  myHome.activateHome();

  print("\nDeactivating smart home...");
  myHome.deactivateHome();
}

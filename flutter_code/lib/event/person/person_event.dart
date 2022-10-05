import 'package:event_bus/event_bus.dart';

class PersonEvent {
  String name;
  String avatar;

  PersonEvent(this.avatar, this.name);
}

EventBus eventBus = EventBus();

library models;

import 'package:web_ui/web_ui.dart';
import '../persistable_html.dart';
import 'package:web_ui/observe/observable.dart' as __observe;


@observable
class Person extends Object with Persistable, Observable {
  String __$firstName;
  String get firstName {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'firstName');
    }
    return __$firstName;
  }
  set firstName(String value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'firstName',
          __$firstName, value);
    }
    __$firstName = value;
  }
  String __$lastName;
  String get lastName {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'lastName');
    }
    return __$lastName;
  }
  set lastName(String value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'lastName',
          __$lastName, value);
    }
    __$lastName = value;
  }
  
  // Web UI can't deal with null fields yet
  int __$age = 0;
  int get age {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'age');
    }
    return __$age;
  }
  set age(int value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'age',
          __$age, value);
    }
    __$age = value;
  }

  // TODO: do this with mirrors
  Map toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'age': age
    };
  }
  
  // We need this until we have filters in Web UI.
  // See also bind-value-as-number
  double get ageAsDouble => age.toDouble();
  
  void set ageAsDouble(double a) {
    age = a.toInt();
  }
  
  String toString() => '$firstName $lastName';
}
//# sourceMappingURL=models.dart.map
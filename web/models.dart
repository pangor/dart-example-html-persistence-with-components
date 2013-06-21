library models;

import 'package:web_ui/web_ui.dart';
import 'persistable_html.dart';

class Person extends Object with Persistable {
  String firstName;
  String lastName;
  
  // Web UI can't deal with null fields yet
  int age = 0;

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
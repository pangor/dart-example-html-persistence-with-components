library test;

import 'persistable_html.dart';
import 'models.dart';
import 'package:web_ui/web_ui.dart';
import 'dart:html';

// We need to get our database into memory and into
// something that can be observed.

@observable List<Person> people = toObservable([]);

@observable
Person newPerson = new Person();

addPerson() {
  return newPerson.store().then((_) {
    people.add(newPerson);
    newPerson = new Person();
  })
  .catchError(print);
}

remove(Person p) {
  return p.delete().then((_) {
    people.remove(p);
  });
}

update(Person p) {
  return p.store().then((_) {
    query('#msg-${p.dbId}').text = 'Updated';
  });
}

clear() {
  return Persistable.clear().then((_) {
    people.clear();
  });
}

main() {
  init('test2', 'test2').then((_) {
    Persistable.all(Person).toList().then((List<Person> ps) {
      people.addAll(ps);
    });
  });
}
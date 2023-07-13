enum Event {
  toggleCheckbox,
  validate,
}

abstract class FormElement {
  String? tag;
  final Form _form;

  Form get form => _form;

  FormElement({required Form form, this.tag}) : _form = form;

  /// Validate the form element
  bool validate();
}

abstract class Form {
  // final List<FormElement> _elements;

  // Form({required List<FormElement> elements}) : _elements = elements;

  /// handles form elements' events.
  void notify(FormElement sender, Event event);
  // bool validate() {
  //   return !_elements.any((formElement) => formElement.validate() == false);
  // }
}

/// Simple Checkbox
class Checkbox extends FormElement {
  bool _checked = false;

  Checkbox({required Form form, super.tag}) : super(form: form);

  bool get checked => _checked;

  /// A seeter for the checkbox state.
  set checked(bool value) {
    _checked = value;
    _form.notify(this, Event.toggleCheckbox);
  }

  @override
  bool validate() {
    return _checked;
  }
}

class TextInput extends FormElement {
  String _value = '';

  TextInput({required super.form, super.tag});

  set value(String value) {
    _value = value;
    // _form.notify(this, Event.validate);
  }

  @override
  bool validate() {
    return _value.isNotEmpty;
  }
}

class VisibilityTextInput extends TextInput {
  bool _visiblity = false;

  VisibilityTextInput({required super.form, super.tag});

  void toggleVisibility() {
    _visiblity = !_visiblity;
  }

  bool get visibility => _visiblity;
}

// class Visibility {
//   FormElement element;
//   bool visible;

// }
// class SubmitButton {
//   final Form _form;
//   SubmitButton({required Form form}): _form = form;

//   void submit() {
//     _form.notify(this, Event.submit);
//   }
// }

class MyForm extends Form {
  late VisibilityTextInput textInput; // = TextInput(form: this);
  late Checkbox checkbox; // = Checkbox(form: this);
  MyForm() {
    //{required super.elements}
    textInput = VisibilityTextInput(form: this, tag: 'test');
    checkbox = Checkbox(form: this, tag: 'test');
  }

  @override
  void notify(FormElement sender, Event event) {
    if (sender.tag == 'test') {
      switch (event) {
        case Event.toggleCheckbox:
          textInput.toggleVisibility();
          // print(textInput._visiblity);
          break;
        case Event.validate:
          break;
      }
    }
  }
}



// // class FormContoller{
// //   bool validate()

// //   print('hello world
// //   ')
// //   }

// abstract class ChatRoomMediator {
//   String showMessage(User user, String message);
// }

// class ChatRoom implements ChatRoomMediator {
//   @override
//   String showMessage(User user, String message) {
//     // String dateTime = DateFormat("yyyy-MM-dd HH:mm:ss").format(DateTime.now());
//     String sender = user._name;
//     return "[ $sender ]: $message";//$dateTime 
//   }
// }

// class User {
//   final String _name;
//   final ChatRoomMediator _mediator;

//   User(this._name, this._mediator);

//   String send(String message) => _mediator.showMessage(this, message);
// }
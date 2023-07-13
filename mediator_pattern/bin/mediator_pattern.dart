import 'package:mediator_pattern/form.dart';

void main() {
  // ChatRoomMediator mediator = ChatRoom();

  // User ahmed = User('ahmed', mediator);
  // User hamed = User('hamed', mediator);
  // User hassan = User('hassan', mediator);

  // hamed.send('hello all');

  final myForm = MyForm();
  Checkbox c = Checkbox(form: myForm);
  print(myForm.textInput.visibility);
  myForm.checkbox.checked = true;
  print(myForm.textInput.visibility);
}

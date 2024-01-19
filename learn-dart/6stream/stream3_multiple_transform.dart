/*
<h4>Enter your email</h4>
<input/>
<div style="color: red;"></div>
*/

import 'dart:html';
import 'dart:async';

void main() {
  final DivElement div = querySelector('div') as DivElement;
  final InputElement input = querySelector('input') as InputElement;

  final validator =
      StreamTransformer.fromHandlers(handleData: (String inputValue, sink) {
    if (inputValue.contains('@')) {
      sink.add(inputValue);
    } else {
      sink.addError('Enter a valid email');
    }
  });
  final validateGmail =
      StreamTransformer.fromHandlers(handleData: (String inputValue, sink) {
    if (inputValue.contains('@gmail')) {
      sink.add(inputValue);
    } else {
      sink.addError('Entered email is not gmail');
    }
  });

  input.onInput
      .map((dynamic event) => event.target.value as String)
      .transform(validator)
      .transform(validateGmail)
      .listen(
          (inputValue) =>
              print('Email $inputValue looks valid'), //div.innerHtml = '',
          onError: (err) => div.innerHtml = err);
}

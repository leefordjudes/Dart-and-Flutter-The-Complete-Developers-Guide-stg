// use dart pad
/*
<h4>Guess the Word!</h4>
<input/>
<button>Guess!</button>
*/
import 'dart:html';

void main() {
  final ButtonElement button = querySelector('button') as ButtonElement;
  final InputElement input = querySelector('input') as InputElement;

//   button.onClick
//     .timeout(
//       new Duration(seconds: 1),
//       onTimeout: (sink) => sink.addError('You Lost!!!')
//     )
//     .listen(
//       (event) {print('ok');},
//       onError: (err) => print(err)
//     );

  button.onClick.take(4).where((event) => input.value == 'banana').listen(
      (event) => print('you got it!'),
      onDone: () => print('Nope, bad guesses.'));
}

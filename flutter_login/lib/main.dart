import 'package:flutter/foundation.dart' show debugPrintThrottled;

// if no wrapWidth is provided then automatically set it to 70 characters
final debugPrint = (String? message, {int? wrapWidth}) {
  debugPrintThrottled(message, wrapWidth: wrapWidth ?? 70);
};

void main() {
  var message = "Hello logger!";
  debugPrint(message);

  var longMessage = "A very long line that is automatically wrapped by the function so that it does not get truncated or dropped.";
  debugPrint(longMessage);
}
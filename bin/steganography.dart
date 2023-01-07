import 'dart:io';
import 'dart:typed_data';
import 'package:collection/collection.dart';
// ignore: slash_for_doc_comments
/**
   * Steganography Needs :
   * You will need to implement the algorithms that are used to hide the message in the carrier file and extract the message from the carrier file.
   * There are many different techniques and algorithms that can be used for steganography, 
   * so you will need to choose the ones that are most suitable for your needs.
   *  
 */

void main() async {
  // Load image as Uint8List.
  final imageBytes = File('lama.jpg').readAsBytesSync();
  // Initialize message to encode.
  const message = "hello";
  // Get bit representation of message.
  final messageBits = getMessageBits(message);
  // Encode image with secret text.
  final encodedImageUintList = encodeImageWithMessage(imageBytes, messageBits);
  // Save decoded image
  File('out.jpg').writeAsBytesSync(encodedImageUintList);
  // Decode image
  final decodedMessage = decodeImage(encodedImageUintList);
  // Print message
  // print(decodedMessage);
}

List<int> getMessageBits(String message) {
  return message.codeUnits
      .expand((element) => [
            (element >> 7) & 1,
            (element >> 6) & 1,
            (element >> 5) & 1,
            (element >> 4) & 1,
            (element >> 3) & 1,
            (element >> 2) & 1,
            (element >> 1) & 1,
            element & 1,
          ])
      .toList();
}

Uint8List encodeImageWithMessage(Uint8List imageBytes, List<int> messageBits) {
  final messageDelimitedBits = addDelimeter(messageBits);
  int count = 0;
  for (var i = 100; i < imageBytes.length; i++) {
    if (count == messageBits.length - 1) break;
    imageBytes[i] = (imageBytes[i] & 0) | messageDelimitedBits[count];
    count++;
  }
  print(imageBytes.getRange(150, 190).join(''));
  return imageBytes;
}

List<int> addDelimeter(List<int> messageBits) {
  messageBits.addAll('<STEG>'.codeUnits.expand((element) => [
        (element >> 7) & 1,
        (element >> 6) & 1,
        (element >> 5) & 1,
        (element >> 4) & 1,
        (element >> 3) & 1,
        (element >> 2) & 1,
        (element >> 1) & 1,
        element & 1,
      ]));
  return messageBits.toList();
}

String decodeImage(Uint8List encodedImageBytes) {
  var message = '';
  for (int i = 100; i < 140; i++) {
    // print(String.fromCharCode(int.parse(encodedImageBytes[i].toRadixString(2), radix: 2)));
    message += (encodedImageBytes[i] & 1).toString();
  }
  final messageByteArray = message.split('').slices(8);
  print(messageByteArray);
  return message.toString();
}

void decodeMessage() {}

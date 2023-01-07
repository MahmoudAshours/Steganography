## Steganography 
It is a technique that has been used throughout **history** to conceal information. It has been used in various forms, such as writing messages on papyrus and hiding them in wax tablets, carving messages into wood or stone and painting over them, or tattooing messages onto the scalp and shaving the hair off.

## History
One of the earliest known examples of steganography is from ancient **Greece**, where a message was written on a piece of papyrus, rolled up and tied to the leg of a messenger pigeon. The pigeon was then sent to the recipient, who would unroll the papyrus and read the message.

## WWII
Steganography has also been used more recently, for example during World War II to transmit messages between spies, or in the digital age to hide messages within digital media. It is still used today as a method of hiding sensitive information and communication.

# Steps :
- A sender encodes a secret message within an ordinary message, such as a text, image, audio, or video file.

- The ordinary message, with the hidden secret message, is transmitted to the recipient.
The recipient receives the ordinary message and decodes the hidden secret message using a secret key or algorithm.

- Steganography can be used to hide sensitive information, such as passwords, confidential documents, or messages, within seemingly innocent or harmless media. It is often used to evade detection and avoid censorship or surveillance.

# Steganography using LSB

Least Significant Bit (LSB) steganography is a method of hiding a message within a digital image by replacing the least significant bit (LSB) of the pixels in the image with bits of the message. The LSB of a pixel is the least significant digit in the binary representation of the pixel value.

For example, if the pixel value of an image is represented as an 8-bit binary number (0 to 255 in decimal), the LSB would be the rightmost (least significant) bit. If the pixel value is 100 in decimal, it would be represented as 01100100 in binary, with the LSB being the rightmost (least significant) bit (0).

To hide a message using LSB steganography, the sender would replace the LSB of the pixel values with bits of the message, and send the modified image to the recipient. The recipient would then extract the message by reversing the process and reading the LSB of the pixel values.

LSB steganography is a simple and effective method of hiding a message within an image, but it is not very secure, as the modified image may still look the same as the original image, and the message can be easily detected or extracted by someone who knows how to use steganalysis tools.
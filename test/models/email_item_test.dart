import 'package:flutter_test/flutter_test.dart';
import 'package:top_movies_flutter/index.dart';

import '../helpers/data.dart';

void main() {
  group('Email Item Test', () {
    test('supports value comparison', () async {
      expect(mockEmails.first, mockEmails.first);
    });

    test('date should be formatted as MMM dd format', () async {
      final message = Email(
        sender: 'Ralph Edwards',
        subject: 'The results to our user testing',
        messagePreview: 'What is the progress on that task?',
        isFavorite: false,
        date: DateTime.parse('2022-04-10 20:18:04Z'),
        image: '',
        attachments: [],
      );
      expect(message.getFormattedDate(), 'Apr 10');
    });

    test('should return N/A when sender has empty name', () async {
      final name = '';
      final expected = 'N/A';
      final message = Email(
        sender: name,
        subject: 'The results to our user testing',
        messagePreview: 'What is the progress on that task?',
        isFavorite: false,
        date: DateTime.parse('2022-04-10 20:18:04Z'),
        image: '',
        attachments: [],
      );
      expect(message.getFormattedName(), expected);
    });

    test('should return the capital letter of the name', () async {
      final name = 'Ralph';
      final expected = 'R';
      final message = Email(
        sender: name,
        subject: 'The results to our user testing',
        messagePreview: 'What is the progress on that task?',
        isFavorite: false,
        date: DateTime.parse('2022-04-10 20:18:04Z'),
        image: '',
        attachments: [],
      );
      expect(message.getFormattedName(), expected);
    });

    test('should return the capital letter of the name and surname', () async {
      final name = 'Ralph Edwards';
      final expected = 'RE';
      final message = Email(
        sender: name,
        subject: 'The results to our user testing',
        messagePreview: 'What is the progress on that task?',
        isFavorite: false,
        date: DateTime.parse('2022-04-10 20:18:04Z'),
        image: '',
        attachments: [],
      );
      expect(message.getFormattedName(), expected);
    });
  });
}

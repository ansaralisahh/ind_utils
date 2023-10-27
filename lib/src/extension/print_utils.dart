class Log {
  /// Print Value No Need to Install other Package for Print value as a Colour full
  w(Object? text) {
    const int chunkSize = 300;
    final lines = <String>[];
    for (int i = 0; i < text!.toString().length; i += chunkSize) {
      int end = i + chunkSize;
      if (end > text.toString().length) {
        end = text.toString().length;
      }
      final chunk = text.toString().substring(i, end);
      lines.add(chunk);
    }
    final singleLineText = lines.join('');
    final stackTraceString = StackTrace.current.toString().trim();
    final line = stackTraceString.split('\n');
    for (int i = 0; i < line.length && i < 1; i++) {
      print('\x1B[33m ${line[1]}\x1B[0m');
    }
    print('\x1B[1;33m${"⚠️: $singleLineText"}\x1B[0m');
  }

  d(Object? text) {
    const int chunkSize = 300;
    final lines = <String>[];
    for (int i = 0; i < text!.toString().length; i += chunkSize) {
      int end = i + chunkSize;
      if (end > text.toString().length) {
        end = text.toString().length;
      }
      final chunk = text.toString().substring(i, end);
      lines.add(chunk);
    }
    final singleLineText = lines.join('');
    final stackTraceString = StackTrace.current.toString().trim();
    final line = stackTraceString.split('\n');
    for (int i = 0; i < line.length && i < 1; i++) {
      print('\x1B[1;3m ${line[1]}\x1B[0m');
    }
    print('\x1B[1;3m${"🐛 : $singleLineText"}\x1B[0m');
  }

  e(Object? text) {
    const int chunkSize = 300;
    final lines = <String>[];
    for (int i = 0; i < text!.toString().length; i += chunkSize) {
      int end = i + chunkSize;
      if (end > text.toString().length) {
        end = text.toString().length;
      }
      final chunk = text.toString().substring(i, end);
      lines.add(chunk);
    }
    final singleLineText = lines.join('');
    final stackTraceString = StackTrace.current.toString().trim();
    final line = stackTraceString.split('\n');
    for (int i = 0; i < line.length && i < 1; i++) {
      print('\x1B[1;31m ${line[1]}\x1B[0m');
    }
    print('\x1B[1;31m${"⛔ : $singleLineText"}\x1B[0m');
  }

  url(Object? text) {
    const int chunkSize = 300;
    final lines = <String>[];
    for (int i = 0; i < text!.toString().length; i += chunkSize) {
      int end = i + chunkSize;
      if (end > text.toString().length) {
        end = text.toString().length;
      }
      final chunk = text.toString().substring(i, end);
      lines.add(chunk);
    }
    final singleLineText = lines.join('');
    final stackTraceString = StackTrace.current.toString().trim();
    final line = stackTraceString.split('\n');
    for (int i = 0; i < line.length && i < 1; i++) {
      print('\x1B[1;33m ${line[1]}\x1B[0m');
    }
    print('\x1B[1;33m${"📌: $singleLineText"}\x1B[0m');
  }

  i(Object? text) {
    const int chunkSize = 300;
    final lines = <String>[];
    for (int i = 0; i < text!.toString().length; i += chunkSize) {
      int end = i + chunkSize;
      if (end > text.toString().length) {
        end = text.toString().length;
      }
      final chunk = text.toString().substring(i, end);
      lines.add(chunk);
    }
    final singleLineText = lines.join('');
    final stackTraceString = StackTrace.current.toString().trim();
    final line = stackTraceString.split('\n');
    for (int i = 0; i < line.length && i < 1; i++) {
      print('\x1B[1;32m ${line[1]}\x1B[0m');
    }
    print('\x1B[1;32m💡: $singleLineText\x1B[0m');
  }
}

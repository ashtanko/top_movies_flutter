import 'package:logger/logger.dart';
import 'package:stack_trace/stack_trace.dart';

class _StackTracePrettyPrinter extends LogPrinter {
  _StackTracePrettyPrinter(this._prettyPrinter);

  final PrettyPrinter _prettyPrinter;

  @override
  List<String> log(LogEvent event) => _prettyPrinter.log(
        LogEvent(
          event.level,
          event.message,
          event.error,
          Chain.forTrace(event.stackTrace ?? StackTrace.empty).terse,
        ),
      );
}

Logger createLogger({
  required Level level,
  LogOutput? output,
  bool colors = true,
}) =>
    Logger(
      filter: ProductionFilter(),
      printer: _StackTracePrettyPrinter(
        PrettyPrinter(
          colors: colors,
          methodCount: 999,
          errorMethodCount: 999,
        ),
      ),
      output: output,
      level: level,
    );

import 'package:finance_tracker_app/bootstrap.dart';
import 'package:finance_tracker_app/src/app/bloc_observer.dart';
import 'package:finance_tracker_app/src/app/finance_tracker_app.dart';

void main() {
  bootStrap(
    () => const FinanceTrackerApp(),
    blocObserver: FinanceTrackBlocObserver(),
  );
}

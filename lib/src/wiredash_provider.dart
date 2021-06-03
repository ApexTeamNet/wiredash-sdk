import 'package:flutter/widgets.dart';
import 'package:wiredash/src/feedback/wiredash_model.dart';

class WiredashProvider extends InheritedNotifier<WiredashModel> {
  const WiredashProvider({
    Key? key,
    required WiredashModel wiredashModel,
    required Widget child,
  }) : super(key: key, notifier: wiredashModel, child: child);

  static WiredashProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<WiredashProvider>();
  }
}

extension WiredashExtensions on BuildContext {
  WiredashModel? get wiredashModel => WiredashProvider.of(this)?.notifier;
}

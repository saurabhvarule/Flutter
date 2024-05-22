abstract class Widget {
  const Widget();

  Widget build(BuildContext context);
}

class MaterialApp extends Widget {
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}

abstract class StatelessWidget extends Widget {
  const StatelessWidget();
  Widget build(BuildContext context);
}

class BuildContext {
  BuildContext() {
    print("In BuildContext constructor");
  }
}

void runApp(Widget obj) {
  BuildContext objVal = BuildContext();
  obj.build(objVal);
}

import 'package:flutter/widgets.dart';

/// MatchCondition will return the Widget of the Case that has the first positive condition.
class Condition extends StatelessWidget {
  /// Creates a new MatchCondition
  Condition({@required this.cases, @required this.defaultCase});

  /// The cases to test against.
  final List<Case> cases;

  /// The Widget to show when non of the cases match.
  final Widget defaultCase;

  @override
  Widget build(BuildContext context) {
    for (var c in cases) {
      if (c.expression) return c.widget;
    }
    return defaultCase;
  }
}

class Case {
  final bool expression;
  final Widget widget;

  Case({@required this.expression, @required this.widget});
}

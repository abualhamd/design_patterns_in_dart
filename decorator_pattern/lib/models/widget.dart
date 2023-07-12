abstract class Widget {
  String draw();
}

class Text implements Widget {
  @override
  String draw() {
    return 'draw Text';
  }
}

class Container implements Widget {
  final Widget _child;

  Container({required Widget child}) : _child = child;

  @override
  String draw() {
    return 'draw ${_child.draw()} in Container';
  }
}

class Column implements Widget {
  final List<Widget> _children;

  Column({required List<Widget> children}) : _children = children;
  @override
  String draw() {
    String result = '';
    for (final widget in _children) {
      result += '${widget.draw()} in column\n';
    }

    return result;
  }
}

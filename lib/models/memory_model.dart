class MemoryModel {
  String _value = '0';

  String get value => _value;

  void allClear() {
    _value = '0';
  }

  void applyCommand(String comand) {
    if (comand == 'AC') {
      allClear();
    } else if (comand == '+/-') {
      _value = _value.startsWith('-') ? _value.substring(1) : '-$_value';
    } else if (comand == '%') {
      _value = (_value == '0')
          ? '0'
          : '${(double.parse(_value) / 100).toStringAsFixed(2)}';
    } else if (comand == '.') {
      if (_value.contains('.')) {
        return;
      }
      _value += '.';
    } else if (comand == '=') {
      //_value = eval(_value).toString();
    } else {
      if (_value == '0') {
        _value = comand;
      } else {
        _value += comand;
      }
    }
  }
}

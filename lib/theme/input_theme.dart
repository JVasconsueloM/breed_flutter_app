part of 'theme.dart';

OutlineInputBorder _inputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(_KTheme.inputBorderRadius),
  borderSide: const BorderSide(
    color: _KColor.linesGrey,
    width: _KTheme.inputBorderWidth,
    style: _KTheme.inputBorderSide,
  ),
);

OutlineInputBorder _inputFocusedBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(_KTheme.inputBorderRadius),
  borderSide: const BorderSide(
    color: _KColor.linesGreyFocused,
    width: _KTheme.inputBorderWidth,
    style: _KTheme.inputBorderSide,
  ),
);

OutlineInputBorder _inputFocusedErrorBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(_KTheme.inputBorderRadius),
  borderSide: const BorderSide(
    color: _KColor.linesGreyFocused,
    width: _KTheme.inputBorderWidth,
    style: _KTheme.inputBorderSide,
  ),
);

Color _fillColor = MaterialStateColor.resolveWith((Set<MaterialState> states) {
  return _KColor.darker;
});

InputDecorationTheme _inputTheme = InputDecorationTheme(
  contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
  border: _inputBorder,
  enabledBorder: _inputBorder,
  focusedBorder: _inputFocusedBorder,
  focusedErrorBorder: _inputFocusedErrorBorder,
  fillColor: _fillColor,
  filled: true,
  hintStyle: _textTheme.labelMedium,
  alignLabelWithHint: true,
);

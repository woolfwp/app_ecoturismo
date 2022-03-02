bool isValidName(String text) {
  return RegExp(r"^[a-zA-ZñÑá-ú]+$").hasMatch(text);
}

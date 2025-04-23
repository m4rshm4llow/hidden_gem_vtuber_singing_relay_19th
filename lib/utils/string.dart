extension StringX on String {
  double toSeconds() {
    List<String> parts = split(':');
    if (parts.length != 3) {
      throw FormatException('Invalid time format. Expected HH:MM:SS');
    }

    double hours = double.parse(parts[0]);
    double minutes = double.parse(parts[1]);
    double seconds = double.parse(parts[2]);

    return hours * 3600 + minutes * 60 + seconds;
  }
}

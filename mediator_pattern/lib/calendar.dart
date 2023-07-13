class GetToday {

  int getDay() {
    DateTime now = DateTime.now();
    int today = now.weekday;
    return today;
  }
}

extension DoubleUtils on dynamic {
  /// Make Double of dynamic Value
  double makeDouble() {
    if (this == null) {
      return 0.0;
    }
    if (this is String && this.isNotEmpty) {
      try {
        return double.parse(this);
      } catch (e) {
        var list = this.split(" ");
        if (list.isNotEmpty) {
          return double.parse(list.first.isEmpty ? "0" : list.first);
        }
      }
    } else if (this is int) {
      return this.toDouble();
    } else if (this is double) {
      return this;
    }
    return 0.0;
  }
  /// Make Int of dynamic Value

  int makeInt() {
    if (this is String && this.isNotEmpty) {
      return int.parse(this);
    } else if (this is double) {
      return this.toInt();
    } else if (this is int) {
      return this;
    } else if (this is bool) {
      return this ? 1 : 0;
    }
    return 0;
  }

  String distanceFormat() {
    String distanceStr = "0";
    if (this != null) {
      var kmDis = makeDouble();
      distanceStr = kmDis < 1 ? "1" : kmDis.toStringAsFixed(2);
    }
    return "$distanceStr KM";
  }
}

class WateringSchedule {
  String id;
  String plantId;
  DateTime nextWateringDate;

  WateringSchedule({required this.id, required this.plantId, required this.nextWateringDate});

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'plantId': plantId,
      'nextWateringDate': nextWateringDate.toIso8601String(),
    };
  }

  factory WateringSchedule.fromJson(Map<String, dynamic> json) {
    return WateringSchedule(
      id: json['id'],
      plantId: json['plantId'],
      nextWateringDate: DateTime.parse(json['nextWateringDate']),
    );
  }
}
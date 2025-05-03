class ResourceDataDto {
  final int id;
  final String name;
  final int year;
  final String color;
  final String pantoneValue;

  ResourceDataDto({
    required this.id,
    required this.name,
    required this.year,
    required this.color,
    required this.pantoneValue,
  });

  factory ResourceDataDto.fromJson(Map<String, dynamic> json) {
    return ResourceDataDto(
      id: json['id'],
      name: json['name'],
      year: json['year'],
      color: json['color'],
      pantoneValue: json['pantone_value'],
    );
  }
}

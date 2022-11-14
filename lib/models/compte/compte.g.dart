// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compte.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CompteAdapter extends TypeAdapter<Compte> {
  @override
  final int typeId = 0;

  @override
  Compte read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Compte(
      fields[0] as String,
      fields[1] as String,
      fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Compte obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.num)
      ..writeByte(1)
      ..write(obj.nom)
      ..writeByte(2)
      ..write(obj.sold);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CompteAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

import 'package:flutter_test/flutter_test.dart';
import 'package:hitung_karakter/main.dart'; // Ganti nama_project dengan nama proyek Anda

void main() {
  test('Menghitung Jumlah Karakter 1', () {
    expect(hitungJumlahKarakter('Hello, World!'), 13);
    
  });
  test('Menghitung Jumlah Karakter 2', () {
    expect(hitungJumlahKarakter('Flutter'), 7);
    
  });
  test('Menghitung Jumlah Karakter 3', () {
    expect(hitungJumlahKarakter('aku anak umy'), 12);
    
  });
  test('Menghitung Jumlah Karakter 4', () {
    expect(hitungJumlahKarakter('aku anak ti'), 11);
    
  });
}
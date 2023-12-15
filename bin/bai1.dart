import 'dart:io';

void main() {
  double baiKtra, diemGiuaki, diemCuoicung, diemTrungBinh;
  String ketQuaXepLoai = "";
  stdout.write("nhập điểm bài kiểm tra:");
  baiKtra = double.parse(stdin.readLineSync()!);
  stdout.write("nhập điểm giữa kì:");
  diemGiuaki = double.parse(stdin.readLineSync()!);
  stdout.write("nhập điểm cuối cùng:");
  diemCuoicung = double.parse(stdin.readLineSync()!);
  if ((baiKtra < 0 || baiKtra > 10) ||
      (diemGiuaki < 0 || diemGiuaki > 10) ||
      (diemCuoicung < 0 || diemCuoicung > 10)) {
  } else {
    diemTrungBinh = ((baiKtra + diemGiuaki + diemCuoicung) / 3);
    if (diemTrungBinh >= 9.0) {
      ketQuaXepLoai = "Loại A";
    } else if ((diemTrungBinh >= 70) && (diemTrungBinh < 9.0)) {
      ketQuaXepLoai = "Loại B";
    } else if ((diemTrungBinh >= 5.0) && (diemTrungBinh < 7.0)) {
      ketQuaXepLoai = "Loại C";
    } else if ((diemTrungBinh < 5.0) && (diemTrungBinh < 5.0)) {
      ketQuaXepLoai = "Loại D";
    }
    print("Điểm trung bình : $diemTrungBinh");
  }
  print("Kết quả xếp loại môn học là : $ketQuaXepLoai");
}

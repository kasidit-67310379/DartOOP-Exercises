class UserProfile {
  String username;

  String _password = "";
  int _age = 0;

  UserProfile(this.username);

  set password(String newPassword) {
    if (newPassword.length < 6) {
      print("❌ ข้อผิดพลาด: รหัสผ่านต้องมีความยาวอย่างน้อย 6 ตัวอักษร");
    } else {
      _password = newPassword;
      print("✅ อัปเดตรหัสผ่านเรียบร้อยแล้ว");
    }
  }
  int get age {
    return _age;
  }
  set age(int newAge) {
    if (newAge < 13) {
      print("❌ ข้อผิดพลาด: ต้องอายุ 13 ปีขึ้นไปจึงจะใช้งานแอปได้");
    } else if (newAge > 120) {
      print("❌ ข้อผิดพลาด: อายุไม่ถูกต้อง");
    } else {
      _age = newAge;
      print("✅ บันทึกอายุแล้ว");
    }
  }
}

void main() {
  var myProfile = UserProfile("nu_student_26");

  print("=== ทดสอบ ENCAPSULATION ของรหัสผ่าน ===\n");

  myProfile.password = "123";
  myProfile.password = "secureFlutterPass99";

  print("\n=== ทดสอบ ENCAPSULATION ของอายุ ===\n");

  myProfile.age = 10;

  myProfile.age = 20;

  print("อายุของผู้ใช้คือ ${myProfile.age} ปี");
}

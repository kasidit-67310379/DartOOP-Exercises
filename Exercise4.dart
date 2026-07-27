mixin CloudLogger {
  void logToCloud(String message) {
    print("☁️ [Cloud Log]: $message");
  }
}

class AppDataCache<T> with CloudLogger {
  T? cachedData;

  void saveData(T newData) {
    cachedData = newData;
    logToCloud("บันทึกข้อมูลแล้ว: $cachedData");
  }

  void clearData() {
    cachedData = null;
    logToCloud("ล้างข้อมูลในแคชแล้ว");
  }
}

void main() {
  print("=== กำลังแคชข้อมูลแบบสตริง (User Token) ===\n");

  AppDataCache<String> tokenCache = AppDataCache<String>();

  tokenCache.saveData("ABC-123");
  
  tokenCache.clearData();

  print("\n=== กำลังแคชข้อมูลแบบตัวเลข (High Score) ===\n");

  AppDataCache<int> scoreCache = AppDataCache<int>();

  scoreCache.saveData(9999);
}

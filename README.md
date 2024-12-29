# 🚀 RISC-V Mikroişlemci Tasarımı

Bu proje, bir **RISC-V mikroişlemci** tasarımını gerçekleştirmek amacıyla geliştirilmiştir. Proje kapsamında SystemVerilog dilinde, mikroişlemci mimarisine uygun temel modüller tasarlanmış ve entegre edilmiştir. 

📌 **Özellikler:**
- Modüler tasarım.
- Temel bileşenler: ALU, Veri Belleği, Komut Belleği, Kayıt Dosyası.
- SystemVerilog ile yazılmıştır.
- Vivado simülasyonu ile doğrulama yapılmıştır.

📂 **Ana Modüller:**
- **ALU (Arithmetic Logic Unit):** Aritmetik ve mantıksal işlemler.
- **DataMemory:** Veri okuma/yazma işlemleri.
- **InstructionMemory:** Komut belleği erişimi.
- **MiniRegisterFile:** Register dosyası işlemleri.
- **NextPCLogic:** Bir sonraki komut adresi hesaplama.
- **SignExtender:** Immediate değer genişletme.

💻 **Simülasyon ve Doğrulama:**
- Vivado kullanılarak işlevsellik doğrulanmıştır.
- Temel komut yürütme ve bellek erişimi başarıyla test edilmiştir.

📌 Daha fazla bilgi için SystemVerilog dosyalarını inceleyebilir ve katkı sağlamak için PR gönderebilirsiniz. 😊

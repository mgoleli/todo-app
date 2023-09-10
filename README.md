## Features

- 2 ayrı Provider'dan gelen to-do iş bilgilerini çekerek development ekibine haftalık 
olarak paylaştıran ve ekrana çıktısını veren bir web uygulaması geliştirildi. Developer’ların haftalık 45 saat çalışma saatleri dikkate alınarak Developer yeteneğine göre işin zorluğu ve belirlenen iş tamamlama saatine göre atandı.
- Projede Laravel 8.8 sürümü kullanıldı.
- Provivedarlardan veri çekip DB'ye kaydetme işlemleri için Factory Tasarım Kalıbına uyarak geliştirmeler yapıld. Her yeni eklenecek Provider için class oluşturmak ve tanıtmak yeterli olacaktır.
- İşler ve Developer arasında  many to many ilişkisi kullanıldı.
- Hangi Provider'ın kullanılacağı config yapılandırması üzerinden yapıldı default olarak Provider1 tanıtıldı. (Api.php)
- Proverdarlardan veri çekerlen Laravel'in Guzzle Http istemcisi kullanıldı. Veriler Laravel Command(Console) kullanılarak çekildi. (php artisan veri:ekle komutu ile doğrudan veritabanına kayıt işlemi gerçekleşiyor)
- Önyüzde Bootstrap kullanılarak veriler ekrana yansıtıldı. En üste toplam işin en kaç haç haftada bitebileceği değer  altında ise Developer ve İş bilgilerin yer aldığı tablo bulunmakta.
- Kullanılan DB genel dizine eklendi. (todo_app.sql)
- Algoritma; İşin zorluğu ve teslim süresi dikkate alınarak seviyesi en zor ve teslim süresi kısa olanlar öncelikli olarak sıralandı, Developer tarafında ise en yetenekli Developarlar en önce gelecek şekilde sorgulandı. Birim zamanda en çok iş yapan Developar'a (DEV5) haftalık 45 saati aşmayacak şekilde işler atandı sonra aynı haftada birim zamanda en çok iş yapan ikinci Developer(DEV4) atama yapıldı. Bu formatta en sondaki Developera kadar devam etti. Birinci haftada işler tamamlanmayınca kalan işler ikinci haftaya devredildi. İkinci hafta ise tekrar aynı işlemler devam ederek Developerlar atanan tüm işleri 2 hafta içerisinde tamamladı.
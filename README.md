Installation<br>
Python'ı indirmek için:<br>
https://www.python.org/downloads/

Gerekli paketleri toplu bir şekilde şöyle kurabilirsin.<br>
pip install -r requirements.txt<br>
Tek tek kurmak için requirements dosyasındaki kütüphaneleri tek tek kurabilirsiniz.

Chrome driver indir, zipten v.s. çıkar. Python'ının kurulu olduğu dizine taşı.

Testleri Çalıştırma<br>
robot -d reports -t "Homepage Search Product Create Basket"  -T --variablefile resources/config/prod.py  tests/searchTest.robot
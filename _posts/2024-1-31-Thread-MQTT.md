---
layout: post
title: MQTT, sebuah protokol  
thumbnail: assets/images/thumbnail_1.png

---

Dalam dunia IoT, terdapat suatu prosedur komunikasi antara perangkat IoT dan jaringan internet. Prosedur komunikasi tersebut sering disebut dengan protokol. Ada beberapa protokol yang dapat digunakan, seperti http, WebSocket, dan MQTT. Kali ini, kita akan membahas MQTT.

Kenapa harus MQTT? Pada laman webnya, mereka mengklaim bahwa MQTT menggunakan resources yang rendah sehingga dapat digunakan pada microcontroller. Selain itu, pesan yang dikirim lewat MQTT berukuran kecil dan dapat dioptimasi pada bandwith jaringan yang rendah. 

Dalam MQTT, perangkat yang berkomunikasi disebut dengan client. Client dapat melakukan dua hal, yaitu publish untuk mengirim data dan subscribe untuk menerima data. Tiap pesan yang dikirim ataupun diterima lewat MQTT memiliki topic. Supaya terhubung, publisher (pengirim) dan subscriber (penerima) harus terhubung pada topic yang sama. 

![_config.yml]({{ site.baseurl }}assets/images/Untitled.png){: width="600" }

Di antara publisher dan subscriber terdapat Broker yang berperan sebagai perantara. Broker bisa dijalankan secara lokal melalui software mosquitto atau menggunakan broker publik seperti [hivemq.com](http://hivemq.com). Sama halnya dengan topic, broker yang terhubung dengan publisher dan subscriber juga harus sama.

Jika memilih menjalankan broker pada jaringan lokal, cukup install mosquitto dan ketik perintah dibawah ini

![_config.yml]({{ site.baseurl }}assets/images/Untitled%201.png){: width="600" }

Jika broker sudah berjalan, maka komunikasi melalui MQTT sudah bisa berjalan. Paling mudah bisa menggunakan software MQTT explorer untuk melakukan publish ataupun subscribe. cukup masukkkan alamat ip broker pada kolom host untuk menghubungkan. kemudian komunikasi data sudah bisa dilakukan. yey

![_config.yml]({{ site.baseurl }}assets/images/Untitled%202.png){: width="600" }

Kalau ingin mengolah data pakai python, dapat digunakan library paho-mqtt dengan contoh kode berikut untuk subscribe(kiri) dan publish (kanan). di contoh ini, digunakan broker lokal dan topik “GUI/data”

![_config.yml]({{ site.baseurl }}assets/images/Untitled%203.png){: width="600" }

![_config.yml]({{ site.baseurl }}assets/images/Untitled%204.png){: width="600" }

Jika ingin diaplikasikan di mikrokontroler, ada juga client MQTT seperti [https://github.com/knolleary/pubsubclient](https://github.com/knolleary/pubsubclient)

akhir kata, selamat mencoba dan semoga IP kita semua bagus

Referensi dan sumber belajar:
- [https://www.youtube.com/watch?v=MtMk6nChaW8](https://www.youtube.com/watch?v=MtMk6nChaW8)
- Modul Praktikum Jaringan Komunikasi 07
- mqtt.org

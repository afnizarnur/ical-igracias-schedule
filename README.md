# iGracias Schedule Generator
Generate .ical / calendar files from your iGracias schedule in easy way!

## Background
Saya termasuk orang yang terstruktur dalam hal penjadwalan, tugas dan pekerjaan. Dalam keseharian saya, saya tidak akan jauh dengan Google Calendar, Teamweek, ataupun Trello.

Dalam hal penjadwalan kuliah, setiap pergantian semester, saya selalu membuat event di Google Calendar untuk jadwal kuliah saya, dan hal ini sangatlah melelahkan karena saya harus melakukannya secara manual. Dengan adanya masalah itu, saya berinisiatif membuat project ini untuk menyelesaikan permasalahan tersebut. Dalam hal resource, untungnya API untuk jadwal kuliah di sistem informasi kampus yaitu iGracias, terbuka dan bisa digunakan tanpa perlu ribet untuk setupnya.

## Installation
Untuk instalasinya dibutuhkan [Node.JS](https://nodejs.org/en/). Silahkan install terlebih dahulu.

Setelah itu ketikan code dibawah di Terminal untuk menginstall package
> $ npm install

Buka file `config.js`, ubah NIM dengan NIM Anda.

Jalankan aplikasi dengan mengetikan
> $ node main.js

Setelah itu buka [http://localhost:3000/](http://localhost:3000/) untuk mendownload file .ics atau file kalender.

## TODO
- [ ] Create URL with NIM in it to without dive to the code
- [ ] Publish it to my domain
- [ ] Add notification preferences
- [ ] Create UI with NIM and notification preferences

## Authors
Afnizar Nur Ghifari ([afnizarhilmi@gmail.com](mailto:afnizarhilm@gmail.com))

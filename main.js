(function(){var e,a,t,r,n,i,o;t=require("./config"),n=require("ical-generator"),r=require("http"),i=require("request"),e=n({domain:"afnizarnur.com",name:"Jadwal Kuliah",timezone:"Asia/Jakarta",prodId:{company:"afnizarnur.com",product:"ical-igracias-schedule"}}),a=function(e,a){return e.split(":")[a]},o="https://dashboard.telkomuniversity.ac.id/Modul/apimobile/dataAkademikMahasiswa/getDataAkademikMahasiswa.php?data=jadwal&nim="+t.NIM,i({url:o,json:!0},function(t,r,n){var i,o,s,u,d,c,l,m,g;if(!t&&200===r.statusCode)for(c=n[0][0],u=0,d=c.length;u<d;u++)g=c[u],m=new Date,m.setDate(m.getDate()+(8-m.getDay())%7),1!==g.dayid&&m.setDate(m.getDate()+(g.dayid-m.getDay())%7),l=g.starthour,s=g.startend,o=new Date(m.getFullYear(),m.getMonth(),m.getDate(),a(l,0),a(l,1),a(l,2)),i=new Date(m.getFullYear(),m.getMonth(),m.getDate(),a(s,0),a(s,1),a(s,2)),e.createEvent({start:o,end:i,summary:g.roomname+" - "+g.subjectname,description:"Kode Dosen "+g.lecturecode,location:g.roomname})}),r.createServer(function(a,t){e.serve(t)}).listen(3e3,"127.0.0.1",function(){console.log("Server running at http://127.0.0.1:3000/")})}).call(this);
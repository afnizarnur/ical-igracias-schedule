(function(){var a,e,t,r,n,i,u;n=require("ical-generator"),r=require("http"),i=require("request"),a=n({domain:"afnizarnur.com",name:"iGracias Schedule Generator",timezone:"Asia/Jakarta",prodId:{company:"afnizarnur.com",product:"ical-igracias-schedule"}}),e=function(a){switch(a){case"1":return"Mon";case"2":return"Tue";case"3":return"Wed";case"4":return"Thu";case"5":return"Fri";case"6":return"Sat";default:return"Sun"}},t=function(){return console.log("date")},u="https://dashboard.telkomuniversity.ac.id/Modul/apimobile/dataAkademikMahasiswa/getDataAkademikMahasiswa.php?data=jadwal&nim=1301152427",i({url:u,json:!0},function(a,e,t){var r,n,i,u,o,s,c,l,d;if(!a&&200===e.statusCode)for(u=t[0][0],n=0,i=u.length;n<i;n++)d=u[n],o=d.starthour.split(":")[0],s=d.starthour.split(":")[1],c=d.starthour.split(":")[2],l=new Date,r=new Date(l.getFullYear(),l.getMonth(),l.getDate(),o,s,c),console.log(d.lecturecode+" "+r)})}).call(this);
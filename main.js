(function(){var a,e,r,t,i,n,u;i=require("ical-generator"),t=require("http"),n=require("request"),a=i({domain:"afnizarnur.com",name:"iGracias Schedule Generator",timezone:"Asia/Jakarta",prodId:{company:"afnizarnur.com",product:"ical-igracias-schedule"}}),e=function(a){switch(a){case"1":return"Mon";case"2":return"Tue";case"3":return"Wed";case"4":return"Thu";case"5":return"Fri";case"6":return"Sat";default:return"Sun"}},r=function(){return console.log("date")},u="https://dashboard.telkomuniversity.ac.id/Modul/apimobile/dataAkademikMahasiswa/getDataAkademikMahasiswa.php?data=jadwal&nim=1301152427",n({url:u,json:!0},function(a,r,t){var i,n,u,o;if(!a&&200===r.statusCode)for(u=t[0][0],i=0,n=u.length;i<n;i++)o=u[i],e(o.dayid),starthour})}).call(this);
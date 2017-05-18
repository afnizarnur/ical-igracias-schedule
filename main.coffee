ical = require('ical-generator')
http = require('http')
cal = ical {
  domain: 'afnizarnur.com'
  name: 'iGracias Schedule Generator'
}

# https://dashboard.telkomuniversity.ac.id/Modul/apimobile/dataAkademikMahasiswa/getDataAkademikMahasiswa.php?data=jadwal&nim=1301150021
# First, open the url
# Loop based the data provided
# Set summary as roomname + subjectname
# Set start as starthour
# Set end as startend
# Set location roomname

cal.createEvent {
  start: new Date
  end: new Date((new Date).getTime() + 3600000)
  summary: 'KU3.2.01 - Probabilitas dan Statistika'
  location: 'KU3.2.01'
}

http.createServer((req, res) ->
  cal.serve res
  return
).listen 3000, '127.0.0.1', ->
  console.log 'Server running at http://127.0.0.1:3000/'
  return

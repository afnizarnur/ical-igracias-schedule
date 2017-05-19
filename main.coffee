ical = require('ical-generator')
http = require('http')
request = require('request')
cal = ical {
  domain: 'afnizarnur.com'
  name: 'iGracias Schedule Generator'
  timezone: 'Asia/Jakarta'
  prodId: {company: 'afnizarnur.com', product: 'ical-igracias-schedule'},
}

changeTime = (value, number) ->
  value.split(':')[number]

url = 'https://dashboard.telkomuniversity.ac.id/Modul/apimobile/dataAkademikMahasiswa/getDataAkademikMahasiswa.php?data=jadwal&nim=1301152427'
request {
  url: url
  json: true
}, (error, response, body) ->
  if !error and response.statusCode == 200
    for value in body[0][0]
      today = new Date()
      # Set to next week
      today.setDate today.getDate() + (1 + 7 - today.getDay()) % 7

      convertedTimeStart = new Date(today.getFullYear(), today.getMonth(), today.getDate(), changeTime(value.starthour, 0), changeTime(value.starthour, 1), changeTime(value.starthour, 2))
      convertedTimeEnd = new Date(today.getFullYear(), today.getMonth(), today.getDate(), changeTime(value.startend, 0), changeTime(value.startend, 1), changeTime(value.startend, 2))

      cal.createEvent {
        start: convertedTimeStart
        end: convertedTimeEnd
        summary: value.roomname + ' - ' + value.subjectname
        description: 'Kode Dosen ' + value.lecturecode
        location: value.roomname
      }
  return

http.createServer((req, res) ->
  cal.serve res
  return
).listen 3000, '127.0.0.1', ->
  console.log 'Server running at http://127.0.0.1:3000/'
  return

config = require('./config')
ical = require('ical-generator')
http = require('http')
request = require('request')
cal = ical {
  domain: 'afnizarnur.com'
  name: 'Jadwal Kuliah'
  timezone: 'Asia/Jakarta'
  prodId: {company: 'afnizarnur.com', product: 'ical-igracias-schedule'},
}

changeTime = (value, number) ->
  value.split(':')[number]

url = 'https://dashboard.telkomuniversity.ac.id/Modul/apimobile/dataAkademikMahasiswa/getDataAkademikMahasiswa.php?data=jadwal&nim=' + config.NIM

request {
  url: url
  json: true
}, (error, response, body) ->
  if !error and response.statusCode == 200
    for value in body[0][0]
      today = new Date()
      # Set date to monday
      today.setDate today.getDate() + (1 + 7 - today.getDay()) % 7

      # Set by dayid
      if value.dayid isnt 1
        today.setDate today.getDate() +  (value.dayid - today.getDay()) % 7

      # Convert time start and time end
      start = value.starthour
      end = value.startend
      convertedTimeStart = new Date(today.getFullYear(), today.getMonth(), today.getDate(), changeTime(start, 0), changeTime(start, 1), changeTime(start, 2))
      convertedTimeEnd = new Date(today.getFullYear(), today.getMonth(), today.getDate(), changeTime(end, 0), changeTime(end, 1), changeTime(end, 2))

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

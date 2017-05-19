ical = require('ical-generator')
http = require('http')
request = require('request')
cal = ical {
  domain: 'afnizarnur.com'
  name: 'iGracias Schedule Generator'
  timezone: 'Asia/Jakarta'
  prodId: {company: 'afnizarnur.com', product: 'ical-igracias-schedule'},
}

# First, open the url
# Loop based the data provided
# Set summary as roomname + subjectname
# Set description lecturecode
# Set start as starthour
  # dayid = 1, 2, 3, 4, 5, 6
# Set end as startend
# Set location roomname
# Repeat every week

convertDay = (day) ->
  switch day
    when "1" then "Mon"
    when "2" then "Tue"
    when "3" then "Wed"
    when "4" then "Thu"
    when "5" then "Fri"
    when "6" then "Sat"
    else "Sun"

convertTime = ->
  console.log "date"

url = 'https://dashboard.telkomuniversity.ac.id/Modul/apimobile/dataAkademikMahasiswa/getDataAkademikMahasiswa.php?data=jadwal&nim=1301152427'
request {
  url: url
  json: true
}, (error, response, body) ->
  if !error and response.statusCode == 200
    for value in body[0][0]
      t1 = value.starthour.split(':')[0]
      t2 = value.starthour.split(':')[1]
      t3 = value.starthour.split(':')[2]

      today = new Date()
      convertedTime = new Date(today.getFullYear(), today.getMonth(), today.getDate(), t1, t2, t3)
      console.log value.lecturecode + ' ' + convertedTime

      # cal.createEvent {
      #   start: new Date
      #   end: new Date((new Date).getTime() + 3600000)
      #   summary: value.roomname + ' - ' + value.subjectname
      #   description: 'Kode Dosen ' + value.lecturecode
      #   location: value.roomname
      # }
  return

#
#
# http.createServer((req, res) ->
#   cal.serve res
#   return
# ).listen 3006, '127.0.0.1', ->
#   console.log 'Server running at http://127.0.0.1:3006/'
#   return

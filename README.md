# iGracias Schedule Generator
Generate .ical / calendar files from your iGracias schedule in easy way!

## Background
I'm very structured person in terms of scheduling, task and work. In my daily life, I'll not be far away with Google Calendar, Teamweek, and Trello.

In terms of scheduling lectures, every semester change, I always make an event in Google Calendar for my college schedule, and it's very tiring because I've to do it manually. With that problem, I took the initiative to make this project to solve the problem. For the resources, luckily the API for college schedule is open and can be used without complicated setup.

## Installation
For installation you need [Node.JS](https://nodejs.org/en/). Please install it first.

After that type the code below in your Terminal to install required package.
```
$ npm install
```

Open `config.js` file, change NIM with your NIM.

Run project by type the code below in your terminal.
```
$ node main.js
```

After that open [http://localhost:3000/](http://localhost:3000/) to download .ics file.

## TODO
- [ ] Create URL with NIM in it to without dive to the code
- [ ] Publish it to my domain
- [ ] Add notification preferences
- [ ] Create UI with NIM and notification preferences

## Authors
Afnizar Nur Ghifari ([afnizarhilmi@gmail.com](mailto:afnizarhilm@gmail.com))

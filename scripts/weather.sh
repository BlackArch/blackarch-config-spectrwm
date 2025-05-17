###### https://github.com/bunnyhop-dev/
#!/bin/bash

weather=$(curl -s 'wttr.in/Bangkok?format=%C')
temp=$(curl -s 'wttr.in/Bangkok?format=%t')

case "$weather" in
  "Sunny") icon="☀️";;
  "Clear") icon="🌙";;
  "Partly cloudy") icon="⛅";;
  "Cloudy") icon="☁️";;
  "Rain"|"Light rain") icon="🌧️";;
  "Snow") icon="❄️";;
  *) icon="🌈";;
esac

echo "$icon $temp"

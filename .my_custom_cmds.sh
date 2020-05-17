#!/usr/bin/env bash

function generate_bg() {
  if [ "$#" -ne 5 ]; then
    echo "Usage: $0 pattern color1 color2 height width"
    read -t 5
    return
  fi

  DIRECTORY="/Users/boubacar/Desktop/background-generator"
  cat > $DIRECTORY/index.html <<EOF
<!DOCTYPE html>
<html lang="en">
  <head>
    <link href="$DIRECTORY/pattern.min.css" rel="stylesheet" />
    <style>
      html,
      body {
        height: 100%;
        margin: 0;
      }
      #background {
        height: 100%;
        color: #$2;
        background-color: #$3;
      }
    </style>
  </head>
  <body>
    <div id="background" class="$1"></div>
  </body>
</html>
EOF
  cat > $DIRECTORY/screenshot_background.js <<EOF
var page = require("webpage").create();

var folderPath = "$DIRECTORY/backgrounds/";

page.viewportSize = { width: $4, height: $5 };
page.open("$DIRECTORY/index.html", function () {
  setTimeout(function () {
    page.render(folderPath + "$1-$2-$3-$4-$5.png");
    phantom.exit();
  }, 100);
});
EOF

  phantomjs $DIRECTORY/screenshot_background.js
}
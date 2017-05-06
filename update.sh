#!/bin/bash

wget https://necolas.github.io/normalize.css/7.0.0/normalize.css -O src/utility/_normalize.scss
rm -r src/vendor && rm -r src/base
mkdir -p test && cd test
bourbon install && neat install && bitters install
mkdir -p ../src/vendor && mv bourbon ../src/vendor/ && mv neat ../src/vendor/
mv base/_variables.scss ../src/utility/_settings.scss
rm base/_base.scss
mv base ../src/

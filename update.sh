#!/bin/bash

wget https://raw.githubusercontent.com/necolas/normalize.css/master/normalize.css -O src/utility/_normalize.scss
rm -r src/vendor && rm -r src/base
mkdir -p test && cd test
../bin/bourbon install && ../bin/neat install && ../bin/bitters install
mkdir -p ../src/vendor && mv bourbon ../src/vendor/ && mv neat ../src/vendor/
mv base/_variables.scss ../src/utility/_settings.scss
rm base/_base.scss
mv base ../src/

#!/usr/bin/env bash

cat teste.html
| sed -E 's/^\s*(.*)\s*$/\1/g'
| paste -sd\ 
| sed -E 's/([>|}])\s*([<|{])|([{])\s*|\s*([}])|\s*([\.])/\1\2\3\4\5/g'
> teste-3.html

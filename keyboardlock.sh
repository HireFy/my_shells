#!/bin/bash
argc=$*
some=`xinput list | grep 'AT*' `
af_some=${some##*=}
#找到id
id_value=${af_some:0:2}
`xinput set-prop $id_value "Device Enabled" $argc`
exit

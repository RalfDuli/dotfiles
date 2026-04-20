#!/bin/zsh

sudo grubby --info=ALL | grep -E "index=|kernel="

CURRENT_KERNEL=$(uname -r)

echo "Select which kernel index to use. Your current kernel is: ${CURRENT_KERNEL}"
read KERNEL_INDEX

sudo grubby --set-default-index=${KERNEL_INDEX}

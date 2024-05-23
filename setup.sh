#!/bin/bash
#rtc install script - https://github.com/ASFOpenSARlab/opensarlab-envs/blob/main/Scripts/isce3_rtc.sh

set -e

# installing OPERA s1-reader
S1=./s1-reader

curl -sSL https://github.com/opera-adt/s1-reader/archive/refs/tags/v0.1.6.tar.gz -o s1_reader_src.tar.gz
tar -zxvf s1_reader_src.tar.gz

if ! [ -d "$S1" ]; then
    ln -s s1-reader-0.1.6 "$S1"
fi

rm s1_reader_src.tar.gz
conda run -n isce3_rtc python -m pip install "$S1"

# installing OPERA RTC
RTC=RTC

if [ -d "$RTC" ]; then
    rm -rf "$RTC"
fi

git clone https://github.com/opera-adt/RTC.git "$RTC"
conda run -n isce3_rtc python -m pip install "$RTC"
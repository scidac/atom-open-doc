#!/bin/bash
./extract_cgyro_81.sh >cgyro_raw.csv
./extract_xgyro_81.sh >xgyro_raw.csv

cat cgyro_raw.csv | python3 condense_columns.py > cgyro.csv
cat xgyro_raw.csv | python3 condense_columns.py > xgyro.csv
cat cgyro.csv| python3 sum_cgyro.py >cgyro_sums.csv

echo "#,nl,str,coll,nl_comm,str_comm,coll_comm" > ../summarized_data.csv
cat cgyro.csv >> ../summarized_data.csv
cat cgyro_sums.csv >> ../summarized_data.csv
cat xgyro.csv >> ../summarized_data.csv

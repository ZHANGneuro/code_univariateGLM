
#!/bin/bash


export OPENBLAS_NUM_THREADS=1

fsf_list=(/Users/bo/Desktop/file_generated/fsf_univarite_*)

for i in "${fsf_list[@]}"; do
  (
    feat $i
  )&
  if (( $(wc -w <<<$(jobs -p)) % 4 == 0 )); then wait; fi 
done

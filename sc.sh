#!/bin/bash

src_dir="/d/Git_NDB/Hinh_Cuoi/Hinh_Cuoi_1202_2023"
dest_dir="/d/Git_NDB/Hinh_Cuoi/Hinh_Cuoi_1202_2023"
count=0
folder_num=1

mkdir -p "$dest_dir/folder${folder_num}" # tạo thư mục đích đầu tiên

for file in "$src_dir"/*.jpg # thay đổi định dạng tệp hình ảnh tương ứng
do
  if [ $count -eq 60 ] # nếu đếm được 60 tệp hình ảnh
  then
    count=0 # reset biến đếm
    folder_num=$((folder_num+1)) # tăng số thư mục lên
    mkdir -p "$dest_dir/folder${folder_num}" # tạo thư mục đích mới
  fi
  cp "$file" "$dest_dir/folder${folder_num}" # copy tệp hình ảnh vào thư mục đích
  count=$((count+1)) # tăng biến đếm lên
done
for i in `find /d/Git_NDB/Hinh_Cuoi/Hinh_Cuoi_1202_2023 -type d -name "folder*"`
do
	mv $i ./
	git add .
	git commit -m "$i"
	git push 
done

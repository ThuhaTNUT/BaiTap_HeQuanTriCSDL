# Bài tập 03: Trần Thị Thu Hà - K225480106009 - Môn Hệ quản trị CSDL
# Bài toán: 
Sửa bài 2 để có csdl như sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#id_dk, @maLopHP,@maSV,DiemThi,PhanTramThi)
  + Diem(#id, @id_dk, diem)
# Yêu cầu: 
1. Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.
2. Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)
3. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.

# Bài làm: 
## 1. Sửa bảng DKMH và thêm bảng điểm 
### - Bảng DKMH sa khi sửa: Thêm cột id_dk và đặt id_dk làm khóa chính trong bảng: 
  ![image](https://github.com/user-attachments/assets/263ec2c7-13ed-48df-9581-c8652fe7f6ba)
### - Thêm bảng điểm vào database QLSV
  ![image](https://github.com/user-attachments/assets/802383d8-7acd-4f9e-bc27-705d90a98a83)

  Tạo khóa ngoại (FK) cho bảng điểm: 
  ![image](https://github.com/user-attachments/assets/be5d33f1-0bc9-4352-bce0-5f2321ad3c59)

  Tạo khóa ràng buộc (CK) cho cột Diem
  ![image](https://github.com/user-attachments/assets/85c3d32d-51fc-4cc6-9ae2-d91318f6ccb6)

## 2. Nhập dữ liệu demo cho các bảng 
  Nhập dữ liệu cho bảng sử dụng tính năng edit trên UI của SSMS
  ![image](https://github.com/user-attachments/assets/c93772db-f7e5-415c-9a9f-f4dace022f7a)
  ![image](https://github.com/user-attachments/assets/6efc7d93-fd6b-454a-890d-53ee1cba13b9)
1. Nhập dữ liệu cho bảng sinh viên
   


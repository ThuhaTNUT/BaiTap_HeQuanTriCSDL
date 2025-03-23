Bài tập 02 của SV: K225480106009 - Trần Thị Thu Hà - Môn Hệ quản trị CSDL
BÀI TOÁN:
- Tạo csdl quan hệ với tên QLSV gồm các bảng sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#@maLopHP,#@maSV,DiemTP,DiemThi,PhanTramThi)

YÊU CẦU:
1. Thực hiện các hành động sau trên giao diện đồ hoạ để tạo cơ sở dữ liệu cho bài toán:
  + Tạo database mới, mô tả các tham số(nếu có) trong quá trình.
  + Tạo các bảng dữ liệu với các trường như mô tả, chọn kiểu dữ liệu phù hợp với thực tế (tự tìm hiểu)
  + Mỗi bảng cần thiết lập PK, FK(s) và CK(s) nếu cần thiết. (chú ý dấu # và @: # là chỉ PK, @ chỉ FK)
2. Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương. lưu tất cả các lệnh SQL trong file: Script_DML.sql

BÀI LÀM: 
- Tạo CSDL QLSV trên giao diện đồ họa:
- ![Screenshot 2025-03-23 174838](https://github.com/user-attachments/assets/b4f180b9-01a7-4269-adf0-e49fbdeaf412)
- Tạo bảng sinh viên:
- ![Screenshot 2025-03-23 175316](https://github.com/user-attachments/assets/bab089f3-9ac8-4999-a6ab-17d9b5ad9370)
- Tạo bảng Lớp:
- ![Screenshot 2025-03-23 175457](https://github.com/user-attachments/assets/074af7d8-33a8-4a64-9692-9bee2dd234a5)
- Tạo bảng GVCN:
- ![Screenshot 2025-03-23 180657](https://github.com/user-attachments/assets/e6e1fe72-744d-4745-9af9-ac3f9ff62bb4)
- Tạo bảng Lớp Sinh viên:
- ![image](https://github.com/user-attachments/assets/b1966847-9ab6-4709-9aea-38bd1594ba0d)
- Tạo bảng Giáo Viên:
- ![image](https://github.com/user-attachments/assets/55f10851-fb52-4ad2-bf0b-58a991f548dc)
- Tạo bảng bộ môn:
- ![image](https://github.com/user-attachments/assets/6777e215-48bb-4731-bb7f-c6809eec7e5c)
- Tạo bảng Khoa:
- ![image](https://github.com/user-attachments/assets/62948560-9009-4e31-8c68-1c4ad99fd7db)
- Tạo bảng môn học:
- ![image](https://github.com/user-attachments/assets/0ad5cc56-98ea-42e5-ab74-de7c442849bd)
- Tạo bảng Lớp HP:
- ![image](https://github.com/user-attachments/assets/ca574519-5e1f-46e4-986e-7059d1ea28c9)
- Tạo bảng ĐKMH:
- ![image](https://github.com/user-attachments/assets/c498ff2b-463c-44ea-99f3-eb9d14741712)








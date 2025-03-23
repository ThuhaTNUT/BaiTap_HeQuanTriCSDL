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
  ![Screenshot 2025-03-23 174838](https://github.com/user-attachments/assets/b4f180b9-01a7-4269-adf0-e49fbdeaf412)
- Tạo bảng sinh viên:
  ![Screenshot 2025-03-23 175316](https://github.com/user-attachments/assets/bab089f3-9ac8-4999-a6ab-17d9b5ad9370)
- Tạo bảng Lớp:
  ![Screenshot 2025-03-23 175457](https://github.com/user-attachments/assets/074af7d8-33a8-4a64-9692-9bee2dd234a5)
- Tạo bảng GVCN:
  ![Screenshot 2025-03-23 180657](https://github.com/user-attachments/assets/e6e1fe72-744d-4745-9af9-ac3f9ff62bb4)
- Tạo bảng Lớp Sinh viên:
  ![image](https://github.com/user-attachments/assets/b1966847-9ab6-4709-9aea-38bd1594ba0d)
- Tạo bảng Giáo Viên:
  ![image](https://github.com/user-attachments/assets/55f10851-fb52-4ad2-bf0b-58a991f548dc)
- Tạo bảng bộ môn:
  ![image](https://github.com/user-attachments/assets/6777e215-48bb-4731-bb7f-c6809eec7e5c)
- Tạo bảng Khoa:
  ![image](https://github.com/user-attachments/assets/62948560-9009-4e31-8c68-1c4ad99fd7db)
- Tạo bảng môn học:
  ![image](https://github.com/user-attachments/assets/0ad5cc56-98ea-42e5-ab74-de7c442849bd)
- Tạo bảng Lớp HP:
  ![image](https://github.com/user-attachments/assets/ca574519-5e1f-46e4-986e-7059d1ea28c9)
- Tạo bảng ĐKMH:
  ![image](https://github.com/user-attachments/assets/c498ff2b-463c-44ea-99f3-eb9d14741712)
- Thiết lập FK cho bảng GVCN:
  ![Screenshot 2025-03-23 213322](https://github.com/user-attachments/assets/627a8da3-d4fd-4693-a8d1-26eeae28d8ae)
  ![Screenshot 2025-03-23 213351](https://github.com/user-attachments/assets/4bc373a0-dfeb-4760-9823-8237699fc6e9)
- Thiết lập FK cho bảng lớp sinh viên:
  ![image](https://github.com/user-attachments/assets/332fe52b-b0a2-4de4-ac44-bf9306677aed)
  ![image](https://github.com/user-attachments/assets/f293882a-626f-45f9-add2-d8612794064b)
- Thiết lập FK cho bảng GiaoVien:
  ![image](https://github.com/user-attachments/assets/f86e5166-024d-4f02-a6f5-d59296dccbfc)
- Thiết lập FK cho bảng BoMon:
  ![image](https://github.com/user-attachments/assets/f634ec25-44b0-4493-9b6f-04a8764e2d17)
- Thiết lập FK cho bảng Lớp Học Phần:
  ![image](https://github.com/user-attachments/assets/c79313d4-12f5-4d4e-93bf-ac68fcc59623)
  ![image](https://github.com/user-attachments/assets/2f6d8833-1c2a-4fbd-9873-4edde462761b)
- Thiết lập FK cho bảng ĐKMH:
  ![image](https://github.com/user-attachments/assets/aa0634ec-e9f5-4d62-b6c1-9f344330db53)
  ![image](https://github.com/user-attachments/assets/23749353-2953-4283-bfaf-b44956025502)










  









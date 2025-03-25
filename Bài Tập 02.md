# Bài tập 02 của SV: K225480106009 - Trần Thị Thu Hà - Môn Hệ quản trị CSDL
# BÀI TOÁN:
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

# YÊU CẦU:
1. Thực hiện các hành động sau trên giao diện đồ hoạ để tạo cơ sở dữ liệu cho bài toán:
  + Tạo database mới, mô tả các tham số(nếu có) trong quá trình.
  + Tạo các bảng dữ liệu với các trường như mô tả, chọn kiểu dữ liệu phù hợp với thực tế (tự tìm hiểu)
  + Mỗi bảng cần thiết lập PK, FK(s) và CK(s) nếu cần thiết. (chú ý dấu # và @: # là chỉ PK, @ chỉ FK)
2. Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương. lưu tất cả các lệnh SQL trong file: Script_DML.sql

# BÀI LÀM: 
# 1. Tạo CSDL trên giao diện đồ họa
## Tạo CSDL QLSV:
- 
  ![image](https://github.com/user-attachments/assets/db5cc3b3-a1f5-4c24-a07b-ff9479ac19dd)
## Tạo các bảng dữ liệu
1. Tạo bảng sinh viên (#MaSV, Hoten, Ngaysinh):
  ![image](https://github.com/user-attachments/assets/c119c792-03cd-4c76-9fd4-24319aba099a)
  ![image](https://github.com/user-attachments/assets/8db62085-ccc4-40b3-aefc-98fdc65aca44)
  ![image](https://github.com/user-attachments/assets/d4a415da-ff47-4276-a27d-2016e65a2cf3)
  ![image](https://github.com/user-attachments/assets/d92a9632-0d2e-4c7b-b32b-524d9f394140)
  ### Tạo các bảng còn lại tương tự như các bước tạo bảng SinhVien
2. Tạo bảng Lớp (#Malop, Tenlop):
  ![image](https://github.com/user-attachments/assets/9c4896cc-e8b7-4486-801d-fbe087c6fb4c)
3. Tạo bảng GVCN (#@Malop, #@MaGV, #HK):
  ![Screenshot 2025-03-23 180657](https://github.com/user-attachments/assets/e6e1fe72-744d-4745-9af9-ac3f9ff62bb4)
4. Tạo bảng Lớp Sinh viên (#@MaLop, #@MaSV, Chucvu):
  ![image](https://github.com/user-attachments/assets/b1966847-9ab6-4709-9aea-38bd1594ba0d)
5. Tạo bảng Giáo Viên (#MaGV, Hoten, Ngaysinh, @MaBM):
  ![image](https://github.com/user-attachments/assets/55f10851-fb52-4ad2-bf0b-58a991f548dc)
6. Tạo bảng bộ môn (#MaBM, TenBM, @MaKhoa):
  ![image](https://github.com/user-attachments/assets/6777e215-48bb-4731-bb7f-c6809eec7e5c)
7. Tạo bảng Khoa (#MaKhoa, TenKhoa):
  ![image](https://github.com/user-attachments/assets/62948560-9009-4e31-8c68-1c4ad99fd7db)
8. Tạo bảng môn học (#Mamon, Tenmon, STC):
  ![image](https://github.com/user-attachments/assets/0ad5cc56-98ea-42e5-ab74-de7c442849bd) 
9. Tạo bảng Lớp HP (#MaLopHP, TenLopHP, HK, @Mamon, @MaGV):
  ![image](https://github.com/user-attachments/assets/ca574519-5e1f-46e4-986e-7059d1ea28c9)
10. Tạo bảng ĐKMH (#@MaLopHP, #@MaSV, DiemTP, DiemThi, PhanTramThi):
  ![image](https://github.com/user-attachments/assets/c498ff2b-463c-44ea-99f3-eb9d14741712)
## Thiết lập các khóa FK, CK, PK cho bảng
1. Thiết lập khóa chính (PK) và Khóa ràng buộc (CK) cho bảng SinhVien:
- Thiết lập khóa chính:
  ![image](https://github.com/user-attachments/assets/b13f4d88-b729-4f25-a9c1-7f0ffd6e96ab)
- Thiết lập khóa ràng buộc CK:
    ![image](https://github.com/user-attachments/assets/bb7bfca1-1d00-4b66-aebe-9d589ee2ec5a)

    ![image](https://github.com/user-attachments/assets/f4aa0c8a-ddca-4c02-980a-fee3292a021c)

    ![image](https://github.com/user-attachments/assets/10e2c1e4-2b94-40bc-a067-9128b82e9fc9)
- Sau khi nhập xong nhấn tổ hợp phím Ctrl+S để lưu lại 
2. Thiết lập khóa chính (PK) cho bảng Lop:
- Làm tương tự các bước thiết lập khóa chính của bảng SinhVien
    ![image](https://github.com/user-attachments/assets/8e89aded-edc2-49a1-a847-ed18937d0547)
3. Thiết lập khóa chính (PK) và khóa ngoại (FK) cho bảng GVCN:
- Thiết lập khóa chính làm tương tự như các bảng trên
    ![image](https://github.com/user-attachments/assets/472bbbb5-3946-4d22-bbbb-9d9832804d2c)
- Thiết lập FK cho bảng GVCN:
  ![image](https://github.com/user-attachments/assets/d00e34b8-3b66-42b8-94ed-67289f573b8d)

  ![image](https://github.com/user-attachments/assets/4a7d9294-192a-43bf-be78-79eff7912143)

  ![image](https://github.com/user-attachments/assets/8b1da22b-9c5a-4678-949b-db529d19260d)
- Sau khi làm xong nhấn Ctrl+S để lưu
### Các bảng bên dưới tạo khóa tương tự như các mô tả ở những bảng trên 
4. Thiết lập khóa chính (PK) và khóa ngoại (FK) cho bảng LopSV
- PK của bảng LopSV:
  ![image](https://github.com/user-attachments/assets/c741bd38-a38e-4463-a367-8758cfc79d37)

- FK của bảng LopSV:
  ![image](https://github.com/user-attachments/assets/332fe52b-b0a2-4de4-ac44-bf9306677aed)
  ![image](https://github.com/user-attachments/assets/f293882a-626f-45f9-add2-d8612794064b)
5. PK, CK và FK của bảng GiaoVien
- PK: (#MaGV)
  ![image](https://github.com/user-attachments/assets/20f54ca5-0093-46f8-b11e-b4da70f4a978)
- FK: (@MaBM)
  ![image](https://github.com/user-attachments/assets/f86e5166-024d-4f02-a6f5-d59296dccbfc)
- Thiết lập CK cho bảng GiaoVien:
  ![image](https://github.com/user-attachments/assets/2341acd6-2a7d-4306-831e-a48d59726f26)
6. PK và FK của bảng BoMon
- PK: (#MaBM):
  ![image](https://github.com/user-attachments/assets/b6d21192-5be5-4a1d-8c7e-427d29b46762)
- FK: (@MaKhoa):
  ![image](https://github.com/user-attachments/assets/f634ec25-44b0-4493-9b6f-04a8764e2d17)
7. PK của bảng Khoa
  ![image](https://github.com/user-attachments/assets/c8852ba1-cd7d-4ea3-9519-d492f4fcaa8d)
8. PK của bảng MonHoc
  ![image](https://github.com/user-attachments/assets/6c34ce8d-2048-4657-9378-367c78f1b164)
9. PK và FK của bảng LopHP
- PK: (#maLopHP):
  ![image](https://github.com/user-attachments/assets/1aac3d09-4791-4043-8d99-63eeebbaf7b7)
- FK: (@MaGV):
  ![image](https://github.com/user-attachments/assets/c79313d4-12f5-4d4e-93bf-ac68fcc59623)
- FK: (@Mamon):
  ![image](https://github.com/user-attachments/assets/2f6d8833-1c2a-4fbd-9873-4edde462761b)
10. PK, FK, CK của bảng ĐKMH
- PK của bảng DKMH:
  ![image](https://github.com/user-attachments/assets/191b4e87-5282-4032-b6e3-9717f93abd96)
- FK: (@MaLopHP):
  ![image](https://github.com/user-attachments/assets/aa0634ec-e9f5-4d62-b6c1-9f344330db53)
- FK: (@MaSV):
  ![image](https://github.com/user-attachments/assets/23749353-2953-4283-bfaf-b44956025502)
- Thiết lập CK cho bảng ĐKMH:
  ![image](https://github.com/user-attachments/assets/7bcf4ae5-65e9-46cd-98f1-dbe30de8c0e3)
  ![image](https://github.com/user-attachments/assets/ea9b8a03-adf7-43dd-bc1f-239f2a777ffc)
  ![image](https://github.com/user-attachments/assets/607d6dbc-0fb6-4bf3-971d-28e84af8dd3b)
# 2. Chuyển các thao tác đồ họa thành lệnh SQL tương đương
- 
  ![image](https://github.com/user-attachments/assets/b40403b3-405d-4cf7-8688-a2c798421c3f)
- Lệnh SQL sau khi chuyển từ thao tác đồ họa của bảng SinhVien
  ![image](https://github.com/user-attachments/assets/9a6893fc-2e38-4576-910f-24bd7c2c4c73)
#### - Các bảng khác chuyển sang lệnh SLQ tương tự như cách làm trên













  









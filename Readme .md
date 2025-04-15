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
- Bảng DKMH sau khi sửa: Thêm cột id_dk và đặt id_dk làm khóa chính trong bảng: 
    ![image](https://github.com/user-attachments/assets/263ec2c7-13ed-48df-9581-c8652fe7f6ba)
- Thêm bảng điểm vào database QLSV
    ![image](https://github.com/user-attachments/assets/802383d8-7acd-4f9e-bc27-705d90a98a83)

- Tạo khóa ngoại (FK) cho bảng điểm: 
    ![image](https://github.com/user-attachments/assets/be5d33f1-0bc9-4352-bce0-5f2321ad3c59)
- Tạo khóa ràng buộc (CK) cho cột Diem
    ![image](https://github.com/user-attachments/assets/85c3d32d-51fc-4cc6-9ae2-d91318f6ccb6)
## 2. Tạo Diagrams 
- Diagrams của csdl QLSV
  ![image](https://github.com/user-attachments/assets/90fadbdb-fbd7-4021-926d-17cff1d2c5fb)
## 3. Nhập dữ liệu demo cho các bảng 
- Nhập dữ liệu cho bảng sử dụng tính năng edit trên UI của SSMS
    ![image](https://github.com/user-attachments/assets/c93772db-f7e5-415c-9a9f-f4dace022f7a)
    ![image](https://github.com/user-attachments/assets/6efc7d93-fd6b-454a-890d-53ee1cba13b9)
1. Nhập dữ liệu cho bảng sinh viên
   ![image](https://github.com/user-attachments/assets/13cafc81-acc0-4485-85d8-27f660d1ae4f)
2. Nhập dữ liệu cho bảng lớp
   ![image](https://github.com/user-attachments/assets/d79ffafe-f322-42b0-ba63-04c06896f08e)
3. Nhập dữ liệu cho bảng GVCN
   ![image](https://github.com/user-attachments/assets/b732aa86-6bf5-42f7-bcf8-62131aa38030)
4. Nhập dữ liệu cho bảng LopSV
   ![image](https://github.com/user-attachments/assets/3fe561b2-d4bf-422d-a68d-798f90abd3ad)
5. Nhập dữ liệu cho bảng GiaoVien
  ![image](https://github.com/user-attachments/assets/d394324c-0205-45bc-93d9-17ab6794b108)
6. Nhập dữ liệu cho bảng BoMon
  ![image](https://github.com/user-attachments/assets/c7c1d9ee-cca5-43dc-8084-22782c2eea91)
7. Nhập dữ liệu cho bảng Khoa
  ![image](https://github.com/user-attachments/assets/5884fa96-2380-4363-8b95-5303d21a872f)
8. Nhập dữ liệu cho bảng MonHoc
  ![image](https://github.com/user-attachments/assets/e31ad5fe-9cc7-4bf4-b86d-8e8d5c789b2a)
9. Nhập dữ liệu cho bảng LopHP
  ![image](https://github.com/user-attachments/assets/408f538f-d56c-411a-a5ed-dbbb24df09b9)
10. Nhập dữ liệu cho bảng DKMH
  ![image](https://github.com/user-attachments/assets/0008c66e-ad99-49c7-8b8a-8e88a013994e)
11. Nhập dữ liệu cho bảng Diem
  ![image](https://github.com/user-attachments/assets/66eaa712-fc3a-4b6b-9111-405f85f4a096)
## 3. Lệnh truy vấn để tính điểm thành phần của sinh viên
### Lệnh truy vẫn tính điểm thành phần của một sinh viên đang học tại một lớp học phần 
- Lệnh 
  ![image](https://github.com/user-attachments/assets/b04110bf-88bf-4c1c-b9a7-55cb22e892ef)
- Kết quả sau khi chạy:
  ![image](https://github.com/user-attachments/assets/a9bbb048-57e4-45e1-968d-bbe0adf1a2c2)
### - Lệnh truy vấn tính điểm thành phần của tất cả các sinh viên ở các lớp học phần
- Lệnh 
  ![image](https://github.com/user-attachments/assets/c88f8e18-d80c-4f3b-ba48-aaa02edef4d0)
- Kết quả sau khi chạy:
  ![image](https://github.com/user-attachments/assets/e57c34a7-66ff-45f3-ba82-4fa07353c307)

  


  

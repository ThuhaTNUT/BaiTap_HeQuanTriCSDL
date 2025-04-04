USE [QLSV]
GO
INSERT [dbo].[SinhVien] ([MaSV], [Hoten], [Ngaysinh]) VALUES (N'SV001', N'Phạm Văn Cường', CAST(N'2002-04-15' AS Date))
INSERT [dbo].[SinhVien] ([MaSV], [Hoten], [Ngaysinh]) VALUES (N'SV002', N'Lê Thị Dung', CAST(N'2003-07-20' AS Date))
INSERT [dbo].[SinhVien] ([MaSV], [Hoten], [Ngaysinh]) VALUES (N'SV003', N'Trần Minh Khôi', CAST(N'2001-09-10' AS Date))
GO
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K001', N'Công nghệ thông tin ')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K002', N'Quản trị kinh doan ')
GO
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'BM001', N'Hệ thống thông tin ', N'K001')
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'BM002', N'Lập trình', N'K001')
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'BM003', N'Quản lý doanh nghiệp ', N'K002')
GO
INSERT [dbo].[GiaoVien] ([MaGV], [Hoten], [Ngaysinh], [MaBM]) VALUES (N'GV001', N'Nguyễn Văn A', CAST(N'1980-05-10' AS Date), N'BM001')
INSERT [dbo].[GiaoVien] ([MaGV], [Hoten], [Ngaysinh], [MaBM]) VALUES (N'GV002', N'Trần Thị B', CAST(N'1975-12-22' AS Date), N'BM002')
INSERT [dbo].[GiaoVien] ([MaGV], [Hoten], [Ngaysinh], [MaBM]) VALUES (N'GV003', N'Hoàng Minh C', CAST(N'1988-03-25' AS Date), N'BM003')
GO
INSERT [dbo].[MonHoc] ([Mamon], [Tenmon], [STC]) VALUES (N'MH001', N'Cấu trúc dữ liệu ', 3)
INSERT [dbo].[MonHoc] ([Mamon], [Tenmon], [STC]) VALUES (N'MH002', N'Mạng máy tính', 3)
INSERT [dbo].[MonHoc] ([Mamon], [Tenmon], [STC]) VALUES (N'MH003', N'Kinh tế vi mô', 3)
GO
INSERT [dbo].[LopHP] ([MaLopHP], [TenLopHP], [HK], [Mamon], [MaGV]) VALUES (N'LH001', N'CTDLHK3', 3, N'MH001', N'GV001')
INSERT [dbo].[LopHP] ([MaLopHP], [TenLopHP], [HK], [Mamon], [MaGV]) VALUES (N'LH002', N'MMTHK3', 3, N'MH002', N'GV002')
INSERT [dbo].[LopHP] ([MaLopHP], [TenLopHP], [HK], [Mamon], [MaGV]) VALUES (N'LH003', N'KTVMHK3', 3, N'MH003', N'GV003')
GO
INSERT [dbo].[DKMH] ([id_dk], [MaLopHP], [MaSV], [DiemThi], [PhanTramThi]) VALUES (1, N'LH001', N'SV001', 8.5, 0.6)
INSERT [dbo].[DKMH] ([id_dk], [MaLopHP], [MaSV], [DiemThi], [PhanTramThi]) VALUES (2, N'LH001', N'SV002', 7, 0.6)
INSERT [dbo].[DKMH] ([id_dk], [MaLopHP], [MaSV], [DiemThi], [PhanTramThi]) VALUES (3, N'LH002', N'SV003', 9, 0.6)
GO
INSERT [dbo].[Diem] ([id], [id_dk], [Diem]) VALUES (1, 1, 5)
INSERT [dbo].[Diem] ([id], [id_dk], [Diem]) VALUES (2, 2, 6)
INSERT [dbo].[Diem] ([id], [id_dk], [Diem]) VALUES (3, 3, 8.5)
INSERT [dbo].[Diem] ([id], [id_dk], [Diem]) VALUES (4, 1, 9)
GO
INSERT [dbo].[Lop] ([MaLop], [TenLop]) VALUES (N'L001', N'Quản trị mạng')
INSERT [dbo].[Lop] ([MaLop], [TenLop]) VALUES (N'L002', N'Hệ quản trị cơ sở DL ')
INSERT [dbo].[Lop] ([MaLop], [TenLop]) VALUES (N'L003', N'Lập trình Python')
GO
INSERT [dbo].[LopSV] ([MaLop], [MaSV], [ChucVu]) VALUES (N'L001', N'SV001', N'Lớp trưởng')
INSERT [dbo].[LopSV] ([MaLop], [MaSV], [ChucVu]) VALUES (N'L001', N'SV002', N'Thành viên lớp')
INSERT [dbo].[LopSV] ([MaLop], [MaSV], [ChucVu]) VALUES (N'L002', N'SV003', N'Bí thư')
GO
INSERT [dbo].[GVCN] ([MaLop], [MaGV], [HK]) VALUES (N'L001', N'GV001', 3)
INSERT [dbo].[GVCN] ([MaLop], [MaGV], [HK]) VALUES (N'L002', N'GV002', 3)
INSERT [dbo].[GVCN] ([MaLop], [MaGV], [HK]) VALUES (N'L003', N'GV003', 3)
GO

WITH DiemThanhPhan AS (
    SELECT 
        dkmh.id_dk,
        dkmh.MaSV,
        COUNT(d.Diem) AS SoLuongDiem,  -- Số lượng điểm thành phần
        ROUND(AVG(d.Diem), 3) AS Diem_TP_TrungBinh  -- Điểm thành phần trung bình
    FROM Diem d 
    JOIN DKMH dkmh ON d.id_dk = dkmh.id_dk
    GROUP BY dkmh.id_dk, dkmh.MaSV
)
SELECT 
    dkmh.id_dk, 
    dkmh.MaSV, 
    sv.HoTen, 
    sv.NgaySinh, 
    dkmh.MaLopHP,
    dtp.Diem_TP_TrungBinh,  -- Điểm thành phần trung bình
    dtp.SoLuongDiem, 
    dkmh.DiemThi, 
    dkmh.PhanTramThi,
    ROUND(
        (dtp.Diem_TP_TrungBinh ) + (dkmh.DiemThi * (dkmh.PhanTramThi / 100)), 3
    ) AS DiemTong -- Tính điểm tổng đúng công thức
FROM DKMH dkmh
JOIN SinhVien sv ON dkmh.MaSV = sv.MaSV
LEFT JOIN DiemThanhPhan dtp ON dkmh.id_dk = dtp.id_dk;

package com.example.quanlyhocphan.Dao;

import com.example.quanlyhocphan.Entities.CaHoc;

public interface CaHocDao {
    CaHoc getCaHoc(String maCa);

    CaHoc getCaHocByMaLopMaHP(int malop,int mahocphan);
}

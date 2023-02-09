package com.example.quanlyhocphan.Service.ServiceImp;

import com.example.quanlyhocphan.Dao.CaHocDao;
import com.example.quanlyhocphan.Dao.GiaoVienDao;
import com.example.quanlyhocphan.Dao.HocPhanDao;
import com.example.quanlyhocphan.Dao.LichHocDao;
import com.example.quanlyhocphan.Dao.LopHocPhanDao;
import com.example.quanlyhocphan.Dao.NamHocHocKyDao;
import com.example.quanlyhocphan.Entities.LichHoc;
import com.example.quanlyhocphan.Entities.NamHocHocKy;
import com.example.quanlyhocphan.Service.LichHocService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LichHocServiceImp implements LichHocService {
    @Autowired
    LichHocDao lichHocDao;
    @Autowired
    CaHocDao caHocDao;
    @Autowired
    LopHocPhanDao lopHocPhanDao;

    @Autowired
    NamHocHocKyDao namHocHocKyDao;

    @Override
    public List<LichHoc> getListLicHoc() {
        List<LichHoc> lis = lichHocDao.getlistLichHoc();
        for (LichHoc l : lis) {
            l.setCaHoc(caHocDao.getCaHoc(l.getCaHoc().getMaCaHoc()));
        }
        return lis;
    }

    @Override
    public LichHoc getLichHoc(String maLichHoc) {
        LichHoc l = lichHocDao.getLichHoc(maLichHoc);
        l.setCaHoc(caHocDao.getCaHoc(l.getCaHoc().getMaCaHoc()));
        return l;
    }

    @Override
    public List<LichHoc> getLisLichHocs(String masv) {
        List<LichHoc> list = lichHocDao.getLisLichHocs(masv);
        for (LichHoc lich : list) {
            lich.setCaHoc(caHocDao.getCaHoc(lich.getCaHoc().getMaCaHoc()));
            lich.setNamHocHocKy(namHocHocKyDao.getNamHocHocKy(lich.getNamHocHocKy().getDotHoc()));
            lich.setLopHocPhans(lopHocPhanDao.getListLopHocPhansByMaSV(masv));
        }
        return list;
    }
}

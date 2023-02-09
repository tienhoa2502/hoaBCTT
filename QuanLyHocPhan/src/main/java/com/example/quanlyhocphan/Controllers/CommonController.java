package com.example.quanlyhocphan.Controllers;

import com.example.quanlyhocphan.Dao.AccountsDao;
import com.example.quanlyhocphan.Dao.GiaoVienDao;
import com.example.quanlyhocphan.Dao.PhongHocDao;
import com.example.quanlyhocphan.Dao.QuanLyDao;
import com.example.quanlyhocphan.Service.*;
import com.example.quanlyhocphan.Service.ServiceImp.AccountDetailService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.servlet.ModelAndView;

public class CommonController {
    @Autowired
    public PasswordEncoder passwordEncoder;
    ModelAndView mv = new ModelAndView();
    @Autowired
    KhoaService khoaService;

    @Autowired
    HocPhanService hocPhanService;
    @Autowired
    AccountDetailService accountDetailService;

    @Autowired
    LopHocPhanService lopHocPhanService;

    @Autowired
    NamHocHocKyService namHocHocKyService;

    @Autowired
    DangKyLopHocPhanService dangKyLopHocPhanService;

    @Autowired
    DiemThiService diemThiService;

    @Autowired
    ChuyenNganhService chuyenNganhService;
    @Autowired
    CTDTService ctdtService;

    @Autowired
    HocPhanCTDTService hocPhanCTDTService;

    @Autowired
    LichHocService lichHocService;

    @Autowired
    GiaoVienDao giaoVienDao;

    @Autowired
    PhongHocDao phongHocDao;

    @Autowired
    AccountsDao accountsDao;

    @Autowired
    SinhVienService sinhVienService;

    @Autowired
    QuanLyDao quanLyDao;
}

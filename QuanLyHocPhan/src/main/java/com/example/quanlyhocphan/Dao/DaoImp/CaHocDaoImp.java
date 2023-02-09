package com.example.quanlyhocphan.Dao.DaoImp;

import com.example.quanlyhocphan.Dao.CaHocDao;
import com.example.quanlyhocphan.Entities.CaHoc;
import com.example.quanlyhocphan.Entities.Mapper.CaHocMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class CaHocDaoImp implements CaHocDao {
    @Autowired
    JdbcTemplate jdbcTemplate;
    @Override
    public CaHoc getCaHoc(String ma) {
        String sql = "select*from CaHoc where MaCaHoc = '"+ma+"'";
        return jdbcTemplate.query(sql,new CaHocMapper()).get(0);
    }

    @Override
    public CaHoc getCaHocByMaLopMaHP(int malop,int mahocphan){
        String sql= "select ch.macahoc,ch.cahoc,ch.giobatdau,ch.gioketthuc from cahoc ch,lichhoc lh, lophocphan lhp where ch.macahoc = lh.macahoc"+
        " and lhp.malichhoc = lh.malichhoc and lhp.mahp = "+mahocphan+" and lhp.malop ="+malop+";";
        return jdbcTemplate.query(sql, new CaHocMapper()).get(0);
    }
}

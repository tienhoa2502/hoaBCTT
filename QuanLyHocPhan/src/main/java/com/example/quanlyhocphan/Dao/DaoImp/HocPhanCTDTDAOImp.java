package com.example.quanlyhocphan.Dao.DaoImp;

import com.example.quanlyhocphan.Dao.HocPhanCTDTDao;
import com.example.quanlyhocphan.Entities.HocPhanCTDT;
import com.example.quanlyhocphan.Entities.Mapper.HocPhanCTDTMapper;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class HocPhanCTDTDAOImp implements HocPhanCTDTDao {
    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public int insertHocPhanCTDT(HocPhanCTDT hocPhanCTDT) {
        String sql = "insert into HocPhanCTDT values(?,?)";
        return jdbcTemplate.update(sql,new Object[]{hocPhanCTDT.getCtdt().getMaCTDT(),hocPhanCTDT.getHocPhan().getMaHocPhan()});
    }

    @Override
    public List<HocPhanCTDT> getListByMaSV(String masv){
        String sql = "select hpcd.mahp,hpcd.mactdt from hocphan hp join hocphanctdt hpcd on hp.mahp = hpcd.mahp join "+
        " chuongtrinhdaotao dt on dt.mactdt = hpcd.mactdt join chuyennganh cn on cn.machuyennganh = dt.machuyennganh join sinhvien sv on cn.machuyennganh = sv.machuyennganh "+
        " where sv.masv = '"+masv+"' and dt.nienkhoa = "+CDchuoi(masv)+";";
        return jdbcTemplate.query(sql, new HocPhanCTDTMapper());
    }
    public int CDchuoi(String masv){
        // String masvx = masv.substring(0,3);
        // System.out.println(masvx);
        int maone = Integer.parseInt(masv.substring(0,2));
        return maone;
    }

    @Override
    public List<HocPhanCTDT> getListHPCTDT(String mactdt) {
        String sql = "select*from hocphanctdt where mactdt = '"+mactdt+"'";
        return jdbcTemplate.query(sql,new HocPhanCTDTMapper());
    }
}

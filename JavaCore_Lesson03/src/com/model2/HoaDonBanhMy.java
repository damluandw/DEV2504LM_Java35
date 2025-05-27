package com.model2;

import java.util.Date;

public class HoaDonBanhMy {
    int maHoaDon;
    Date ngayLapHoaDon;
    String tenKhachHang;
    String diaChi;
    int soLuong;
    float gia;
    float tongTien;
    float tienKhuyenMai;
    float tongTienTT;

    public HoaDonBanhMy(){

    }

    public HoaDonBanhMy(int maHoaDon, Date ngayLapHoaDon, String tenKhachHang, String diaChi, int soLuong, float gia) {
        this.maHoaDon = maHoaDon;
        this.ngayLapHoaDon = ngayLapHoaDon;
        this.tenKhachHang = tenKhachHang;
        this.diaChi = diaChi;
        this.soLuong = soLuong;
        this.gia = gia;
        this.tongTien = soLuong *gia;
        this.tienKhuyenMai = tinhTienKmai(soLuong);
        this.tongTienTT = this.tongTien -this.tienKhuyenMai;
    }


    public float tinhTienKmai(int soLuong){
        float tienKhuyenMai=0;
        if(soLuong>=10){
            tienKhuyenMai =  soLuong * this.gia * 0.1f ;
        }else if(soLuong>=100){

            tienKhuyenMai = this.tongTien *0.2f;
        }
        return tienKhuyenMai;
    }

    public void nhapHoaDon(int maHoaDon, Date ngayLapHoaDon, String tenKhachHang, String diaChi, int soLuong, float gia)
    {

    }

    public void inHoaDon(){

    }


}

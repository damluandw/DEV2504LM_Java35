import com.model.Student;

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {
        /*
        Vòng lặp
         1. while
         systax: while(mênh_đề_điều_kiện){
                      khối_lệnh_thực_thi
                  }
         - Lưu ý: có thể khối_lệnh_thực_thi sẽ 0 được chạy lần nào
         2. do while
         systax: do{
                      khối_lệnh_thực_thi
                  }while(mênh_đề_điều_kiện)
         - Lưu ý: chắc chắn khối_lệnh_thực_thi sẽ được chạy 1 lần
         3. for
         systax: for(biến_khởi_tạo; mênh_đề_điều_kiện; biến_tăng/giảm){
                    khối_lệnh_thực_thi
                }
         - Lưu ý: + các mệnh đề có thể khuyết
                   + Khi khuyết cần chú ý vòng lặp vô hạn
         4. for each
         systax: for( kiểu_dữ_liệu tên_biến : mảng/list){
                        khối_lệnh_thực_thi
                    }
          - Lưu ý: + Sử dụng foreach khi cần đưa ra thông tin
                   + Khó xử lý khi muốn gán dữ liệu cho mảng/list
                   + lấy dữ liệu của mảng thì gọi theo tên_biến
        */

        /// Bài mới
        // khai báo 1 object mới
        // new - khởi tạo ô nhớ
        // systax: tên_class tên_object = new tên_class();
        Student student = new Student();
        //sử dụng phương thức/field
        // systax: tên_object.tên_phương_thức/tên_field;
        student.Input();
        student.Output();

        Student student2 = new Student(2,"Devmaster",12);
        student2.Output();



    }
}
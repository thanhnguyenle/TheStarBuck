package vn.edu.hcmuaf.fit.laptrinhweb.db;

public class QUERIES {
//    ACCOUNT
    public static class ACCOUNT {
        public static final String GET_LIST = "select * from Account";
        public static final String CREATE = "insert into Account values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        public static final String DELETE = "delete from Account where id_ac = ?";
        public static final String GET_ITEM_BYID = "select * from Account where id_ac = ?";
        public static final String GET_ITEM_BYNAME = "select * from Account where ac_name = ?";
        public static final String LOGIN = "select * from Account where ac_username = ? and ac_password = ?";
        public static final String GET_ITEM_BYUSERNAME = "select * from Account where ac_username = ?";
        public static final String GET_ITEM_BYEMAIL = "select * from Account where ac_email = ?";
    }

//    PRODUCT
public static class PRODUCT {
    public static final String GET_LIST = "select * from Product";
    public static final String CREATE = "insert into Product values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    public static final String DELETE = "delete from Product where id_pr = ?";
    public static final String GET_ITEM_BYID = "select * from Product where id_pr = ?";
    public static final String GET_ITEM_BYNAME = "select * from Product where pr_name = ?";
}
// Slider
public static class SLIDER {
    public static final String CREATE = "insert into Slide values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    public static final String DELETE = "delete from Product where id_sl = ?";
    public static final String GETBANNER = "SELECT * FROM slide WHERE sl_note=? ORDER BY createdDate DESC  LIMIT 5";
}
}

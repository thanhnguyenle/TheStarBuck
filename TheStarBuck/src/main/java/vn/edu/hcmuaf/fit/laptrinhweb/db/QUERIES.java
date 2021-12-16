package vn.edu.hcmuaf.fit.laptrinhweb.db;

public class QUERIES {
//    ACCOUNT
    public static class ACCOUNT {
        public static final String GET_LIST = "select * from Account";
        public static final String CREATE = "insert into Account values (%s, %s, %s, %s, %d, %s, %s, %s, %s, null, null, null, null, null, %d, %s, %s, %s, %s)";
        public static final String DELETE = "delete from Account where id_ac = %s";
        public static final String GET_ITEM_BYID = "select * from Account where id_ac = %s";
        public static final String GET_ITEM_BYNAME = "select * from Account where ac_name = N'%s'";
    }

//    PRODUCT
}

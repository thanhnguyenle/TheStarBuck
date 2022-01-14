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
        public static final String UPDATE = "update Account set ac_active = ?, ac_lastLogin = ?, ac_groupId = ?, modifiedDate = ?, modifiedBy = ?  where id_ac = ?";
    }

//    PRODUCT
public static class PRODUCT {
    public static final String GET_LIST = "select * from Product";
    public static final String CREATE = "insert into Product values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    public static final String DELETE = "delete from Product where id_pr = ?";
    public static final String GET_ITEM_BYID = "select * from Product where id_pr = ?";
    public static final String GET_ITEM_BYNAME = "select * from Product where pr_name = ?";
    public static final String UPDATE = "update Product set pr_name = ?, pr_csId = ?, pr_ingredients = ?, pr_price = ?, pr_discount = ?, pr_quantity = ?, pr_active = ?, pr_hot = ?, pr_view = ?, pr_description = ?, pr_image = ?, pr_descriptionSeo = ?, pr_keywordSeo = ?, pr_titleSeo = ?, pr_note = ?, modifiedDate = ?, modifiedBy = ? where id_pr = ?";
}

//CATEGORY
public static class CATEGORY{
        public static  final String GET_LIST = "select * from Category";
        public static  final String CREATE = "insert into Category values (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        public static  final String DELETE = "delete from Category where id_cs = ?";
        public static  final String UPDATE = "update Category set cs_name = ?, cs_icon = ?, cs_avatar = ?, cs_active = ?, modifiedDate = ?, modifiedBy = ? where id_cs = ?";
        public static  final String GET_ITEM_BYID = "select * from Category where id_cs = ?";
}

// Slider
public static class SLIDER {
    public static final String CREATE = "insert into Slide values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    public static final String DELETE = "delete from Product where id_sl = ?";
    public static final String GETBANNER = "SELECT * FROM slide WHERE sl_note=? ORDER BY createdDate DESC  LIMIT ?";
}

//TOPPING
public static class TOPPING{
    public static  final String GET_LIST = "select * from Topping";
    public static  final String CREATE = "insert into Topping values (?, ?, ?, ?, ?, ?, ?, ?)";
    public static  final String DELETE = "delete from Topping where id_tp = ?";
    public static  final String UPDATE = "update Topping set tp_name = ?, tp_quantity = ?, tp_price = ?, modifiedDate = ?, modifiedBy = ? where id_tp = ?";
    public static  final String GET_ITEM_BYID = "select * from Topping where id_tp = ?";
}

//SHIPPER
public static class SHIPPER{
    public static  final String GET_LIST = "select * from Shipper";
    public static  final String CREATE = "insert into Shipper values (?, ?, ?, ?, ?, ?, ?, ?)";
    public static  final String DELETE = "delete from Shipper where id_sh = ?";
    public static  final String UPDATE = "update Shipper set sh_name = ?, sh_mobile = ?, sh_adress = ?, modifiedDate = ?, modifiedBy = ? where id_sh = ?";
    public static  final String GET_ITEM_BYID = "select * from Shipper where id_sh = ?";
}

    //CONTACT
    public static class CONTACT{
        public static  final String GET_LIST = "select * from Contact";
        public static  final String CREATE = "insert into Contact values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        public static  final String DELETE = "delete from Contact where id_co = ?";
        public static  final String UPDATE = "update Contact set co_active = ?, modifiedDate = ?, modifiedBy = ? where id_co = ?";
        public static  final String GET_ITEM_BYID = "select * from Contact where id_co = ?";
    }
}

package vn.edu.hcmuaf.fit.laptrinhweb.model;

public class Topping extends AbsModel{
    private String id;
    private String name;
    private String quantify;

    public Topping() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getQuantify() {
        return quantify;
    }

    public void setQuantify(String quantify) {
        this.quantify = quantify;
    }
}

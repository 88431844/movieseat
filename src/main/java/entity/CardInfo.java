package entity;

public class CardInfo {
    private Integer id;

    private String name;

    private Double price;

    private String carddesc;

    private Integer discount;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getCarddesc() {
        return carddesc;
    }

    public void setCarddesc(String carddesc) {
        this.carddesc = carddesc == null ? null : carddesc.trim();
    }

    public Integer getDiscount() {
        return discount;
    }

    public void setDiscount(Integer discount) {
        this.discount = discount;
    }
}
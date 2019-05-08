// Copyright 2018 Mobvoi Inc. All Rights Reserved.

package dto;

/**
 * created by zhhgao@mobvoi.com on 2019-05-08
 */
public class CardInfoDto {
  private Integer id;

  private String name;
  private String oldName;

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

  public String getOldName() {
    return oldName;
  }

  public void setOldName(String oldName) {
    this.oldName = oldName;
  }
}
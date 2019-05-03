/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Sandeep.vani
 */
public class Cupon {
    
    private Integer id;
    private Integer user_id;
    private String cupon_code;
    private String expiry_date;
    private Integer reddemption_limit;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public String getCupon_code() {
        return cupon_code;
    }

    public void setCupon_code(String cupon_code) {
        this.cupon_code = cupon_code;
    }

    public String getExpiry_date() {
        return expiry_date;
    }

    public void setExpiry_date(String expiry_date) {
        this.expiry_date = expiry_date;
    }

    public Integer getReddemption_limit() {
        return reddemption_limit;
    }

    public void setReddemption_limit(Integer reddemption_limit) {
        this.reddemption_limit = reddemption_limit;
    }
    
    
}

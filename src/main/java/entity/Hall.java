package entity;

public class Hall {
    private Integer id;

    private Integer cinemaid;

    private String hallname;

    private Integer seatrows;

    private Integer seatcols;

    private String type;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCinemaid() {
        return cinemaid;
    }

    public void setCinemaid(Integer cinemaid) {
        this.cinemaid = cinemaid;
    }

    public String getHallname() {
        return hallname;
    }

    public void setHallname(String hallname) {
        this.hallname = hallname == null ? null : hallname.trim();
    }

    public Integer getSeatrows() {
        return seatrows;
    }

    public void setSeatrows(Integer seatrows) {
        this.seatrows = seatrows;
    }

    public Integer getSeatcols() {
        return seatcols;
    }

    public void setSeatcols(Integer seatcols) {
        this.seatcols = seatcols;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }
}
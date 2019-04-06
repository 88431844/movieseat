
package dto;

public class HallDto {
  private Integer id;

  private Integer cinemaid;
  private Integer oldCinemaId;
  private String cinemaname;

  private String hallname;
  private String oldHallName;

  private Integer seatrows;

  private Integer seatcols;

  private Integer seatSum;

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

  public Integer getOldCinemaId() {
    return oldCinemaId;
  }

  public void setOldCinemaId(Integer oldCinemaId) {
    this.oldCinemaId = oldCinemaId;
  }

  public String getCinemaname() {
    return cinemaname;
  }

  public void setCinemaname(String cinemaname) {
    this.cinemaname = cinemaname;
  }

  public String getHallname() {
    return hallname;
  }

  public void setHallname(String hallname) {
    this.hallname = hallname;
  }

  public String getOldHallName() {
    return oldHallName;
  }

  public void setOldHallName(String oldHallName) {
    this.oldHallName = oldHallName;
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
    this.type = type;
  }

  public Integer getSeatSum() {
    if (null != seatrows && null != seatcols){
      return seatrows * seatcols;
    }
    else {
      return 0;
    }

  }

  public void setSeatSum(Integer seatSum) {
    this.seatSum = seatSum;
  }
}
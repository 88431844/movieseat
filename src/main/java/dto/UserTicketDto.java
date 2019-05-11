
package dto;

public class UserTicketDto {

  private int ticketId;

  private int cinemaId;
  private String cinemaName;
  private String cinemaAddr;

  private int hallId;
  private String hallName;

  private int movieId;
  private String movieName;

  private String day;
  private String time;


  private int seatId;
  private int seatRow;
  private int seatCol;

  public int getTicketId() {
    return ticketId;
  }

  public void setTicketId(int ticketId) {
    this.ticketId = ticketId;
  }

  public int getCinemaId() {
    return cinemaId;
  }

  public void setCinemaId(int cinemaId) {
    this.cinemaId = cinemaId;
  }

  public String getCinemaName() {
    return cinemaName;
  }

  public void setCinemaName(String cinemaName) {
    this.cinemaName = cinemaName;
  }

  public String getCinemaAddr() {
    return cinemaAddr;
  }

  public void setCinemaAddr(String cinemaAddr) {
    this.cinemaAddr = cinemaAddr;
  }

  public int getHallId() {
    return hallId;
  }

  public void setHallId(int hallId) {
    this.hallId = hallId;
  }

  public String getHallName() {
    return hallName;
  }

  public void setHallName(String hallName) {
    this.hallName = hallName;
  }

  public int getMovieId() {
    return movieId;
  }

  public void setMovieId(int movieId) {
    this.movieId = movieId;
  }

  public String getMovieName() {
    return movieName;
  }

  public void setMovieName(String movieName) {
    this.movieName = movieName;
  }

  public String getDay() {
    return day;
  }

  public void setDay(String day) {
    this.day = day;
  }

  public String getTime() {
    return time;
  }

  public void setTime(String time) {
    this.time = time;
  }

  public int getSeatRow() {
    return seatRow;
  }

  public void setSeatRow(int seatRow) {
    this.seatRow = seatRow;
  }

  public int getSeatCol() {
    return seatCol;
  }

  public void setSeatCol(int seatCol) {
    this.seatCol = seatCol;
  }

  public int getSeatId() {
    return seatId;
  }

  public void setSeatId(int seatId) {
    this.seatId = seatId;
  }
}
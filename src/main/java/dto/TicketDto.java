package dto;

public class TicketDto {
    private Integer id;

    private Integer movieid;
    private int oldMovieId;
    private String movieName;

    private Integer cinemaid;
    private int oldCinemaId;
    private String cinemaName;


    private String time;
    private String oldTime;

    private Double price;
    private Double olePrice;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getMovieid() {
        return movieid;
    }

    public void setMovieid(Integer movieid) {
        this.movieid = movieid;
    }

    public Integer getCinemaid() {
        return cinemaid;
    }

    public void setCinemaid(Integer cinemaid) {
        this.cinemaid = cinemaid;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time == null ? null : time.trim();
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getCinemaName() {
        return cinemaName;
    }

    public void setCinemaName(String cinemaName) {
        this.cinemaName = cinemaName;
    }

    public int getOldMovieId() {
        return oldMovieId;
    }

    public void setOldMovieId(int oldMovieId) {
        this.oldMovieId = oldMovieId;
    }

    public int getOldCinemaId() {
        return oldCinemaId;
    }

    public void setOldCinemaId(int oldCinemaId) {
        this.oldCinemaId = oldCinemaId;
    }

    public String getOldTime() {
        return oldTime;
    }

    public void setOldTime(String oldTime) {
        this.oldTime = oldTime;
    }

    public Double getOlePrice() {
        return olePrice;
    }

    public void setOlePrice(Double olePrice) {
        this.olePrice = olePrice;
    }
}


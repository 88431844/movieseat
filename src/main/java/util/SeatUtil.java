
package util;

import dto.SeatInfo;
import java.util.ArrayList;
import java.util.List;

public class SeatUtil {

  public static List<SeatInfo> getSeat(int seatRows,int seatCols){
    List<SeatInfo> retList = new ArrayList<>();

    StringBuilder cols = new StringBuilder();
    for (int j = 0; j < seatCols; j++) {
      if (j == 0) {
        cols.append("\"");
      }
      cols.append("a");

      if (j == (seatCols - 1)) {
        cols.append("\"");
      }
    }

    String colsStr = cols.toString();
    for (int i = 0; i < seatRows; i++) {
      String seatStr;

      if (i != (seatRows - 1) ){
        seatStr = colsStr + ",";
      }
      else {
        seatStr = colsStr;
      }

      if (i == (seatRows / 2)){
        String sub = colsStr.substring(0,(colsStr.length()/2 -1));
        seatStr = sub + "rr" + sub.replace("\"","") + "\",";
      }
      SeatInfo seatInfo = new SeatInfo();
      seatInfo.setSeat(seatStr);
      retList.add(seatInfo);
    }

    return retList;
  }

}
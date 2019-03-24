package util;

import java.util.ArrayList;
import java.util.List;

public class ListUtil {

    public static <T> List<List<T>> subList(List<T> list, int pageSize) {

        int listSize = list.size();
        int page = (listSize + (pageSize - 1)) / pageSize;

        List<List<T>> listArray = new ArrayList<List<T>>();
        int fromIndex = 0;
        int toIndex = 0;
        for (int i = 1; i < page; i++) {
            toIndex = i * pageSize;
            List<T> subList = list.subList(fromIndex, toIndex);
            fromIndex = toIndex;
            listArray.add(subList);
        }
        listArray.add(list.subList(fromIndex, listSize));
        return listArray;
    }
}

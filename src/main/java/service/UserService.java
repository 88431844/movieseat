package service;

import dto.ItemInfoDto;
import dto.MuserDto;
import entity.Muser;

import java.util.List;

public interface UserService {
    int haveUser(MuserDto muserDto);

    int registerUser(MuserDto muserDto);

    Muser userLogin(MuserDto muserDto);

    int getUserIntegral(int userId);

    void updateUserIntegral(int userId, int integral);

    void costUserIntegral(int userId, int id);

    List<ItemInfoDto> getUserOrder(int userId);

    void delOrder(int id);
}

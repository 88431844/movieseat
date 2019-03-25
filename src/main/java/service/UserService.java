package service;

import dto.MuserDto;
import entity.Muser;

public interface UserService {
    int haveUser(MuserDto muserDto);

    int registerUser(MuserDto muserDto);

    Muser userLogin(MuserDto muserDto);
}

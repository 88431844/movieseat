// Copyright 2018 Mobvoi Inc. All Rights Reserved.

package controller.back;

import dto.CardInfoDto;
import entity.CardInfo;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import service.CardService;
import util.LoginUtil;

/**
 * created by zhhgao@mobvoi.com on 2019-05-08
 */
@Controller
@RequestMapping("/card")
public class CardController {
  @Autowired
  private CardService cardService;
  private Logger log = Logger.getLogger(this.getClass());

  @RequestMapping("/toAddCard")
  public ModelAndView toAddCard(HttpSession session) {
    ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
    if (null == modelAndView.getViewName()) {
      modelAndView.setViewName("back/card/addCard");
    }

    return modelAndView;
  }

  @RequestMapping("/addCard")
  public ModelAndView addCard(HttpSession session, CardInfoDto cardInfoDto) {
    ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
    if (null == modelAndView.getViewName()) {
      modelAndView.setViewName("back/card/listCard");
    }

    if (0 == cardService.have(cardInfoDto.getName())) {
      cardService.add(cardInfoDto);
      modelAndView.addObject("message", "添加成功");
    } else {
      modelAndView.addObject("message", "添加失败，名称重复");
    }

    return queryCard(modelAndView);
  }

  @RequestMapping("/delCard")
  public ModelAndView delCard(HttpSession session, @RequestParam("id") int id) {
    ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
    if (null == modelAndView.getViewName()) {
      modelAndView.setViewName("back/card/listCard");
    }
    if (1 == cardService.del(id)) {
      modelAndView.addObject("message", "删除成功");
    } else {
      modelAndView.addObject("message", "删除失败");
    }
    return queryCard(modelAndView);
  }

  @RequestMapping("/toEditCard")
  public ModelAndView toEditCard(HttpSession session, @RequestParam("id") int id) {
    ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
    if (null == modelAndView.getViewName()) {
      modelAndView.setViewName("back/card/editCard");
    }
    CardInfo cardInfo = cardService.get(id);
    modelAndView.addObject("cardInfo", cardInfo);

    return modelAndView;
  }

  @RequestMapping("/editCard")
  public ModelAndView editCard(HttpSession session, CardInfoDto cardInfoDto) {
    ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
    if (null == modelAndView.getViewName()) {
      modelAndView.setViewName("back/card/listCard");
    }
    int haveCard = 0;
    if (!cardInfoDto.getOldName().equals(cardInfoDto.getName())) {
      haveCard = cardService.have(cardInfoDto.getName());
    }
    if (haveCard > 0) {
      modelAndView.addObject("message", "修改失败，名称重复");
      return queryCard(modelAndView);
    }

    int haveEdit = cardService.edit(cardInfoDto);
    if (haveEdit > 0) {
      modelAndView.addObject("message", "修改成功");
    } else {
      modelAndView.addObject("message", "修改失败");
    }
    return queryCard(modelAndView);
  }

  @RequestMapping("/listCard")
  public ModelAndView listCard(HttpSession session) {
    ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
    if (null == modelAndView.getViewName()) {
      return queryCard(modelAndView);
    }
    return modelAndView;
  }

  @RequestMapping("/buyCard")
  public ModelAndView buyCard(HttpSession session) {
    ModelAndView modelAndView = new ModelAndView();
    int userId = (int)session.getAttribute("userId");
    //TODO
    return queryUserCard(modelAndView,userId);
  }

  @RequestMapping("/userCardList")
  public ModelAndView userCardList(@RequestParam("userId") int userId) {
    ModelAndView modelAndView = new ModelAndView();
    return queryUserCard(modelAndView,userId);
  }

  private ModelAndView queryUserCard(ModelAndView modelAndView,int userId) {
    List<CardInfoDto> cardInfoDtoList = cardService.list();
    if (0 == cardInfoDtoList.size()) {
      modelAndView.addObject("message", "查询列表为空");
    }
    CardInfoDto cardInfoDto = cardService.getCardInfoByUserId(userId);
    modelAndView.addObject("cardInfoDto",cardInfoDto);
    modelAndView.addObject("cardInfoDtoList", cardInfoDtoList);
    modelAndView.setViewName("front/user/listCard");
    return modelAndView;
  }

  private ModelAndView queryCard(ModelAndView modelAndView) {
    List<CardInfoDto> list = cardService.list();
    if (0 == list.size()) {
      modelAndView.addObject("message", "查询列表为空");
    }
    modelAndView.addObject("cardList", list);
    modelAndView.setViewName("back/card/listCard");
    return modelAndView;
  }
}
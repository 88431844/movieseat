
package controller.back;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import dto.CinemaDto;
import dto.HallDto;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import service.CinemaService;
import service.HallService;
import util.LoginUtil;

@Controller
@RequestMapping("/hall")
public class HallController {

  private Logger log = Logger.getLogger(this.getClass());
  @Autowired
  private CinemaService cinemaService;
  @Autowired
  private HallService hallService;


  @RequestMapping("/toAddHall")
  public ModelAndView toAddHall(HttpSession session) {
    ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
    if (null == modelAndView.getViewName()) {
      modelAndView.setViewName("back/hall/addHall");
    }
    List<CinemaDto> cinemaList = cinemaService.listCinema();
    modelAndView.addObject("cinemaList",cinemaList);
    return modelAndView;
  }

  @RequestMapping("/addHall")
  public ModelAndView addHall(HttpSession session,HallDto hallDto) {
    ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
    if (null == modelAndView.getViewName()) {
      modelAndView.setViewName("back/hall/listHall");
    }

    if (0 == hallService.haveHall(hallDto.getCinemaid(),hallDto.getHallname())){
      hallService.addHall(hallDto);
      modelAndView.addObject("message","添加成功");
    }
    else {
      modelAndView.addObject("message","添加失败，记录重复");
    }
    return queryHall(modelAndView);
  }

  @RequestMapping("/delHall")
  public ModelAndView delHall(HttpSession session, @RequestParam("id") int id) {
    ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
    if (null == modelAndView.getViewName()) {
      modelAndView.setViewName("back/hall/listHall");
    }

    if (1 == hallService.delHall(id)){
      modelAndView.addObject("message","删除成功");
    }
    else {
      modelAndView.addObject("message","删除失败");
    }
    return queryHall(modelAndView);
  }

  @RequestMapping("/toEditHall")
  public ModelAndView toEditHall(HttpSession session, @RequestParam("id") int id) {
    ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
    if (null == modelAndView.getViewName()) {
      modelAndView.setViewName("back/hall/editHall");
    }

    HallDto hallDto = hallService.getHall(id);
    modelAndView.addObject("hall", hallDto);
    return modelAndView;
  }

  @RequestMapping("/editHall")
  public ModelAndView editHall(HttpSession session,HallDto hallDto) {
    ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
    if (null == modelAndView.getViewName()) {
      modelAndView.setViewName("back/hall/listHall");
    }
    int haveHall = 0;
    if (!hallDto.getHallname().equals(hallDto.getOldHallName()) || !hallDto.getCinemaid().equals(hallDto.getOldCinemaId())){
      haveHall = hallService.haveHall(hallDto.getCinemaid(),hallDto.getHallname());
    }
    if (haveHall > 0){
      modelAndView.addObject("message", "修改失败，记录重复");
      return queryHall(modelAndView);
    }

    int haveEdit = hallService.editHall(hallDto);
    if (haveEdit > 0) {
      modelAndView.addObject("message", "修改成功");
    } else {
      modelAndView.addObject("message", "修改失败");
    }
    return queryHall(modelAndView);
  }

  @RequestMapping("/listHall")
  public ModelAndView listHall(HttpSession session) {
    ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
    if (null == modelAndView.getViewName()) {
      return queryHall(modelAndView);
    }
    return modelAndView;
  }

  private ModelAndView queryHall(ModelAndView modelAndView) {
    List<HallDto> list = hallService.listHall();
    if (0 == list.size()) {
      modelAndView.addObject("message", "查询列表为空");
    }
    modelAndView.addObject("hallList", list);
    modelAndView.setViewName("back/hall/listHall");
    return modelAndView;
  }

  @RequestMapping("/getHallByCinemaId")
  @ResponseBody
  public void getHallByCinemaId(HttpServletResponse response, @RequestParam("cinemaId") int cinemaId) {

    try {
      List<HallDto> hallDtoList = hallService.getHallByCinemaId(cinemaId);
      if (hallDtoList.size() == 0){
        HallDto hallDto = new HallDto();
        hallDto.setId(0);
        hallDto.setHallname("请先添加对应影院的影厅信息");
        hallDtoList.add(hallDto);
      }
      JSONArray json = JSONArray.parseArray(JSON.toJSONString(hallDtoList));
      response.setContentType("text/html;character=utf-8");
      response.getWriter().println(json);
    }catch (Exception e){
      e.printStackTrace();
    }

  }
}
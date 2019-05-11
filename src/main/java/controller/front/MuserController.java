package controller.front;

import dto.MuserDto;
import dto.TicketDto;
import dto.UserTicketDto;
import entity.Muser;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import service.MovieService;
import service.SeatService;
import service.TicketService;
import service.UserService;
import sun.swing.StringUIClientPropertyKey;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class MuserController {

  @Autowired
  private MovieService movieService;
  @Autowired
  private UserService userService;
  @Autowired
  private TicketService ticketService;
  @Autowired
  private SeatService seatService;

  @RequestMapping("/toRegisterUser")
  public String toRegisterUser() {
    return "front/user/registerUser";
  }

  @RequestMapping("/registerUser")
  public ModelAndView registerUser(MuserDto muserDto) {
    ModelAndView modelAndView = new ModelAndView();
    int haveUser = userService.haveUser(muserDto);
    if (0 == haveUser) {
      int haveRegister = userService.registerUser(muserDto);
      if (0 == haveRegister) {
        modelAndView.addObject("message", "注册失败");
      } else {
        modelAndView.addObject("message", "注册成功");
      }
    } else {
      modelAndView.addObject("message", "注册失败，用户名或昵称重复");
    }
    return MovieController.movieWallInit(modelAndView, movieService);
  }

  @RequestMapping("/toLogin")
  public String toLogin() {
    return "front/user/userLogin";
  }

  @RequestMapping("/userLogin")
  public ModelAndView userLogin(HttpSession session, MuserDto muserDto) {
    ModelAndView modelAndView = new ModelAndView();
    Muser muser = userService.userLogin(muserDto);
    if (null != muser) {
      if (StringUtils.isEmpty(muser.getNickname())) {
        modelAndView.addObject("message", "登录失败，账号或密码错误");
      } else {
        modelAndView.addObject("message", "登录成功");
        session.setAttribute("nickName", muser.getNickname());
        session.setAttribute("userId", muser.getId());
      }
    } else {
      modelAndView.addObject("message", "登录失败");
    }

    return MovieController.movieWallInit(modelAndView, movieService);
  }

  @RequestMapping("/userLogout")
  public ModelAndView userLogout(HttpSession session) {
    ModelAndView modelAndView = new ModelAndView();
    session.setAttribute("nickName", null);
    modelAndView.addObject("message", "登出成功");
    return MovieController.movieWallInit(modelAndView, movieService);

  }

  @RequestMapping("/toUserCenter")
  public ModelAndView toUserCenter(@RequestParam("userId") int userId) {
    ModelAndView modelAndView = new ModelAndView();
    return initUserTicket(modelAndView,userId);
  }

  @RequestMapping("/delUserTicket")
  public ModelAndView delUserTicket(@RequestParam("seatId") int seatId,HttpSession session) {
    ModelAndView modelAndView = new ModelAndView();
    int userId = (int)session.getAttribute("userId");
    seatService.delSeatById(seatId);
    modelAndView.addObject("message","退票成功！");

    return initUserTicket(modelAndView,userId);
  }
  private ModelAndView initUserTicket(ModelAndView modelAndView,int userId){
    List<UserTicketDto> userTicketDtoList = ticketService.getTicketByUserId(userId);
    modelAndView.setViewName("front/user/userCenter");
    modelAndView.addObject("userTicketDtoList", userTicketDtoList);
    return modelAndView;
  }
}

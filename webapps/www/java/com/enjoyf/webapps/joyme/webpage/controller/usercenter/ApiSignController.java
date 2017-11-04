package com.enjoyf.webapps.joyme.webpage.controller.usercenter;

import com.enjoyf.platform.service.point.PointActionType;
import com.enjoyf.platform.service.point.WanbaPointType;
import com.enjoyf.platform.service.usercenter.Profile;
import com.enjoyf.platform.service.usercenter.UserCenterServiceSngl;
import com.enjoyf.platform.webapps.common.ResultCodeConstants;
import com.enjoyf.platform.webapps.common.encode.JsonBinder;
import com.enjoyf.webapps.joyme.weblogic.point.PointWebLogic;
import com.enjoyf.webapps.joyme.webpage.base.mvc.BaseRestSpringController;
import net.sf.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by IntelliJ IDEA.
 * User: yongmingxu
 * Date: 12-9-25
 * Time: 上午9:43
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping(value = "/api/sign")
public class ApiSignController extends BaseRestSpringController {
    private static final Logger logger = LoggerFactory.getLogger(ApiSignController.class);

    private JsonBinder binder = JsonBinder.buildNormalBinder();
    @Resource(name = "pointWebLogic")
    private PointWebLogic pointWebLogic;

    /**
     * 用户签到接口
     *
     * @param request
     * @return
     */
    @RequestMapping(value = "/home")
    @ResponseBody
    public String home(@RequestParam(value = "profileid") String profileid, HttpServletRequest request) {
        JSONObject jsonObject = ResultCodeConstants.ERROR.getJsonObject();
        try {
            Profile profile = UserCenterServiceSngl.get().getProfileByProfileId(profileid);
            if (profile == null) {
                return ResultCodeConstants.USERCENTER_PROFILE_NOT_EXISTS.getJsonString();
            }
            int value = pointWebLogic.modifyUserPoint(PointActionType.WANBA_SIGN, profileid, DEFAULT_APPKEY, WanbaPointType.SIGN, null);
            jsonObject = ResultCodeConstants.SUCCESS.getJsonObject();
            jsonObject.put("result", value);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return jsonObject.toString();
    }


}

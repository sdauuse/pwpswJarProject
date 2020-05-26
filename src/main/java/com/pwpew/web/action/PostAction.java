package com.pwpew.web.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.pwpew.entity.TNotice;
import com.pwpew.entity.TPost;
import com.pwpew.modeldriven.PostMd;
import com.pwpew.service.PostService;
import com.pwpew.utils.FastJsonUtil;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller("postAction")
@Scope("prototype")
public class PostAction extends ActionSupport implements ModelDriven<PostMd> {

    @Autowired
    private PostService postService;

    private PostMd postMd = new PostMd();

    @Override
    public PostMd getModel() {
        return postMd;
    }


    public void list() {

        //获取页码
        int page = postMd.getPage();
        //获取每页显示多少数据
        int rows = postMd.getRows();

        //计算开始记录下标
        int firstResult = (page - 1) * rows;
        //获取数据库中的帖子总数
        Long total = postService.findPostCount(postMd);
        //分页查询帖子
        List<TPost> list = postService.findPostByPage(postMd, firstResult, rows);
        //将查询的通告进行分装，用于转换成json对象
        Map<String, Object> datagrid_result = new HashMap<String, Object>();
        datagrid_result.put("rows", list);
        datagrid_result.put("total", total);

        //转换成json对象
        HttpServletResponse response = ServletActionContext.getResponse();
        String jsonString = FastJsonUtil.toJSONString(datagrid_result);
        FastJsonUtil.write_json(response, jsonString);
    }

    public void findPostById() {

        TPost post = postService.getPostById(postMd.getPostId());

        HttpServletResponse response = ServletActionContext.getResponse();
        String jsonString = FastJsonUtil.toJSONString(post);
        // 使用JsonFormatterAddPrefix工具方法将嵌套的json转成单层结构
        jsonString = FastJsonUtil.JsonFormatterAddPrefix(jsonString, "", null);
        FastJsonUtil.write_json(response, jsonString);
    }


    public void editsubmit() {
        HttpServletResponse response = ServletActionContext.getResponse();
        try {

            postService.updateStatueAndEff(postMd);


        } catch (Exception e) {
            e.printStackTrace();
            String ajaxResult = FastJsonUtil.ajaxResult(false, "修改失败");
            FastJsonUtil.write_json(response, ajaxResult);
            return;
        }

        String ajaxResult = FastJsonUtil.ajaxResult(true, "修改成功");
        FastJsonUtil.write_json(response, ajaxResult);
    }

    public void deletePost() {
        HttpServletResponse response = ServletActionContext.getResponse();
        try {
            TPost post = new TPost();
            // 第一个为源对象，第二个为目标对象，将源对象中属性值拷贝到目标对象中，源和目标对象不能为空，属性名称一样方可拷贝
            BeanUtils.copyProperties(postMd, post);

            postService.deletePost(post);
        } catch (Exception e) {
            e.printStackTrace();
            String ajaxResult = FastJsonUtil.ajaxResult(false, "删除失败");
            FastJsonUtil.write_json(response, ajaxResult);
            return;
        }

        String jsonString = FastJsonUtil.ajaxResult(true, "删除成功");
        FastJsonUtil.write_json(response, jsonString);
    }

    // 显示帖子
    public String showPost(int postId) {
        TPost post = postService.getPostById(postId);
        ActionContext.getContext().getSession().put("post", post);
//        TPost post1 = (TPost) ActionContext.getContext().getSession().get("")

        return "showPost";
    }

    // 显示帖子列表
    public String showPostList() {
        List<TPost> postList = postService.findPostList();
        // 若session中已存在所有帖子集合，则将之删除
        if (ActionContext.getContext().getSession().containsKey("postList")) {
            ActionContext.getContext().getSession().remove("postList");
        }
        ActionContext.getContext().getSession().put("postList", postList);
        TPost post = (TPost) ActionContext.getContext().getSession().get("postList");
        return "postList";
    }


    public String showPostOfIndex() {
        List<TPost> postList1 = postService.getPostByPostType("家寻宝贝", 0, 6);
        List<TPost> postList2 = postService.getPostByPostType("家寻宝贝", 6, 6);
        List<TPost> postList3 = postService.getPostByPostType("宝贝寻家", 0, 6);
        List<TPost> postList4 = postService.getPostByPostType("宝贝寻家", 6, 6);
        List<TPost> postList5 = postService.getPostByPostType("流浪乞丐", 0, 6);
        List<TPost> postList6 = postService.getPostByPostType("流浪乞丐", 6, 6);
        List<TPost> postList7 = postService.getPostByPostType("活动报告", 0, 6);
        List<TPost> postList8 = postService.getPostByPostType("活动报告", 6, 6);
        List<TPost> postList9 = postService.getPostByPostType("打拐政策", 0, 6);
        List<TPost> postList10 = postService.getPostByPostType("打拐政策", 6, 6);
        List<TPost> postList11 = postService.getPostByPostType("志愿者指南", 0, 6);
        List<TPost> postList12 = postService.getPostByPostType("志愿者指南", 6, 6);
        HttpServletRequest request = ServletActionContext.getRequest();
        request.setAttribute("postList1", postList1);
        request.setAttribute("postList2", postList2);
        request.setAttribute("postList3", postList3);
        request.setAttribute("postList4", postList4);
        request.setAttribute("postList5", postList5);
        request.setAttribute("postList6", postList6);
        request.setAttribute("postList7", postList7);
        request.setAttribute("postList8", postList8);
        request.setAttribute("postList9", postList9);
        request.setAttribute("postList10", postList10);
        request.setAttribute("postList11", postList11);
        request.setAttribute("postList12", postList12);
        return "showPostOfIndex";
    }

    public void deletePostById() {
        HttpServletResponse response = ServletActionContext.getResponse();
        try {
            TPost post = new TPost();
            // 第一个为源对象，第二个为目标对象，将源对象中属性值拷贝到目标对象中，源和目标对象不能为空，属性名称一样方可拷贝
            post.setPostId(postMd.getPostId());

            postService.deletePost(post);
        } catch (Exception e) {
            e.printStackTrace();
            String ajaxResult = FastJsonUtil.ajaxResult(false, "删除失败");
            FastJsonUtil.write_json(response, ajaxResult);
            return;
        }

        String jsonString = FastJsonUtil.ajaxResult(true, "删除成功");
        FastJsonUtil.write_json(response, jsonString);
    }


    public String findPostListByUserId() {
        HttpServletRequest request = ServletActionContext.getRequest();

        if (postMd.getUser().getUserId() >= 1) {

            //查询没有被封禁的帖子
            postMd.setStatue("1");
            int page = postMd.getPage();
            int rows = 1;
            Long count = postService.findPostCount(postMd);
            //page<1 就赋值为1
            page = (page < 1) ? 1 : page;
            request.setAttribute("page", page);

            int firstResult = (page - 1) * rows;
            Long totalPage = count / rows;


            List<TPost> list = postService.findPostByPage(postMd, firstResult, rows);


            request.setAttribute("list", list);
            request.setAttribute("totalPage", totalPage);
            return "findPostListByUserId";
        }

        request.setAttribute("msg", "请先登录");
        return "findPostListByUserIdError";
    }

    public void updatepost() {
        HttpServletResponse response = ServletActionContext.getResponse();
        String jsonString = FastJsonUtil.ajaxResult(true, "修改成功");
        FastJsonUtil.write_json(response, jsonString);
    }
}

package com.pwpew.web.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.pwpew.entity.TComment;
import com.pwpew.entity.TNotice;
import com.pwpew.entity.TPost;
import com.pwpew.entity.TUser;
import com.pwpew.modeldriven.CommentMd;
import com.pwpew.modeldriven.PostMd;
import com.pwpew.service.CommentService;
import com.pwpew.service.PostService;
import com.pwpew.service.UserService;
import com.pwpew.utils.FastJsonUtil;
import javafx.print.PageRange;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller("postAction")
@Scope("prototype")
public class PostAction extends ActionSupport implements ModelDriven<PostMd> {

    @Autowired
    private PostService postService;
    @Autowired
    private CommentService commentService;

    @Autowired
    private UserService userService;

    private PostMd postMd = new PostMd();
    private CommentMd commentMd = new CommentMd();

    @Override
    public PostMd getModel() {
        return postMd;
    }

    public CommentMd getCommentMd() {
        return commentMd;
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

    public void findPostById(){

        TPost post = postService.getPostById(postMd.getPostId());

        HttpServletResponse response = ServletActionContext.getResponse();
        String jsonString = FastJsonUtil.toJSONString(post);
        // 使用JsonFormatterAddPrefix工具方法将嵌套的json转成单层结构
        jsonString = FastJsonUtil.JsonFormatterAddPrefix(jsonString, "", null);
        FastJsonUtil.write_json(response, jsonString);
    }


    public void editsubmit(){
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

    public void deletePost(){
        HttpServletResponse response = ServletActionContext.getResponse();
        try {
            TPost post = new TPost();
            // 第一个为源对象，第二个为目标对象，将源对象中属性值拷贝到目标对象中，源和目标对象不能为空，属性名称一样方可拷贝
            BeanUtils.copyProperties(postMd, post);

            postService.deletePost(post);
        }catch (Exception e){
            e.printStackTrace();
            String ajaxResult = FastJsonUtil.ajaxResult(false, "删除失败");
            FastJsonUtil.write_json(response, ajaxResult);
            return;
        }

        String jsonString = FastJsonUtil.ajaxResult(true,"删除成功");
        FastJsonUtil.write_json(response,jsonString);
    }

    // 显示帖子
    public String showPost() {
        int page = postMd.getPage();
        int rows = 5;

        Long count = commentService.findCommentCount(commentMd, postMd.getPostId());
        int i=0;
        if(count%rows!=0){
            i++;
        }

        Long totalPage = count/rows+i;

        if(page<1){
            page = 1;
        }else if(page>totalPage){
            page = page - 1;
        }
        if(totalPage < 1){
            totalPage = (long)1;
        }
        int firstResult = (page-1)*rows;

        TPost post = postService.getPostById(postMd.getPostId());
        List<TComment> comments = commentService.findCommentByPage(postMd.getPostId(), firstResult, rows);

        HttpServletRequest request = ServletActionContext.getRequest();
        request.setAttribute("post", post);
        request.setAttribute("comments",comments);
        request.setAttribute("page",page);
        request.setAttribute("count",count);
        request.setAttribute("totalPage",totalPage);

        return "showPost";
    }

    // 显示帖子列表
    public String showPostList(){
        postMd.setStatue("1");
        int page = postMd.getPage();
        int rows = 10;

        Long count = postService.findPostCount(postMd);
        int i=0;
        if(count%rows!=0){
            i++;
        }

        Long totalPage = count/rows+i;

        if(page<1){
            page = 1;
        }else if(page>totalPage){
            page = page - 1;
        }else if(totalPage < 1){
            totalPage = (long)1;
        }
        int firstResult = (page-1)*rows;

        List<TPost> postList = postService.findPostByPage(postMd, firstResult, rows);

        HttpServletRequest request = ServletActionContext.getRequest();
        request.setAttribute("postList",postList);
        request.setAttribute("page",page);
        request.setAttribute("count",count);
        request.setAttribute("totalPage",totalPage);

        return "postList";
    }


    public String showPostOfIndex(){
        List<TPost> postList1 = postService.getPostByPostType("家寻宝贝", 6, 0);
        List<TPost> postList2 = postService.getPostByPostType("家寻宝贝", 6, 6);
        List<TPost> postList3 = postService.getPostByPostType("宝贝寻家", 6, 0);
        List<TPost> postList4 = postService.getPostByPostType("宝贝寻家", 6, 6);
        List<TPost> postList5 = postService.getPostByPostType("流浪乞讨", 6, 0);
        List<TPost> postList6 = postService.getPostByPostType("流浪乞讨", 6, 6);
        List<TPost> postList7 = postService.getPostByPostType("活动报告", 6, 0);
        List<TPost> postList8 = postService.getPostByPostType("活动报告", 6, 6);
        List<TPost> postList9 = postService.getPostByPostType("打拐政策", 6, 0);
        List<TPost> postList10 = postService.getPostByPostType("打拐政策", 6, 6);
        List<TPost> postList11 = postService.getPostByPostType("志愿者指南", 6, 0);
        List<TPost> postList12 = postService.getPostByPostType("志愿者指南", 6, 6);
        HttpServletRequest request = ServletActionContext.getRequest();
        request.setAttribute("postList1",postList1);
        request.setAttribute("postList2",postList2);
        request.setAttribute("postList3",postList3);
        request.setAttribute("postList4",postList4);
        request.setAttribute("postList5",postList5);
        request.setAttribute("postList6",postList6);
        request.setAttribute("postList7",postList7);
        request.setAttribute("postList8",postList8);
        request.setAttribute("postList9",postList9);
        request.setAttribute("postList10",postList10);
        request.setAttribute("postList11",postList11);
        request.setAttribute("postList12",postList12);
        return "showPostOfIndex";
    }

    //在首页显示帖子的详细信息
    public String showWantedInformationOfIndex(){
        List<TPost> informationList1 = postService.getPostByPostType("家寻宝贝", 4, 0);
        List<TPost> informationList2 = postService.getPostByPostType("宝贝寻家", 4, 0);
        List<TPost> informationList3 = postService.getPostByPostType("流浪乞讨", 4, 0);
        List<TPost> informationList4 = postService.getPostByPostType("海外寻亲", 4, 0);
        List<TPost> informationList5 = postService.getPostByPostType("其他寻人", 4, 0);
        HttpServletRequest request = ServletActionContext.getRequest();
        request.setAttribute("informationList1",informationList1);
        request.setAttribute("informationList2",informationList2);
        request.setAttribute("informationList3",informationList3);
        request.setAttribute("informationList4",informationList4);
        request.setAttribute("informationList5",informationList5);
        return "wantedInformation";
    }


    //显示丢失人的详细信息
    public String showDetailedInformation(){
        int postId = postMd.getPostId();
        TPost post = postService.getPostById(postId);
        TUser user = userService.findUserByPostId(postId);
        ServletActionContext.getRequest().setAttribute("post",post);
        ServletActionContext.getRequest().setAttribute("user",user);
        return "detailedInformation";
    }

    // 发帖
    public String posting(){
        postMd.setStatue("1");
        postMd.setEffectiveness("1");

        TPost post = new TPost();
        // 第一个为源对象，第二个为目标对象，将源对象中属性值拷贝到目标对象中，源和目标对象不能为空，属性名称一样方可拷贝
        BeanUtils.copyProperties(postMd,post);

        postService.insertPost(post);
        return "posting";
    }
    //查找帖子类型
    public String showPostClass(){
        int page = postMd.getPage();
        int rows = postMd.getRows();
        int firestResult = (page-1)*rows;

        List<TPost> postClass=postService.getPostByPostType(postMd.getPostType(),rows,firestResult);
        int postCount = Math.toIntExact(postService.findPostCount(postMd));

        HttpServletRequest request = ServletActionContext.getRequest();
        request.setAttribute("postType",postMd.getPostType());
        request.setAttribute("showPostClass",postClass);
        request.setAttribute("page",page);
        request.setAttribute("postCount",postCount);
        System.out.println("****************************");
        System.out.println(postClass);
        System.out.println("****************************");
        return "showPostClass";
    }


    //搜索帖子
    public String searchPost(){
        int page = postMd.getPage();
        int rows = postMd.getRows();
        String keyword = postMd.getKeyword();
        int firestResult=(page-1)*rows;

        List<TPost> list = postService.findPostByNameOrDescribe(keyword,firestResult,rows);

        int postCount = Math.toIntExact(postService.findPostCount(postMd));
        HttpServletRequest request = ServletActionContext.getRequest();
        request.setAttribute("keyword",keyword);
        request.setAttribute("list",list);
        request.setAttribute("postCount",postCount);
        request.setAttribute("page",page);

        return "searchSuccess";
    }

    // 举报
    public String accusation(){
        postMd.setEffectiveness("0");
        postMd.setStatue("1");
        postService.updateStatueAndEff(postMd);

        TPost post = postService.getPostById(postMd.getPostId());

        HttpServletRequest request = ServletActionContext.getRequest();
        request.setAttribute("accusation","举报成功");
        request.setAttribute("post",post);
        request.setAttribute("page", postMd.getPage());

        return "accusation";
    }

}

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

import javax.servlet.http.HttpServletResponse;
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
    public String showPost(int postId) {
        TPost post = postService.getPostById(postId);
        ActionContext.getContext().getSession().put("post", post);
//        TPost post1 = (TPost) ActionContext.getContext().getSession().get("")

        return "showPost";
    }

    // 显示帖子列表
    public String showPostList(){
        List<TPost> postList = postService.findPostList();
        // 若session中已存在所有帖子集合，则将之删除
        if(ActionContext.getContext().getSession().containsKey("postList")){
            ActionContext.getContext().getSession().remove("postList");
        }
        ActionContext.getContext().getSession().put("postList", postList);
        TPost post = (TPost) ActionContext.getContext().getSession().get("postList");
        return "postList";
    }
}

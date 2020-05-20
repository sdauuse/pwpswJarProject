<%--
  Created by IntelliJ IDEA.
  User: 96989
  Date: 2020/5/18
  Time: 9:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>帖子</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/posts/post.css">
</head>
<body>
<jsp:include page="/jsps/index/picture_nav.jsp"/><%--顶部图片和导航栏集合--%>


<div id="postPage">
    <div class="post">
        <%--发帖人信息--%>
        <h4 class="poster">
            <img src="img/dilireba.jpg" >
            <br><br>
            楼主：<a href="#">加坦杰厄</a>
        </h4>
        <%--帖子内容--%>
        <div class="postDetail" align="left">
            登记信息<br>
            寻亲类别：家寻宝贝<br>
            宝贝回家编号：12138<br>
            姓    名：王语嫣 <br>
            性    别：女 <br>
            出生日期：2016年03月23日（阴历） <br>
            失踪时身高：约50CM <br>
            失踪日期：2020年05月07日（阳历） <br>
            失踪人所在省：四川省 <br>
            失踪地点：四川省古蔺县三水村4组 <br>
            失踪者特征描述：穿着淡黄的长裙，大眼睛，超级可爱。 <br>
            是否报案：是（当地派出所）<br>
            是否采集DNA：否，（已指导）经查询，父母双亲DNA已入库<br>
            其他资料： <br>
            1、失踪经过：家里有爸爸妈妈带着两个哥哥和王语嫣一起生活。一天晚上，有人看到王语嫣被三姑父王羲之抱走。家人报案，三姑夫不承认，此事不了了之。 <br>
            2、家庭成员：爷爷王重阳，父亲王翦，母亲王昭君，舅舅王莽，还有个两个哥哥分别叫王勃和王维。 <br>
            3、口音：当地口音。 <br>
            4、失踪孩子的血型或父母血型或兄弟姐妹的血型：不清楚。 <br>
            5、饮食、生活习惯：包谷饭和米饭。 <br>
            6、家庭居住地的地理环境：山区，家住木头房子，家在山上，家里有一间屋子是火炉房，火炉房连着厨房和卧室。烧煤。屋后是厕所和猪圈（在一起）。下雪。 <br>
            7、通常出行路线：步行到镇上要两个小时。 <br>
            8、其它：（1）丢失前，小姑的儿子王安石被人骗走，一群人到家里来找大姑，怀疑是大姑把小姑的儿子骗走了。这群人在家里打砸抢。 （2）疑似人贩子是三姑夫，现在60多岁，在古蔺县县城做环卫工人。（3）以下是孩子照片<br>
            <br><img src="img/goneGirl.jpg" alt="">
            <br><br>
            <div class="time">最后更新时间&nbsp;&nbsp;2020-05-08&nbsp;&nbsp;13:45</div>
            <div class="reply"><a href="#replyPoint">回复</a></div>
        </div>
        <div class="clear"></div>
    </div>
    <div class="post">
        <h4 class="poster">
            <img src="img/deadpool.jpg" ><br><br>
            用户：<a href="#">艾雷王</a>
        </h4>
        <div class="postDetail">
            回复加坦杰厄：<br>
            朋友，这么多天了，知你为《宝贝回家》辛苦，不好打扰！想问一下，我可以要求公安机关再次询问当初的嫌疑人吗？我虽识字，但具体的法规的确知之胜少，唉！请体谅我盼子心切。这是此贴父亲留言。我只能跟帖了！
            <br><br>
            <div class="time">最后更新时间&nbsp;&nbsp;2020-05-08&nbsp;&nbsp;13:55</div>
            <div class="reply"><a href="#replyPoint">回复</a></div>
        </div>
        <div class="clear"></div>
    </div>
    <div class="post">
        <h4 class="poster">
            <img src="img/tony.png" ><br><br>
            用户：<a href="#">金古桥</a>
        </h4>
        <div class="postDetail">
            回复艾雷王：<br>
            哦，天哪，真是个可怜的人呐，愿上帝保佑你！
            <br><br>
            <div class="time">最后更新时间&nbsp;&nbsp;2020-05-08&nbsp;&nbsp;14:35</div>
            <div class="reply"><a href="#replyPoint">回复</a></div>
        </div>
        <div class="clear"></div>
    </div>
    <div class="post">
        <h4 class="poster">
            <img src="img/deadpool.jpg" ><br><br>
            用户：<a href="#">艾雷王</a>
        </h4>
        <div class="postDetail">
            回复金古桥：<br>
            谢谢你，尊敬的先生，非常感谢，我相信上帝不会放弃我们的。
            <br><br>
            <div class="time">最后更新时间&nbsp;&nbsp;2020-05-08&nbsp;&nbsp;13:55</div>
            <div class="reply"><a href="#replyPoint">回复</a></div>
        </div>
        <div class="clear"></div>
    </div>
    <%--回复区域--%>
    <div class="replyArea">
        <a name="replyPoint"></a>
        <h2 id="replyTitle">回复</h2>
        <form action="replyPost" method="post">
            <textarea id="messages" name="messages" required="required" placeholder="请在这儿输入回复吧 =_="></textarea>
            上传图片<input type="file" id="imageFile" name="imageFile" accept="image/gif, image/jpeg, image/png, image/jpg">
            <div id="postSubmit">
                <input type="submit" value="提交"/>
            </div>
        </form>
    </div>
</div>




<jsp:include page="/jsps/index/footer.jsp"/><%--页脚--%>
</body>
</html>

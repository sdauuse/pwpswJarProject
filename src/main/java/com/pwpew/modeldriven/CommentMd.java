package com.pwpew.modeldriven;

import com.pwpew.entity.TComment;

/**
 * @author miaoyin
 * @date 2020/5/21 - 14:01
 * @commet:
 */
public class CommentMd extends TComment {

    // easyUi分页参数
    private int page;
    private int rows;

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getRows() {
        return rows;
    }

    public void setRows(int rows) {
        this.rows = rows;
    }
}

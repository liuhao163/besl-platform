package com.enjoyf.platform.db.usercenter;

import com.enjoyf.platform.db.DbException;
import com.enjoyf.platform.service.usercenter.activityuser.ActivityUser;
import com.enjoyf.platform.util.Pagination;
import com.enjoyf.platform.util.sql.QueryExpress;
import com.enjoyf.platform.util.sql.UpdateExpress;

import java.sql.Connection;
import java.util.List;

/**
 * @Auther: <a mailto="ericliu@straff.joyme.com">ericliu</a>
 * Create time: 15/4/10
 * Description:
 */
public interface ActivityUserAccessor {

    public ActivityUser insert(ActivityUser activityUser, Connection conn) throws DbException;

    public ActivityUser get(QueryExpress queryExpress, Connection conn) throws DbException;

    public int update(UpdateExpress updateExpress, QueryExpress queryExpress, Connection conn) throws DbException;

    public List<ActivityUser> query(QueryExpress queryExpress, Connection conn) throws DbException;

    public List<ActivityUser> query(QueryExpress queryExpress, Pagination pagination, Connection conn) throws DbException;

}

/**
 * CopyRight 2007 Fivewh.com
 */
package com.enjoyf.platform.db.account.discuz;

import com.enjoyf.platform.db.DbException;
import com.enjoyf.platform.service.account.discuz.DiscuzMember;
import com.enjoyf.platform.util.sql.QueryExpress;

import java.sql.Connection;

/**
 * @author <a href=mailto:yinpengyi@fivewh.com>Yin Pengyi</a>
 */
public interface DiscuzMemberAccessor {


    public DiscuzMember insert(DiscuzMember discuzUser, Connection conn) throws DbException;

    public DiscuzMember get(QueryExpress queryExpress, Connection conn) throws DbException;
}

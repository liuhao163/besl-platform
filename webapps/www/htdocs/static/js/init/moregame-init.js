/**
 * Created by IntelliJ IDEA.
 * User: yugao
 * Date: 12-2-3
 * Time: 下午1:56
 * To change this template use File | Settings | File Templates.
 */
define(function(require, exports, module) {
    var $ = require('../common/jquery-1.5.2');
    var header = require('../page/header');
    $(document).ready(function() {
        header.noticeSearchReTopInit();
         $('.hover-item>li').bind('mouseenter',function(){
            $(this).toggleClass(function(){
                $(this).parent().children().removeClass();
                return 'current';
            },true);
        })
    })
    require.async('../common/google-statistics');
    require.async('../common/bdhm')
});
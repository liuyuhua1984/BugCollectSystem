package com.tbug.utils;  
/** 
 * ClassName:ShowPage <br/> 
 * TODO:
 * Date:     2017年10月5日 下午3:19:28 <br/> 
 * @author   lyh 
 * @version    
 */
public class ShowPage {
	
	/**每页显示行数**/  
	public static final int PAGE_SIZE = 10;
	
	//显示当前页的前后页数  4,5,6,七,8,9,10
    public static final int  OFFSET=3;

    /** 
     * showPager:(). <br/> 
     * TODO().<br/> 
     * 显示页数
     * @author lyh 
     * @param link
     * @param page_no//当前页
     * @param page_size数页的数量
     * @param row_count总行数
     * @return 
     */  
    public  static String showPager(String link, int page_no,int page_size,long row_count){
        String url="";
        String params="";
        if(!ToolUtils.isStringNull(link)){
        	
            int pos = link.indexOf("?");

            if(pos == -1 ){
                url = link;
            }else{
            	
                url=link.substring(0,pos);
                params=link.substring(pos+1);
            }
        }


        String navibar = "<div class=\"pagination\"><ul>";
    //    int offset=OFFSET;
        //$page_size=10;
        int total_page=(int)(row_count%page_size==0?row_count/page_size:(int)Math.ceil((double)row_count/page_size));

        page_no=page_no<1?1:page_no;
        page_no=page_no>(total_page)?(total_page):page_no;
        if (page_no > 1){
            navibar += "<li><a href="+url+"?"+params+"&page=1>首页</a></li>\n <li><a href="+url+"?"+params+"&page="+(page_no-1)+">上一页</a></li>\n";
        }
        /**** 显示页数 分页栏显示11页，前5条...当前页...后5条 *****/
//      int   start_page = page_no -offset;
//       int  end_page =page_no+offset;
      int   start_page = page_no;
      int  end_page =page_no;
        if(start_page<1){
            start_page=1;
        }
        if(end_page>total_page){
            end_page=total_page;
        }
        for(int i=start_page;i<=end_page;i++){
            if(i==page_no){
                navibar+= "<li><span>"+i+"</span></li>";
            }else{
                navibar+= "<li><a href="+url+"?"+params+"&page="+i +">"+i+"</a></li>";
            }
        }

  
        
        if (page_no < total_page){
            navibar += "<li><a href="+url+"?"+params+"&page="+(page_no+1)+">下一页</a></li>\n <li><a href="+url+"?"+params+"&page="+total_page+">末页</a></li>\n ";
        }
        if(total_page>0){
            navibar+="<li><a>"+page_no +"/"+total_page+"</a></li>";
        }

        if (row_count > 0) {
            navibar += "<li><a>共" +row_count + "条</a></li>";
        }
        if (row_count > 1){
        	navibar+="<li><form action="+url+" method='GET' name='jumpForm'><input type='number' name='page' value=''  />"
        			+ "  <button type='submit' class='btn'>跳转</button> </form></li>";
        }
        navibar+="</ul></div>";

        return navibar;
    }
    
    
    public static   String showSimplePager(String link, int page_no,int page_size,long row_count){
        String url="";
        String params="";
        if(!ToolUtils.isStringNull(link)){
        	
            int pos = link.indexOf("?");

            if(pos == -1 ){
                url = link;
            }else{
            	
                url=link.substring(0,pos);
                params=link.substring(pos+1);
            }
        }


        String navibar = "<div class=\"pagination\"><ul>";
        int offset=OFFSET;
        //$page_size=10;
        int total_page=(int)(row_count%page_size==0?row_count/page_size:(int)Math.ceil((double)row_count/page_size));

        page_no=page_no<1?1:page_no;
        page_no=page_no>(total_page)?(total_page):page_no;
        if (page_no > 1){
            navibar += "<li><a href="+url+"?"+params+"&page=1>首页</a></li>\n <li><a href="+url+"?"+params+"&page="+(page_no-1)+">上一页</a></li>\n";
        }
        /**** 显示页数 分页栏显示11页，前5条...当前页...后5条 *****/
      int   start_page = page_no -offset;
       int  end_page =page_no+offset;
        if(start_page<1){
            start_page=1;
        }
        if(end_page>total_page){
            end_page=total_page;
        }
        for(int i=start_page;i<=end_page;i++){
            if(i==page_no){
                navibar+= "<li><span>"+i+"</span></li>";
            }else{
                navibar+= "<li><a href="+url+"?"+params+"&page="+i +">"+i+"</a></li>";
            }
        }

        if (page_no < total_page){
            navibar += "<li><a href="+url+"?"+params+"&page="+(page_no+1)+">下一页</a></li>\n <li><a href="+url+"?"+params+"&page="+total_page+">末页</a></li>\n ";
        }
        if(total_page>0){
            navibar+="<li><a>"+page_no +"/"+total_page+"</a></li>";
        }

       // $navibar.="<li><a>共".$row_count."条</a></li>";
 
        //$jump ="<li><form action='$url' method='GET' name='jumpForm'><input type='text' name='page_no' value='$page_no'></form></li>";

    
        navibar+="</ul></div>";

        //error_log("bootstarp::".$navibar);
        return navibar;
    }
}
  
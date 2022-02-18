<%-- 
    Document   : table_bus
    Created on : Dec 17, 2021, 3:46:44 AM
    Author     : Truc Lam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<div class="right_col" role="main">
    
    <div class="page-title">
                        <div class="title_left">
                                <h3>BẢNG DỮ LIỆU NGƯỜI DÙNG</h3>
                        </div>

                            
                        <div class="title_right">
                            <form action="">
                        
                                <div class="col-md-5 col-sm-5  form-group pull-right top_search">
                                        <div class="input-group">
                                                <input type="text" class="form-control" name="kw" placeholder="Tìm kiếm người dùng...">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" type="submit">
                                                            <i aria-hiden ="true"></i>
                                                            Tìm!</button>
                                                </span>
                                        </div>
                                </div>
                                
                            </form>
                                
                                
                        </div>
                </div>
        <div class="clearfix"></div>
                <div class="row">

                    <div class="col-md-12 col-sm-12  " id="table-buses">
                            <div class="x_panel">
                              <div class="x_title">
                                <h2>Cập nhật<small>người dùng</small></h2>
                                <ul class="nav navbar-right panel_toolbox">
                                  <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                  </li>
                                  <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                        <a class="dropdown-item" href="#">Settings 1</a>
                                        <a class="dropdown-item" href="#">Settings 2</a>
                                      </div>
                                  </li>
                                  <li><a class="close-link"><i class="fa fa-close"></i></a>
                                  </li>
                                </ul>
                                <div class="clearfix"></div>
                              </div>

                              <div class="x_content">


                                <div class="table-responsive">
                                  <table class="table table-striped jambo_table bulk_action">
                                    <thead>
                                      <tr class="headings">

                                        <th class="column-title" id="col-num">Id </th>
                                        <th class="column-title">Tên người dùng </th>
                                        <th class="column-title">Username </th>
                                        <th class="column-title">Email </th>
                                        <th class="column-title">Số điện thoại </th>
                                        <th class="column-title">Vai trò </th>                                        
                                        <th class="column-title" id="col-image">Hình ảnh </th>                                        
                                        <th class="column-title no-link last  a-right a-right"><span class="nobr ">Action</span>
                                        </th>
                                        <th class="bulk-actions" colspan="7">
                                          <a class="antoo" style="color:#fff; font-weight:500;">Bulk Actions ( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a>
                                        </th>
                                      </tr>
                                    </thead>

                                    <tbody>
                                        <c:forEach var="u" items="${users}">
                                      <tr class="even pointer">

                                        <td class=" ">${u.id}</td>
                                        <td class=" ">${u.firstName} ${u.lastName}</td>
                                        <td class=" ">${u.username}</td>
                                        <td class=" ">${u.email}</td>
                                        <td class=" ">${u.phone}</td>
                                        
                                        <c:if test="${u.userRole != null && u.userRole.startsWith('ROLE_ADMIN') == true}">
                                            <td>Admin</td>
                                        </c:if>
                                        <c:if test="${u.userRole != null && u.userRole.startsWith('ROLE_USER') == true}">
                                            <td>Người dùng</td>
                                        </c:if>
                                        <c:if test="${u.userRole != null && u.userRole.startsWith('ROLE_SELLER') == true}">
                                            <td>Nhân viên bán vé</td>
                                        </c:if>
                                        <c:if test="${u.userRole != null && u.userRole.startsWith('ROLE_DRIVER') == true}">
                                            <td>Tài xế</td>
                                        </c:if>
<!--                                        <td class=" ">$!{u.userRole}</td>-->

                                        <td>
                                                <img class="img-fluid" src="${u.avatar}" alt="${u.firstName} ${u.lastName}"/>
                                           

                                        </td>

                                        <td class=" last a-right a-right ">
                                            <div class="btn-edit">
                                                <a class="btn btn-default" href=" <c:url value="data_users/update?id=${u.id}" />"><span class="glyphicon glyphicon-pencil"></span></a>
                                                <a class="btn btn-default" href=" <c:url value="data_users/delete?id=${u.id}" />"><span class="glyphicon glyphicon-trash"></span></a>                                                
                                            </div>
                                        </td>                                        
                                                                             
                                      </tr>
                                        </c:forEach>

                                    </tbody>
                                  </table>
                                </div>

                                  <div class="pagination-table">
                                      <!--$!{counter}-->
                                      <ul class="pagination">
                                          <c:forEach  begin="1" end="${Math.ceil(size/6)}" var="i">
                                              
                                          <li class="page-item"><a class="page-link" href="<c:url value="/admin/data_users"/>?page=${i}">${i}</a></li>
                                              
                                          </c:forEach>
                                       
                                        </ul>
                                          
                                  </div>    
                                  
                              </div>
                            </div>
                          </div>
                </div>
        
        
        
</div>
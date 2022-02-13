<%-- 
    Document   : product-stats
    Created on : Feb 9, 2022, 11:56:42 AM
    Author     : ASUS-LAPTOP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="right_col">
    <h1 class="text-center text-danger"> THỐNG KÊ DOANH THU THEO THỜI GIAN</h1>
    <form action="">
        <div class="form-group">
            <label  class="timestats">Từ khóa</label><!-- comment -->
            <input type="text" name="kw" class="form-control"/>
            
        </div>
        <div class="form-group">
            <label class="timestats">Từ thời điểm</label><!-- comment -->
            <input type="date" name="fromDate" class="form-control"/>
        </div>
        <div class="form-group">
            <label class="timestats">Đến thời điểm</label><!-- comment -->
            <input type="date" name="toDate" class="form-control"/>
            
        </div>
        <input type="submit" value="Bao cao" class="btn btn-success"/>
    </form>
    <div class="chart-size" >
          <canvas id="myProductStatsChart"></canvas>
        </div>
        <table class="table">
            <tr>
                <th>id</th>
                <th>Tên tuyến xe</th>
                  <th>Ngày đặt</th>
                  <th>Doanh thu</th>
            </tr>

             <c:forEach items="${productStats}" var="b">
                <tr>
                    <td>${b[5]}</td><!-- comment -->
                    <td>${b[6]} - ${b[7]} </td>

                    <td>${b[2]} </td> 
                    <td>${b[10]} VND </td>
                </tr>
            </c:forEach> 
        </table>
      <script>
    let productLabels=[], productInfo=[];
    <c:forEach items="${productStats}" var="c">
        productLabels.push('${c[6]} - ${c[7]}')
        productInfo.push(${c[10]})
    </c:forEach>
    window.onload = function(){
        productChart("myProductStatsChart", productLabels,productInfo)
    }
</script>
</div>
    

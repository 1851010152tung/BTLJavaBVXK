<%-- 
    Document   : product-stats-month
    Created on : Feb 13, 2022, 2:32:22 PM
    Author     : ASUS-LAPTOP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="right_col">
    <h1 class="text-center text-danger"> THỐNG KÊ DOANH THU THEO THÁNG</h1>
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
          <canvas id="myProductStatsMonthChart"></canvas>
        </div>
        <table class="table">
            <tr>
                <th>Tháng</th>
                  <th>Doanh thu</th>
            </tr>

             <c:forEach items="${productStatsMonth}" var="b">
                <tr>
                    <td>${b[0]}/${b[1]} </td> 
                    <td>${b[12]} VND </td>
                </tr>
            </c:forEach> 
        </table>
      <script>
    let productLabels=[], productInfo=[];
    <c:forEach items="${productStatsMonth}" var="c">
        productLabels.push('${c[0]} - ${c[1]}')
        productInfo.push(${c[12]})
    </c:forEach>
    window.onload = function(){
        productMonthChart("myProductStatsMonthChart", productLabels,productInfo)
    }
</script>
</div>

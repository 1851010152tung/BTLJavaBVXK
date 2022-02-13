<%-- 
    Document   : category-state
    Created on : Feb 8, 2022, 9:20:01 AM
    Author     : ASUS-LAPTOP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<div class="right_col">
    <h1 class="text-center text-danger"> THỐNG KÊ MẬT ĐỘ CHUYẾN XE THEO TUYẾN XE</h1>

    <div class="chart-size" >
          <canvas id="myChart"></canvas>
        </div>
        <table class="table">
            <tr>
                <th>id</th>
                 <th>Tuyến xe</th>
                 <th>Nhà xe</th>
                 <th>Số lượng xe</th>


                  
            </tr>

             <c:forEach items="${buses}" var="b">
                <tr>
                        <td class=" ">${b[0]}</td>
                        <td class=" ">${b[3]} - ${b[4]}</td>
                        <td class=" ">${b[7]} - ${b[9]}</td>
                        <td class="">${b[10]}</td>

                </tr>
            </c:forEach> -->
        </table>

    <script>
    let cateLabels=[], cateInfo=[];
    <c:forEach items="${buses}" var="c">
        cateLabels.push('${c[3]} - ${c[4]}')
        cateInfo.push(${c[10]})
    </c:forEach>
    window.onload = function(){
        cateChart("myChart", cateLabels,cateInfo)
    }
</script>
</div>
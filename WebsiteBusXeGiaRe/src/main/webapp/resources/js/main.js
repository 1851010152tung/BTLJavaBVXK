/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


window.onload = function () {
    let price = document.getElementsByClassName("price")


    //dau phay trong tien
    var formatter = new Intl.NumberFormat('vi', {
        style: 'currency',
        currency: 'VND',
    });
    for (let i = 0; i < price.length; i++)
    {

        price[i].innerText = formatter.format(price[i].innerText);
    }

   
}

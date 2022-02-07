/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


const activeImage = document.querySelector(".product-image .active");
const productImages = document.querySelectorAll(".image-list img");
const navItem = document.querySelector("a.toggle-nav");

function changeImage(e) {
  activeImage.src = e.target.src;
}

function toggleNavigation() {
  this.nextElementSibling.classList.toggle("active");
}

productImages.forEach((image) => image.addEventListener("click", changeImage));
navItem.addEventListener("click", toggleNavigation);


function addComment(){
    fetch("/WebsiteBusXeGiaRe/api/add-comment",{
        method: 'post',
        body: JSON.stringify({
            "content": document.getElementById("commentId").value,
            "idBus": idBus
        }),
        headers:{
            "Content-Type": "application/json"
            
        }
    }).then(function(res){
        console.info(res)
        
        return res.json();
    }).then(function(data) {
        console.info(data);
        
        let area = document.getElementById("commentArea");
        area.innerHTML = `
             <div class="comment">
              <div class="comment-avatar">
                <img src="http://gravatar.com/avatar/412c0b0ec99008245d902e6ed0b264ee?s=80">
              </div>

              <!-- Comment Box -->
              <div class="comment-box">
                <div class="comment-text">${data.content}</div>
                <div class="comment-footer">
                  <div class="comment-info">
                    <span class="comment-author">
                      <a>${data.user.username}</a>
                    </span>
                    <span class="comment-date">${data.createdDate}</span>
                  </div>

                  
                </div>
              </div>
            </div>
                    ` + area.innerHTML;
                    location.reload();
    })
}
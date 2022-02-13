/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



function addComment(idBus){
        event.preventDefault();

    fetch("/WebsiteBusXeGiaRe/api/add-comment", {
        method: 'post',
        body: JSON.stringify({
            "content": document.getElementById("commentId").value,
            "idBus": idBus
        }),
        headers:{
            "Content-Type": "application/json"
            
        }
    }).then(function(res){
        console.info(res);
        
        return res.json();
    }).then(function(data) {
        console.info(data);
        
        let area = document.getElementById("commentArea");
        area.innerHTML = `
             <div class="comment">
              <!-- Comment Avatar -->
              <div class="comment-avatar">
                 <img src="${data.user.avatar}">
              
              </div>

              <!-- Comment Box -->
              <div class="comment-box">
                <div class="comment-text">${data.content}</div>
                <div class="comment-footer">
                  <div class="comment-info">
                    <span class="comment-author">
                      <a>${data.user.username}</a>
                    </span>
                    <span class="comment-date">${moment(data.createDate).fromNow()}</span>
                  </div>

                  
                </div>
              </div>
            </div>
                    ` + area.innerHTML;
            location.reload();
    });
}
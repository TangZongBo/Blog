
       var flag=0;

       $(document.getElementById(""))

       function CheckUsername() {
       var _username=document.getElementById("usernames").value;
       var result=0;
       for(var i=0;i<_username.length;i++){
           if(_username[i]>='a'&&_username[i]<='z'){
               result++;
           }
           else if(_username[i]>='A'&&_username[i]<='Z'){
               result++;
           }
           else if(_username[i]=='_'){
               result++;
           }
           else if(_username[i]>='0'&&_username[i]<='9'){
               result++;
           }
       }
       if(result!=_username.length){
           document.getElementById("usernames").setCustomValidity("用户名仅支持输入英文字母或者数字以及下划线!");
           document.getElementById("usernames").value
       }
       else{
           document.getElementById("usernames").setCustomValidity("");
       }
   }

   function CheckPassword() {
       var password=document.getElementById("passwords");
       if(password.value.length<6){
           document.getElementById("passwords").setCustomValidity("密码至少为6位数字");
       }
       else {
           document.getElementById("passwords").setCustomValidity("");
           InspectLastPassword();
       }
   }

   function CheckSecondPassword() {
       var password1=document.getElementById("passwords").value;
       var password2=document.getElementById("words").value;
       if(password2!=password1){
           document.getElementById("words").setCustomValidity("两次输入密码不一致!");
       }
       else{
           document.getElementById("words").setCustomValidity("");

       }
   }
/**
 * Created by shangqianzhushang on 2017/5/26.
 */
                function changeul() {
                    var uls=document.getElementById("ul");
                    uls.style.display="block";
                }
                function changesul() {
                    var uls=document.getElementById("ul");
                    uls.style.display="none";
                }
                function changeFile() {
                    document.getElementById("file").click();
                }
                
                function changeUser() {
                      document.getElementById("userButton").style.display="none";
                    document.getElementById("usernames").style.display="inline";
                }
                
                function changePass() {
                    document.getElementById("passButton").style.display="none";
                    document.getElementById("passwords").style.display="inline";
                    document.getElementById("words").disabled="";
                    document.getElementById("words").required="required";
                }

/**
 * Created by shangqianzhushang on 2017/5/24.
 */
                        var path="fun/index_";
                        var num;
                        function ChangePrev() {
                            num--;
                            if(num<1){
                                num=8;
                            }
                            ChangePathNum(num);
                        }
                        
                        function ChangeNext() {
                            num++;
                            if(num>8){
                                num=1;
                            }
                            ChangePathNum(num);
                        }
                        $(document).ready(function () {
                            num=1;
                            ChangePathNum(num);
                            setTimeout('ChangeImages();',10000);
                        });
                        function ChangeImages() {
                            num++;
                            if(num>8){
                                num=1;
                            }
                            ChangePathNum(num);
                            setTimeout('ChangeImages();',10000);
                        }
                        function ChangePathNum(obj) {
                            document.getElementById("images").src="fun/index_"+obj+".jpg";
                        }
                        function ChangeDiplayPrev() {
                            $('#prevs').css('display','block');
                        }
                        function ChangeDisappearPrev() {
                            $('#prevs').css('display','none');
                        }
                        function ChangeDiplayNext() {
                            $('#nexts').css('display','block');
                        }
                        function ChangeDisappearNext() {
                            $('#nexts').css('display','none');
                        }

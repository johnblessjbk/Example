

<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>
<%@page import="Connection.dbconnection"%>
<jsp:include page="CustomerHead.jsp"></jsp:include>
<style>
    
    button{
        background-color:  #1da1f2;
        color: white;
        padding: 10px;
        width: 150px;
        border-radius: 10px;
        box-shadow:  10px 10px 10px 10px #dff0d8;
    }
    
</style>
 

<%
    String userid = (String) session.getAttribute("loguid");
    String phopid = request.getParameter("id");

    String tot = (String)session.getAttribute("myamt");
    //out.print(tot + pdno);
%>

<script type="text/javascript">
    function preventBack() {
        window.history.forward();

    }
    setTimeout("preventBack()", 0);
    window.onunload = function () {
        null
    };
</script>

<br><br>
<center>
    <div class="tabbox" id="feedbox"><br><br>
        <form onsubmit="return ver()">
            <table style="border-size:3px; border-color: #39ace7">
                <input type="hidden" value="<%=phopid%>" name="yid">                <input type="hidden" value="<%=userid%>" name="uid">

                <tr><td><img src="paym.png" width="400px" height="100px"></td></tr>
                <tr><td>Card Number<input type="text" class="form-control numbers" name="cardno" id="cardid" placeholder="Vaid Card Number" required=""></td></tr>
                <br><br>
                <span id="cardmsg" style="color:red" ></span>
                <tr><td></td></tr>    
                <tr>
                <br><td>Expiry Date
                    <select name="daypicker" id="daypicker" class="btn btn-light" style="width:150px;">
                        <option>January</option>
                        <option>February</option>
                        <option >March</option>
                        <option >April</option>
                        <option >May</option>
                        <option >June</option>
                        <option>July</option>
                        <option >August</option>
                        <option >September</option>
                        <option >October</option>
                        <option >November</option>
                        <option>December</option>
                    </select>

                    <select name="yearpicker" id="yearpicker" class="btn btn-light" style="width:150px;"><option>2021</option>


                        <option>2021</option><option>2022</option><option>2023</option><option>2024</option>
                        <option>2025</option>
                        <option>2026</option>
                        <option>2027</option>
                        <option>2028</option>
                        <option>2029</option>
                        <option>2030</option>
                    </select>
                </td></tr>
                <tr><td>CV Code<input type="text" class="form-control numbers" name="code" id="codeid" placeholder="CVC" required=""></td></tr>
                <span id="codemsg" style="color:red" ></span>
                <tr><td>Card Owner<input type="text" class="form-control" name="own" placeholder="Owner Name" required=""></td></tr>
                <tr><td>Total Amount<input type="text" class="form-control" name="amt" placeholder="Owner Name" value="<%=tot%>" readonly=""></td></tr>


                <br><tr><td></td></tr>

            </table><br><br>
            <button type="submit" class="btn btn-primary" style="width:200px" id="okpay" name="submit">Pay</button>
        </form>



        <%

            try {
                if (request.getParameter("submit") != null) {
                    String userids = (String) session.getAttribute("loguid");
                    dbconnection con = new dbconnection();
                                        String pid = request.getParameter("yid");
                    String usrid = request.getParameter("uid");

                    String cdno = request.getParameter("cardno");
                    String day = request.getParameter("daypicker");
                    String year = request.getParameter("yearpicker");
                    String cvv = request.getParameter("code");
                    String nam = request.getParameter("own");
                    String amt = request.getParameter("amt");

                    String qry = "insert into orderpds(stuid,cardno,day,year,cvv,own,amt,pid)values('" + usrid + "','" + cdno + "','" + day + "','" + year + "','" + cvv + "','" + nam + "','" + amt + "','" + pid + "')";
                    int j = con.putData(qry);
                    System.out.println("qry::" + qry);
                    if (j > 0) {
        %>
        <script>alert("Order Success");
            window.location = 'allmalls.jsp';</script>
            <%    } else {
            %>
        <script>alert("Order failed");
            window.location = 'allmalls.jsp';</script>
            <%
                        }
                    }
                } catch (Exception e) {
                    out.println(e);
                }

            %>

    </div></center>
<br><br>

<script>
    function ver() {
        var lop = document.getElementById("codeid").value;

        if (lop == "") {
            document.getElementById("codemsg").innerHTML = "**fill Password";
            return false;

        }
        if (lop.length < 3) {
            document.getElementById("codemsg").innerHTML = "**Code Should be 3 digit";
            return false;
        }
        if (lop.length > 3) {
            document.getElementById("codemsg").innerHTML = "Not Exceed on 3 digit";
            return false;

        }
        var cardd = document.getElementById("cardid").value;

        if (cardd == "") {
            document.getElementById("cardmsg").innerHTML = "**fill Password";
            return false;

        }
        if (cardd.length < 16) {
            document.getElementById("cardmsg").innerHTML = "**Card Number Should be 16 digit";
            return false;
        }
        if (cardd.length > 16) {
            document.getElementById("cardmsg").innerHTML = "Card number Not Exceed on 16 digit";
            return false;

        }

    }

    $("#dateid").datepicker({dateFormat: 'yy'});

</script>
<script>
    $('.numbers').keyup(function () {
        this.value = this.value.replace(/[^0-9\.]/g, '');
    });

    function writeMessage() {
        document.forms[0].pay.value = document.forms[0].rate.value;
    }
    function choose() {
        document.forms[0].rate.value = document.forms[0].cho.value;

        var box = document.getElementById("choose");

        dar = box.options[box.selectedIndex].value;
        document.getElementById("reg").value = dar;

    }
    $(function () {
        $("#choose").on("change", function () {
            $("#debug").text($("#choose").val());
            $("#pay").text($("#choose").val());
            $("#copy").text($("#pay").val());


        }).trigger("change");
    });

</script>
<script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js">
</script>
<script type="text/javascript">
    let startYear = 2000;
    let endYear = new Date().getFullYear();
    for (i = endYear; i > startYear; i--)
    {
        $('#yearpicker').append($('<option />').val(i).html(i));
    }
</script>
<script type="text/javascript">
    let day = 1;
    let hh = 31;
    for (i = hh; i > day; i--)
    {
        //  $('#daypicker').append($('<option />').val(i).html(i));
    }
</script>

<jsp:include page="../footer.jsp"></jsp:include>

<jsp:include page="../footer.jsp"></jsp:include>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="userint.css">
    <title>userint</title>
   
</head>
<body>


        <center>
        <h1>Product Details</h1>
        </center>
     
     <br><br>   
    <center>
    <a href="Addp.jsp"><button  class="btn1" type="submit">Add Product+</button></a>
    </center>
    <div class="box">
        <br><br><br><br>
        <div class="se">
        <h1>Search User ID </h1>
        </div>
        <form>
            <input type="text" id="searchbox-1"name="" placeholder="User ID...">
            <input type="submit" id=""name="" value="Search">
        </form>
    </div>

    <br><br><br><br><br>

    <div class="user">
    <form method="GET" action="#">
        <table cellpadding="15" id="stable">
            <tr>
                <th>PRODUCT ID</th>
                <th>BRAND NAME</th>
                <th>CATEGORY</th>
                <th>PRODUCT IMAGE</th>
                <th>DESCRIPTION</th>
            </tr>

   
           <tr>
                <td>10000</td>
                <td>Manuja</td>
                <td>Manusinghe</td>
                <td>200109800312</td>
                <td>65788890</td>
            </tr>

            <tr>
                <td>10001</td>
                <td>Viduni</td>
                <td>Herath</td>
                <td>2000123456</td>
                <td>68883323</td>
                
            </tr>

            <tr>
                <td>10002</td>
                <td>Kasun</td>
                <td>Rambukwella</td>
                <td>836789789v</td>
                <td>69323334</td>
                
            </tr>

            <tr>
                <td>10003</td>
                <td>Gawesh</td>
                <td>Samarathunga</td>
                <td>200019001295</td>
                <td>80556748</td>
            </tr>

            <tr>
                <td>10004</td>
                <td>Thiwanka</td>
                <td>Kalpage</td>
                <td>200112803123</td>
                <td>70345644</td>
            </tr>

            <tr>
                <td>10005</td>
                <td>Sandalu</td>
                <td>Samarakoon</td>
                <td>200032501069</td>
                <td>90666742</td>
            </tr>
            
            <tr>
                <td>10005</td>
                <td>Sandalu</td>
                <td>Samarakoon</td>
                <td>200032501069</td>
                <td>90666742</td>
            </tr>
            
            

         </table>
        </form>
        </div>


    <script>

        var searchbox_1=document.getElementById("searchbox-1");
        searchbox_1.addEventListener('keyup',function(){

            var keyword=this.value;
            var table=document.getElementById('stable');
            var all_tr=table.getElementsByTagName ('tr');
            for(var i=0;i<all_tr.length;i++)
            {
                  var userid_column=all_tr[i].getElementsByTagName('td')[0];

                  if(userid_column)
                  {
                  var userid_value=userid_column.innerText||userid_column.textContent;

                  if(userid_value.indexOf(keyword)>-1)
                  {
                    all_tr[i].style.display='';
                  }
                  else
                  {
                    all_tr[i].style.display='none';
                  }
                  }

            }
        })
    </script>

</body>
</html>

<?php

if (empty($_GET['page'])) {
    header('location:index.php?page=index');
}

include "header.php"
?>



<!-- side-->
<p><br /></p>
<p><br /></p>
<p><br /></p>


<div class="container-fluid">
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-2">

            <div id="get_category"></div>


            <div id="get_brand"></div>

        </div>

        <div class="col-md-8">
            <div class="row">
                <div class="col-md-12" id="product_img">
                </div>
            </div>
            <div class="panel panel-warning">
                <div style="background-color: #333; font-family: Lobster; color:wheat; font-size:x-large;" class="panel-heading">Products</div>
                <div class="panel-body">
                    <div id="get_product">
                        <!--here we get product details from ajax -->

                    </div>


                </div>
                <div class="panel-footer">&copy;SPM 2022</div>
            </div>
        </div>
        <div class="col-md-1"></div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <center>
                <ul class="pagination" id="pageno">
                    <li><a href="#">1</a></li>

            </center>
        </div>
    </div>

</div>
</div>

</body>

</html>
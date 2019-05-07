<?php
require_once dirname(__FILE__) . '/../include/webHandler.php';
//$db = new DbHandler();
require_once dirname(__FILE__) . '/header.php';
?>
<!-- start: Content -->
            <div id="content">				
				<div class="panel box-shadow-none content-header">
                  <div class="panel-body">
                    <div class="col-md-12">
                        <h4 class="nav animated fadeInDown">
							<a href="index.php">Properties</a>
							<span class="fa-angle-right fa"></span> 
							Published Properties
						</h4>                        
                    </div>
                  </div>
              </div>
              <div class="col-md-12 top-20 padding-0">
                <div class="col-md-12">
                  <div class="panel">
                    <div class="panel-heading"><h3>Published Properties</h3></div>
                    <div class="panel-body">
						<?php
						$featuredProperties = $db -> getPublishedProperties();
						?>
                      <div class="responsive-table">
                      <table id="datatables-example" class="table table-striped table-bordered" width="100%" cellspacing="0">
                      <thead>
                        <tr>
                          <th>Id</th>
                          <th>Property Type</th>
                          <th>Property Listing</th>
                          <th>Location</th>
						  <th>Amount (KES)</th>
						  <th>Bedrooms</th>
                          <th>Showers</th>
						  <th>Approval Status</th>
						  <th>Detailed View</th>
                        </tr>
                      </thead>
                      <tbody>
						  <?php
						  foreach($featuredProperties as $row){?>
						  <tr>
                          <td><?php echo("P".$row['id']) ?></td>
                          <td><?php echo($row['type']) ?></td>
                          <td><?php echo($row['listing'])?></td>
                          <td><?php echo($row['location']) ?></td>
						  <td><?php echo(number_format($row['amount'])) ?></td>
						  <td><?php echo($row['bedrooms'])?></td>
                          <td><?php echo($row['showers']) ?></td>
						  <td><?php echo($row['approval_status']) ?></td>
						  <td align="center"><a href="detailView.php?propertyId=<?php echo($row['id']) ?> "><span class="icons icon-eye" title="Detail View"></span></a>
						  </td>
                        </tr>
		<?php }	?>
                       
                      </tbody>
                        </table>
                      </div>
                  </div>
                </div>
              </div>  
              </div>
            </div>
          <!-- end: content -->
<!-- start: Javascript -->
<script src="asset/js/jquery.min.js"></script>
<script src="asset/js/jquery.ui.min.js"></script>
<script src="asset/js/bootstrap.min.js"></script>



<!-- plugins -->
<script src="asset/js/plugins/moment.min.js"></script>
<script src="asset/js/plugins/jquery.datatables.min.js"></script>
<script src="asset/js/plugins/datatables.bootstrap.min.js"></script>
<script src="asset/js/plugins/jquery.nicescroll.js"></script>


<!-- custom -->
<script src="asset/js/main.js"></script>
<script type="text/javascript">
  $(document).ready(function(){
    $('#datatables-example').DataTable();
  });
</script>
<!-- end: Javascript -->
</body>
</html>
<?php
require_once dirname(__FILE__) . '/../include/webHandler.php';
$db = new DbHandler();
require_once dirname(__FILE__) . '/header.html';
?>

<!-- start: Content -->
            <div id="content">
				<div class="panel box-shadow-none content-header">
                  <div class="panel-body">
                    <div class="col-md-12">
                        <h4 class="animated fadeInDown">
							<a href="technicians.php">Add Property</a> 
							<span class="fa-angle-right fa"></span> 
						</h4>                        
                    </div>
                  </div>
              </div>
              <div class="col-md-12 top-20 padding-0">
                <div class="col-md-12">
                  <div class="panel">
                    <div class="panel-heading"><h3>Service Providers</h3></div>
                    <div class="panel-body">
						<?php
						$getServiceProviders = $db -> getServiceProviders();
						?>
                      <div class="responsive-table">
                      <table id="datatables-example" class="table table-striped table-bordered" width="100%" cellspacing="0">
                      <thead>
                        <tr>
                          <th>Name</th>
                          <th>Phone Number</th>
                          <th>Service</th>
                          <th>Locality</th>
						  <th>Action</th>
                        </tr>
                      </thead>
                      <tbody>
						  <?php
						  foreach($getServiceProviders as $row){?>
		<option value="<?php echo($row['id']) ?>"><?php echo($row['service']) ?></option>
						  <tr>
                          <td><?php echo($row['name']) ?></td>
                          <td><?php echo($row['phone']) ?></td>
                          <td><?php echo($db -> getService($row['serviceId'])) ?></td>
                          <td><?php echo($row['locality']) ?></td>
						  <td><a href="editTechnicians.php?providerId=<?php echo($row['id']) ?> "><span class="icons icon-pencil" title="Edit"></span></a>
							  <a href="deleteTechnicians.php?providerId=<?php echo($row['id']) ?> " onClick="return confirm_delete('Are you sure you want to delete?')"><span style="float: right" class="icons icon-ban" title="Delete"></span></a></td>
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
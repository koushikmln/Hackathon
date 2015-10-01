<div class="modal fade" id="reg_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h2 class="modal-title" id="myModalLabel">Register Now</h2>
    </div>
    <form class="form-horizontal" id="register_form">
        <div class="modal-body">
            <fieldset>
                <!-- Name input-->
            <div class="form-group">
              <label class="col-md-4 control-label" for="name1">1st Participant</label>  
              <div class="col-md-6">
                <input maxlength="255" id="name1" name="name1" type="text" placeholder="So That We Know Who You Are" class="form-control input-md" required>
              </div>
            </div>
                
            <div class="form-group">
              <label class="col-md-4 control-label" for="name2">2nd Participant </label>  
              <div class="col-md-6">
                <input maxlength="255" id="name2" name="name2" type="text" placeholder="So That We Know Your Teammate" class="form-control input-md">
              </div>
            </div>
            <div class="form-group">
              <label class="col-md-4 control-label" for="roll1">Roll 1</label>  
              <div class="col-md-6">
                <input maxlength="255" id="roll1" name="roll1" type="text" placeholder="BE/10XXX/201X"  class="form-control input-md" required>
              </div>
            </div>
                
            <div class="form-group">
              <label class="col-md-4 control-label" for="roll2">Roll 2</label>  
              <div class="col-md-6">
                <input maxlength="255" id="roll2" name="roll2" type="text" placeholder="BE/10XXX/201X" class="form-control input-md" >
              </div>
            </div>
            
            <div class="form-group">
              <label class="col-md-4 control-label" for="email1">E-mail 1</label>  
              <div class="col-md-6">
                <input maxlength="255" id="email1" name="email1" type="email" placeholder="a@b.c" class="form-control input-md" required>
              </div>
            </div>
                
            <div class="form-group">
              <label class="col-md-4 control-label" for="email2">E-mail 2</label>  
              <div class="col-md-6">
                <input maxlength="255" id="email2" name="email2" type="email" placeholder="a@b.c" class="form-control input-md">
              </div>
            </div>
            
            <!-- Nick input-->
            <div class="form-group">
              <label class="col-md-4 control-label" for="nick">Nickname</label>  
              <div class="col-md-6">
                  <input id="nick" name="nick" type="text" placeholder="For The Leaderboard" class="form-control input-md" required>
              </div>
            </div>

            <!-- Password input-->
            <div class="form-group">
              <label class="col-md-4 control-label" for="password">Password</label>
              <div class="col-md-6">
                <input id="password" name="password" type="password"  class="form-control input-md" required>
            </div>
            </div>

    

          <!-- College input-->
          <div class="form-group">
              <label class="col-md-4 control-label" for="college">College</label>  
              <div class="col-md-6">
                  <input id="college" name="college" type="text" placeholder="So That We Know Where You're From" class="form-control input-md" required>
              </div>
          </div>
    </fieldset>
  <div id="reg_alert" class="alert alert-success" role="alert"></div>
</div>
<div class="modal-footer">
    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
    <button type="submit" id="register_submit" class="btn btn-primary">Register</button>
</div>
</form>
</div>
</div>
</div>
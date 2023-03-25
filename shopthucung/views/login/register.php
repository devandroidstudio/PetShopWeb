<div class="main">
    <form action="" method="POST" class="form" id="form-1">
        <h3 class="heading">Đăng ký tài khoản</h3>
        <div class="dont-have-account">
          Bạn đã có tài khoản? <a class="account-register" href="index.php?page=login">Đăng nhập</a>
        </div>

        <div class="spacer"></div>

        <div class="form-group">
          <label for="fullname" class="form-label">Tên tài khoản</label>
          <input id="fullname" name="fullname" type="text" placeholder="Tên tài khoản" class="form-control">
          <span class="form-message"></span>
        </div>

        <div class="form-group">
          <label for="email" class="form-label">Email</label>
          <input id="email" name="email" type="text" placeholder="VD: abc@gmail.com" class="form-control">
          <span class="form-message"></span>
        </div>

        <div class="form-group">
          <label for="password" class="form-label">Mật khẩu</label>
          <input id="password" name="password" type="password" placeholder="Nhập mật khẩu" class="form-control">
          <span class="form-message"></span>
        </div>

        <div class="form-group">
          <label for="password_confirmation" class="form-label">Nhập lại mật khẩu</label>
          <input id="password_confirmation" name="repassword" placeholder="Nhập lại mật khẩu" type="password" class="form-control">
          <span class="form-message"></span>
        </div>

        <label for="checkbox2" class="term-service">
          <input type="checkbox" id="checkbox2">

          <div class="checked-box" style="font-size: 13px;">
            Tôi đã đọc và đồng ý với
            <a href="#" class="a-hover"> điều khoản và điều kiện</a>
          </div>

        </label>

        <button type="submit" class="form-submit" name="register_submit">Đăng ký</button>
        <?php
            global $conn;
            if(isset($_POST['register_submit'])){
              if($_POST['fullname'] != '' && $_POST['email'] != '' && $_POST['password'] != ''  && $_POST['repassword'] != ''){
                $fullname = $_POST['fullname'];
                $email = $_POST['email'];
                $password = md5($_POST['password']);
                $repassword = md5($_POST['repassword']);
                $level = 2;

                $email = mysqli_real_escape_string($conn, $email);
                $sql = "SELECT * FROM dangki WHERE email='$email' ";
                $query = mysqli_query($conn, $sql);
                $password = $password;
                if(mysqli_num_rows($query) > 0){
                    //echo "tai khoan nay da co mguoi dang ki";
                }
                $sql = "INSERT INTO dangki (hoten, email ,matkhau, id_phanquyen) VALUES ('$fullname', '$email', '$password', '$level') ";
                //mysqli_query($conn, $sql);
                
                if ($conn->query($sql) === TRUE) {
                  echo "<script>alert('Đăng kí thành công')</script>";
                } else {
                  echo "Error: ". $conn->error;
                }
                die();
              }
              else{
                "<script>alert('thông tin không được bỏ trống')</script>";
              }
            }
            else{
              
            }
        ?>
    </form>
</div>
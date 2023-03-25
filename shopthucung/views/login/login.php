<?php
    global $conn;
    if(isset($_POST['login_submit']) && $_POST['fullname'] != '' && $_POST['password'] != ''){
        $fullname = $_POST['fullname'];
        $password = md5($_POST['password']);

        $fullname = mysqli_real_escape_string($conn, $fullname);
        $password = mysqli_real_escape_string($conn, $password);
        
        $sql = "SELECT * FROM dangki WHERE hoten = '$fullname' AND matkhau = '$password' ";
        $query = mysqli_query($conn, $sql);

        $row = mysqli_fetch_array($query); // dua du lieu tu db vao array

        if(mysqli_num_rows($query) > 0){
            $_SESSION['fullname'] = $fullname; //khoi tao session fullname 

            $_SESSION['email'] = $row['email'];  //gan du lieu tu db vao session
            //$_SESSION['sdt'] = $row['sdt'];
            
            if($row['id_phanquyen'] == 2){
                header("Location: index.php?pape=home");
            }
            if($row['id_phanquyen'] == 1){
                $_SESSION['admin'] = 1;
                header("Location: index.php?page=admin");
            }
            if($row['id_phanquyen'] == 3){
                $_SESSION['staff'] = 3;
                header("Location: index.php?page=admin");
            }
        }
        // else if(mysqli_num_rows($query) > 1){
        //     echo "<script>alert('tên tk đã có người sử dụng')</script>";
        // }

        else{
            echo "<script>alert('Sai tên tài khoản hoặc mật khẩu!')</script>";
        }
 
    }
    else{
        
    }
?>

<div class="main">
    <form action="" method="POST" class="form" id="form-2">
        <h3 class="heading">Đăng nhập</h3>

        <div class="form-group">
        <label for="Fullname" class="form-label">Tên tài khoản</label>
        <input id="Fullname" name="fullname" type="text" placeholder="Tên tài khoản" class="form-control">
        <span class="form-message"></span>
        </div>

        <div class="form-group">
        <label for="password" class="form-label">Mật khẩu</label>
        <input id="password" name="password" type="password" placeholder="Nhập mật khẩu" class="form-control">
        <span class="form-message"></span>
        </div>

        <label for="checkbox1" class="remember"><input type="checkbox" id="checkbox1" class="checkbox1"> Ghi nhớ mật khẩu</label>

        <button type="submit" class="form-submit" name="login_submit">Đăng nhập</button>

        <div class="dont-have-account">
            Bạn chưa có tài khoản? <a class="account-register" href="index.php?page=register">Đăng ký ngay</a>
        </div>
    </form>
</div>
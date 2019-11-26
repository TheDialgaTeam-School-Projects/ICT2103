<?php
include_once __DIR__ . '/DB/Config.php';
include_once __DIR__ . '/mongoDB/config.php';

if (session_status() === PHP_SESSION_NONE)
    session_start();

if (!isset($_SESSION['login_user'])) {
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $account = getDocumentFromAccountCollection($_POST['username'] ?? '', $_POST['password'] ?? '');

        if (gettype($account) === 'object') {
            $_SESSION['login_user'] = $_POST['username'];
            $_SESSION['loggedIn'] = true;
            $_SESSION['type'] = $account['type'];
        } else {
            $error = "Your Login Name or Password is invalid";
            echo "<script type='text/javascript'>alert('$error');</script>";
        }
    }
}
?>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.php">OzawaDB</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li><a href="intake.php">Intake</a></li>
                <li><a href="enrollment.php">Enrollment</a></li>
                <li><a href="graduates.php">Graduates</a></li>
                <li><a href="employment.php">Employment</a></li>
                <?php if (isset($_SESSION['type']) && $_SESSION['type'] == 'admin'): ?>
                    <li><a href="grad_employment.php">Graduates Employment</a></li>
                <?php endif; ?>
                <li><a href="analysis.php">Analysis</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <?php if (isset ($_SESSION['loggedIn'])): ?>
                    <li><a>Welcome, <?= $_SESSION['login_user'] ?></a></li>
                    <li><a href="logout.php">Logout</a></li>
                <?php else: ?>
                    <li class="dropdown order-1">
                        <a id="dropdownMenu1" data-toggle="dropdown"><span class="glyphicon glyphicon-log-in"></span>
                            Login</a>
                        <ul class="dropdown-menu dropdown-menu-right p-3">
                            <li class="px-3 py-3">
                                <form method="POST" class="form" role="form">
                                    <div class="form-group">
                                        <input id="username" name="username" placeholder="Username"
                                               class="form-control form-control-sm" type="text" required="">
                                    </div>
                                    <div class="form-group">
                                        <input id="password" name="password" placeholder="Password"
                                               class="form-control form-control-sm" type="text" required="">
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-primary btn-block">Login</button>
                                    </div>
                                </form>
                            </li>
                        </ul>
                    </li>
                <?php endif; ?>
            </ul>
        </div>
    </div>
</nav>

<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

try {
    $host = 'wapventure.com'; // Your actual host, e.g., 'mysql.hostinger.com'
    $username = 'u806320383_maid'; // Your database username
    $password = 'Maid@wap123'; // Your database password
    $database = 'u806320383_maidfinding'; // Your database name

    $service = new mysqli($host, $username, $password, $database);
    $service->set_charset("utf8mb4");
} catch (Exception $e) {
    error_log('Database connection error: ' . $e->getMessage());
    // Display a user-friendly message
    echo "Sorry, we are unable to connect to the database at this time.";
    exit;
}

try {
    // Query to fetch settings
    $setQuery = $service->query("SELECT * FROM `tbl_setting`");
    if ($setQuery) {
        $set = $setQuery->fetch_assoc();
        date_default_timezone_set($set['timezone']);
    } else {
        throw new Exception("Query error: Unable to fetch settings.");
    }

    // Check session and fetch service details if necessary
    if (isset($_SESSION['stype']) && $_SESSION['stype'] == 'sowner') {
        $stmt = $service->prepare("SELECT * FROM `service_details` WHERE email = ?");
        $stmt->bind_param('s', $_SESSION['servicename']);
        $stmt->execute();
        $result = $stmt->get_result();
        
        if ($result->num_rows > 0) {
            $sdata = $result->fetch_assoc();
        } else {
            throw new Exception("No data found for service owner.");
        }

        $stmt->close();
    }

    // Query to fetch main data
    $mainQuery = $service->query("SELECT * FROM `tbl_validate`");
    if ($mainQuery) {
        $main = $mainQuery->fetch_assoc();
    } else {
        throw new Exception("Query error: Unable to fetch validation.");
    }
} catch (Exception $e) {
    error_log('Database query error: ' . $e->getMessage());
    // Display a user-friendly message
    echo "Sorry, we encountered an issue fetching data from the database. Please try again later.";
    exit;
}
?>

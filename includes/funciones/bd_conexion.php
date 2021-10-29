<?php

    $conn = new mysqli('localhost', 'root', '', 'conciertos_lima');

    if($conn->connect_error) {
      echo $conn->connect_error;
    }

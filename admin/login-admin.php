<?php

if(isset($_POST['login-admin'])) {
        $usuario = $_POST['usuario'];
        $password = $_POST['password'];
     
        try {
            include_once 'funciones/funciones.php';
            $stmt = $conn->prepare("SELECT * FROM admins WHERE usuario = ?;");
            $stmt->bind_param("s", $usuario);
            $stmt->execute();
            $stmt->bind_result($id_admin, $usuario_admin, $nombre_admin, $password_admin, $editado);//para filtrar cuando se hace un SELECT
            if($stmt->affected_rows) {
                $existe = $stmt->fetch();//fetch imprime los datos que obtiene de la base de datos
                if($existe) {
                    if(password_verify($password, $password_admin)) {
                        session_start();//para iniciar sesiones, cada página que va a estar dentro de la sesión debe tner esta línea de código
                        $_SESSION['usuario'] = $usuario_admin;
                        $_SESSION['nombre'] = $nombre_admin;
                        $respuesta = array(
                            'respuesta' => 'exitoso',
                            'usuario' => $nombre_admin
                        );
                    } else {
                        $respuesta = array(
                            'respuesta' => 'error'
                        );
                    }
                } else {
                    $respuesta = array(
                        'respuesta' => 'error'
                    );
                }
            }
            $stmt->close();
            $conn->close();
        } catch (Exception $e) {
            echo "Error: " . $e->getMessage();
        }
        die(json_encode($respuesta));
    }

?>
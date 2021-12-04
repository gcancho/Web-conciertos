$(document).ready(function(){
    $('#guardar-registro').on('submit', function(e){
        e.preventDefault()
        var datos = $(this).serializeArray();
        $.ajax({
            type: $(this).attr('method'),
            data: datos,
            url: $(this).attr('action'),
            dataType: 'json',
            success: function(data){
                console.log(data);
                var resultado = data;
                if(resultado.respuesta == 'exito'){
                    swal(
                        'Correcto',
                        'Se guardó correctamente',
                        'success'
                    )
                }else{
                    swal(
                        'Error',
                        'Hubo un error',
                        'error'
                    )
                }
            }
        })
    });

    //Eliminar un registro
    $('.borrar_registro').on('click', function(e){
        e.preventDefault();
        var id = $(this).attr('data-id');
        var tipo = $(this).attr('data-tipo');

        swal({
        title: 'Estas seguro?',
        text: "Un registro no se puede eliminar",
        type: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Si, eliminar',
        cancelButtonText: 'Cancelar'
        }).then(function(){

                $.ajax({
                    type: 'post',
                    data: {
                        'id': id,
                        'registro': 'eliminar'
                    },
                    url: 'modelo-'+tipo+'.php',
                    success: function(data){
                        var resultado = JSON.parse(data);
                        if(resultado.respuesta == 'exito'){
                            swal(
                                'Eliminado!',
                                'Registro eliminado.',
                                'success'
                            )
                            jQuery('[data-id="' + resultado.id_eliminado + '"]').parents('tr').remove();
                        }else{
                            swal(
                                'Error!',
                                'No se pudo eliminar',
                                'error'
                            )
                        }
                        //console.log(resultado);
                    }
                });
        });
    });



    $('#login-admin').on('submit', function(e){
        e.preventDefault()
        var datos = $(this).serializeArray();
        $.ajax({
            type: $(this).attr('method'),
            data: datos,
            url: $(this).attr('action'),
            dataType: 'json',
            success: function(data){
                var resultado = data;
                if(resultado.respuesta == 'exitoso'){
                    swal(
                        'Login Correcto',
                        'Bienvenid@ '+resultado.usuario+'',
                        'success'
                    )
                    setTimeout(() => {
                        window.location.href = 'admin-area.php';
                    }, 2000);
                }else{
                    swal(
                        'Error',
                        'Usuario o password incorrectos',
                        'error'
                    )
                }
            }
        })
    });
});

$('#crear_registro').attr('disabled', true);

$('#repetir_password').on('input',function(){
    var password_nuevo = $('#password').val();

    if($(this).val() == password_nuevo){
        $('#resultado_password').text('Correcto');
        $('#resultado_password').parents('.form-group').addClass('has-success').removeClass('has-error');
        $('input#password').parents('.form-group').addClass('has-success').removeClass('has-error');
        $('#crear_registro').attr('disabled', false);

    }else{
        $('#resultado_password').text('No son iguales');
        $('#resultado_password').parents('.form-group').addClass('has-error').removeClass('has-success');
        $('input#password').parents('.form-group').addClass('has-error').removeClass('has-success');
    }
});

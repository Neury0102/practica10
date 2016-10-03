<!DOCTYPE html>
<html>
<head>
    <!-- Bootstrap -->
    <link href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" rel="stylesheet">
    <title>Login Customizado.....</title>
</head>
<body>
<div class="container" style="width: 20%; margin-top: 10%">
    <div class="panel panel-info">
        <div class="panel-heading">Iniciar Sesi&oacute;n</div>
        <div class="panel-body">
            <form role="form" action="/login" method="post">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <div>
                    <label for="username">Usuario</label>
                    <input type="text" name="username" id="username" class="form-control" required autofocus>
                </div>
                <div>
                    <label for="password">Password</label>
                    <input type="password" name="password" id="password" class="form-control" required>
                </div>

                <button type="submit">Sign in</button>
            </form>
        </div>
    </div>

</div>


<#if error.isPresent()>
<p>usuario no existe....</p>
</#if>
</body>
</html>
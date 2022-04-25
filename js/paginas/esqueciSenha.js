
function validar(){
    var email = in_email.value;

      if (email == '')
      {
            erro.innerHTML = `Preencha o E-mail`;
            erro.className = 'erro';
      } else if (email.indexOf('@') == -1)
      {
            erro.innerHTML = `Seu e-mail está invalido.`;
            erro.className = 'erro';
      } else if (email.length < 4)
      {
            erro.innerHTML = `E-mail deve possuir 4 ou mais caracteres.`;
            erro.className = 'erro';
      } else
      {
            erro.innerHTML = `Enviamos sua senha no seu E-mail!`;
            erro.className = 'success';
      }
}
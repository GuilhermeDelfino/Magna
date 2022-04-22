function validar () {
      var email = inp_email.value.trim();
      var senha = inp_senha.value.trim();
      if (email == '')
      {
            erro.innerHTML = `Preencha o E-mail`;
            erro.className = 'erro';
      } else if (senha == '')
      {
            erro.innerHTML = `Preencha a senha`;
            erro.className = 'erro';
      } else if (email.indexOf('@') == -1)
      {
            erro.innerHTML = `Seu e-mail está invalido.`;
            erro.className = 'erro';
      } else if (email.length < 4)
      {
            erro.innerHTML = `E-mail deve possuir 4 ou mais caracteres.`;
            erro.className = 'erro';
      } else if (senha.length < 4)
      {
            erro.innerHTML = `Senha deve possuir 4 ou mais caracteres.`;
            erro.className = 'erro';

      } else if (email.toLowerCase() == "fernando.brandao@sptech.school" && senha == "12345678")
      {
            window.location = "dashboard.html";
      } else
      {
            erro.innerHTML = `Usuário não encontrato`;
            erro.className = 'erro';
            setTimeout(() => {
                  limparCampos();
            }, 2000);
      }
}

function limparCampos () {
      inp_senha.value = '';
      inp_email.value = '';
      erro.innerHTML = '';
      erro.className = 'd-none';
      erro.style.padding = '0';
}
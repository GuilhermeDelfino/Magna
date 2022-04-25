
function validar(){
    var email = in_email.value;
    var nome = in_nome.value;
    var cnpj = in_cnpj.value;
    var tel = in_tel.value;
    var senha = in_senha.value;
    var conf = in_conf.value;

      if (
          email == '' ||
          nome == '' ||
          cnpj == '' ||
          tel == '' ||
          senha == '' ||
          conf == ''
          )
      {
            erro.innerHTML = `Preencha todos os campos`;
            erro.className = 'erro';
      } else if (email.indexOf('@') == -1)
      {
            erro.innerHTML = `Seu e-mail está invalido.`;
            erro.className = 'erro';
      } else if (senha.toLowerCase().trim() == conf.toLowerCase().trim())
      {
            erro.innerHTML = `As senhas não são iguais`;
            erro.className = 'erro';
      } else
      {
            erro.innerHTML = `Usuário cadastrado com sucesso!!`;
            erro.className = 'success';

            setInterval(() => {
                window.location = './login.html'
            }, 2000);
      }
}
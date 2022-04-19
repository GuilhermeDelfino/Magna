function validar() {
      var email = inp_email.value
      var senha = inp_senha.value

      
       if (email == '') {
            erro.innerHTML = `E-mail vazio.`
             erro.style.padding='8px'
      }else if( senha == ''){
            erro.innerHTML = `Senha vazia.`
            erro.style.padding='8px'
      }else if (email.indexOf('@') == -1) {
            erro.innerHTML = `E-mail, invalido.`
            erro.style.padding='8px'
      } else if (email.length < 4){
            erro.innerHTML =`E-mail deve possuir 4 ou mais caracteres.`
            erro.style.padding='8px'
      }else if (senha.length < 4){
            erro.innerHTML =`Senha deve possuir 4 ou mais caracteres.`
            erro.style.padding='8px'

      }else if(email.toLowerCase() =="fernando.brandao@sptech.school" && senha =="12345678"){
              window.location = "dashboard.html"

              
      }
}
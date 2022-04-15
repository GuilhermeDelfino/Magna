function validar() {
      var email = inp_email.value
      var senha = inp_senha.value

      
       if (email == '') {
            erro.innerHTML = `Email vazio.`
      }else if( senha == ''){
            erro.innerHTML = `Senha vazia.`
      }else if (email.indexOf('@') == -1) {
            erro.innerHTML = `Email, invalido.`
      } else if (email.length < 4){
            erro.innerHTML =`Email`
      }else if (senha.length < 4){

      }else if(email.toLowerCase() =="fernando.brandao@sptech.school" && senha =="12345678"){
              window.location = "dashboard.html"
      }
}
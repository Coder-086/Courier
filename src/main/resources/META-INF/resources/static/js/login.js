const sign_in_btn = document.querySelector("#sign-in-btn");
const sign_up_btn = document.querySelector("#sign-up-btn");
const container = document.querySelector(".container");

sign_up_btn.addEventListener("click", () => {
  container.classList.add("sign-up-mode");
});

sign_in_btn.addEventListener("click", () => {
  container.classList.remove("sign-up-mode");
});

function login(event){
    event.preventDefault();

    const email = document.getElementById("email").value;
    const password = document.getElementById("password").value;

    if(email == "" || password==""){
        swal("OOPS!!!!!!", "Fill Up all the Columns", "warning");
    	return;
    }
    console.log(email, password);

    fetch("http://localhost:8088/login", {
    	method: "POST",
    	headers: {
    		"Content-Type": "application/json"
    	},
    		body: JSON.stringify({email, password, username: ""})
    	}).then(data => data).then(res => {
    		console.log(res);
    		if (res.status == 200) {
    			swal("Good job!", "LoggedIn Successfully", "success");
    		} else {
    			swal("OOPS!!!!!!", "Failed to Login", "warning");
    		}
    	}).catch(err => {
    		swal("OOPS!!!!!!", "Failed to Login", "error");
    	})

}

function signup(event){
    event.preventDefault();

    const user_name = document.getElementById("Username").value;
    const email_id  = document.getElementById("Email").value;
    const password  = document.getElementById("Password").value;
    const confirm_password = document.getElementById("confirm_password").value;

    console.log(user_name, email_id, password);
    if(user_name == "" || email_id=="" || password=="" || confirm_password==""){
        swal("OOPS!!!!!!", "Fill Up all the Columns", "warning");
        return;
    }
    if(password == confirm_password){
           fetch("http://localhost:8088/signup" , {
           			method: "POST",
           			headers: {
           				"Content-Type": "application/json"
           			},
           			body: JSON.stringify({
           				username: user_name,
           				email: email_id,
           				password: password
           			})
           		}).then(data => data).then(res => {
                  	console.log(res);
               		if (res.status == 200) {
                  			swal("Good job!", "SignedUp Successfully", "success");
                  	} else {
                  			swal("OOPS!!!!!!", "Failed to Singup", "error");
                  	}
                }).catch(err => {
                  		swal("OOPS!!!!!!", "User Registration Failed", "error");
                })
    }else{
            alert('Password Mis-match');
    }

}

function forget(event){
    event.preventDefault();
    const otp_mail = document.getElementById("email").value;

    console.log(otp_mail);

    	if(otp_mail == ""){
    		swal("OOPS!!!!!!", "Fill Up all the Columns", "warning");
    		return;
    	}
    	fetch("http://localhost:8088/sendotp", {
    		method: "POST",
    		headers: {
    			"Content-Type": "application/json"
    		},
    		body: JSON.stringify({
    			email: otp_mail
    		})
    	}).then(data => data).then(res => {
    		if (res.status == 200) {
    			swal({
    				title: 'OPT sent Successfully',
    				buttons: false
    			  });

    			setTimeout(()=>{
    				window.open(`otp?email=${otp_mail}`, "_self");
    			},1500)
    		} else {
    			swal("OOPS!!!!!!", "Email is not Registered with Us", "error");
    		}

    	}).catch(err => {
    		swal("OOPS!!!!!!", "Account Does not Exist", "error");
    	})

}
function validsignup()
{
  var x = document.signupform.sname.value;
  var y = document.signupform.pwd.value;
  var z = document.signupform.pwd1.value;
  var a = document.signupform.mail.value;
  var b = document.signupform.phone.value;
  var c = document.signupform.type.value;
  var atpos = a.indexOf("@");
  var dotpos = a.lastIndexOf(".");
  if( x == null || x == "")
  {
    alert("Name column is to be filled!");
    return false;
  }
  else if( a == null || a == "")
  {
    alert("Email column is to be filled!");
    return false;
  }
  else if(atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= a.length)
  {
  	alert("Invalid email");
  	return false;
  }
  else if( b == null || b == "")
  {
    alert("Phone column is to be filled!");
    return false;
  }
  else if( c == null || c == "")
  {
    alert("Type is to be filled!");
    return false;
  }
  else if(b.length<10 || b.length>13)
  {
      alert("Invalid phone");
      return false;
  }
  else if( y != z )
  {
    alert("Passwords do not match.Enter again..");
    return false;
  }
  else if( y == null || z == null || y == "" ||z == "")
  {
    alert("Passwords cannot be empty");
    return false;
  }
  else if( y.lenght<6)
  {
    alert("Weak password.Cannot accept");
    return false;
  }
  else if( y.lenght<8 && y.length >6)
  {
    prompt("Normal password");
    return true;
  }
  else if( y.lenght<15 && y.length >8)
  {
    prompt("Storng password");
    return true;
  }
  else if( y === null || z == null || y == "" ||z == "")
  {
    alert("Passwords cannot be empty");
    return false;
  }
  else
  {
    return true;
  }
}
function validsignin()
{
	var x = document.signinform.email1.value;
	var y = document.signinform.pwd1.value;
	if(x ===  null || x === "")
	{
		alert("Name cannot be empty");
		return false;
	}
	else if(y === null || y === "")
	{
		alert("Password cannot be empty");
		return false;
	}
	else
	{
		return true;
	}
}

function insert_informal_javascript()
{
    var d1 = document.informal_form.date.value;
    var d2 = document.informal_form.informal_text.value;
    if(d1 == null || d1 == "")
    {
        alert("Date not mentioned!");
        return false;
    }
    else 
    {
        return true;
    }
}
function update_in()
{
    var a = document.in_update.date.value;
    var b = document.in_update.update_informal.value;
    if(a == null || a == "")
    {
        alert("Date not mentioned!");
        return false;
    }
    else if(b == null || b == "")
    {
        alert("Content empty!");
        return false;
    }
    else 
    {
        return true;
    }
}
function validpass()
{
    var x = document.pass.old.value;
    var y = document.pass.new.value;
    var z = document.pass.new1.value;
    if(x == "" || x == null)
    {
        alert("Enter current password first!");
        return false;
    }
    else if(y == "" || y == null)
    {
        alert("Password empty");
        return false;
    }
    else if(z == "" || z == null)
    {
        alert("Enter password again!");
        return false;
    }
    else if(z != y)
    {
        alert("Passwords do not match!");
        return false;
    }
    else
    {
        return true;
    }
}
function dropdwn()
{
    var dropdown = document.getElementsByClassName("dropdown-btn1");
    var i;

    for (i = 0; i < dropdown.length; i++) 
    {
        dropdown[i].addEventListener("click", function()
        {
            this.classList.toggle("active");
            var dropdownContent = this.nextElementSibling;
            if (dropdownContent.style.display === "block") 
            {
                dropdownContent.style.display = "none";
            } 
            else 
            {
                dropdownContent.style.display = "block";
            }
        });
    }
}
import React, {useState, useEffect, Component} from "react";
import { NavLink, useHistory } from "react-router-dom";
import { Menu, Container , Header, Divider, Grid, Button } from "semantic-ui-react";
import "./formstyle.css"


function Login ({setUser}) { 
    let userInfo = {};

    const [errors, setErrors] = useState("");

    const hist = useHistory();
    
    function handleChange(e){
        if(errors !== "") setErrors("");
        userInfo = {...userInfo, [e.target.name]: e.target.value}
    }
    
    
    function login(e){
        e.preventDefault();

        fetch("http://localhost:3000/login",{
            method:"POST",
            headers:{
                "Content-Type":"application/json"
            },
            body:JSON.stringify(userInfo)
        })

        .then(r=>{
            r.json().then(d=>setUser(d));

            r.ok && hist.push("/progress");

            console.log(r)

            setErrors("Error Occurred. \nTry again")

        })

        .catch(e=>console.log("error"))
    }
    return ( 
        <form className="new-form" onSubmit={login}>
            <input required name="email" placeholder="Email" type="email" onChange={handleChange}/>
            <br/>

            <input required name="password" placeholder="*******" type="password" onChange={handleChange}/>
            <br/>

            <button>Login</button>
            <p>{errors}</p>
            <NavLink to="/signup"> Create a new account</NavLink>
        </form>
    )
}

export default Login;
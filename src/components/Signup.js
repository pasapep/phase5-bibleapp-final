import React, {useState, useEffect, Component} from "react";
import { NavLink, useHistory } from "react-router-dom";
import { Menu, Container , Header, Divider, Grid, Button } from "semantic-ui-react";
import "./formstyle.css"

function Signup ({setUser}) { 
    let userInfo = {};
    const [data, setData] = useState({
        email:"",
        name:"",
        password:""
    });

    const [errors, setErrors] = useState("");

    const hist = useHistory();
    
    function handleChange(e){
        userInfo = {...userInfo, [e.target.name]: e.target.value}
    }
    
    
    function signup(e){
        e.preventDefault();
        setData(userInfo);

        fetch("http://localhost:3000/users",{
            method:"POST",
            headers:{
                "Content-Type":"application/json"
            },
            body:JSON.stringify(userInfo)
        })

        .then(r=>{
            r.json().then(setUser);

            r.ok && hist.push("/progress");

            setErrors("Error Occurred. \n Try another")
        })

        .catch(e=>console.log("error"))

    }
    return ( 
        <form className="new-form" onSubmit={signup}>
            <input required name="name" defaultValue={data.name} placeholder="Username" type="text" onChange={handleChange}/>
            <br/>

            <input required name="email" defaultValue={data.email} placeholder="Email" type="email" onChange={handleChange}/>
            <br/>

            <input required name="password" defaultValue={data.password} placeholder="*******" type="password" onChange={handleChange}/>
            <br/>

            <button>Sign up</button>
            <p>{errors}</p>
            <NavLink to="/login"> Already have an account</NavLink>
        </form>
    )
}

export default Signup;
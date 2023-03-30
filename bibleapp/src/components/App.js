// import './Styles.css'
import 'semantic-ui-css/semantic.min.css'
import { Route, Switch, BrowserRouter } from "react-router-dom";// import Header from "./Header";

import React, {useState, useEffect, Component} from "react";
import { Button, Container, Grid, Header, Icon, Menu } from "semantic-ui-react";


import NavBar from "./NavBar"
import Home from "./Home"
import Progress from "./Progress"
import Scoreboard from "./Scoreboard"
import Login from "./Login"
import Signup from "./Signup"

function App () {
    const [user, setUser] = useState({});
    

    const [book, setBook] = useState('');
    const [chapter, setChapter] = useState('');
    const [verse, setVerse] = useState('');
    const [verseText, setVerseText] = useState('');
    const [newBooks, setNewBooks] = useState([]);


    //Using useEffect to fetch the books. 
    const [verseLists, setVerseLists] = useState([]);

    return (
    <BrowserRouter> 
    <div>
        <h2>NavBar</h2>
        <NavBar />
    </div>
    <div> 
    <Switch>
        <Route exact path="/">
            <Home user={user}/>
        </Route>
        <Route path="/progress">
            <Progress 
            user={user}
            /> 

        </Route>
        <Route exact path="/login">
            <Login setUser={setUser}/>
        </Route>
        <Route exact path="/signup">
            <Signup setUser={setUser}/>
        </Route>
    
    </Switch>
    </div>
    </BrowserRouter>
    )
}

export default App;
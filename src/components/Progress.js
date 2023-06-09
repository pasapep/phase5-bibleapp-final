import React, { useState, useEffect } from "react";
import { Menu, Container, Header, Divider, Grid, Button, Image } from "semantic-ui-react";


const Progress = ({user}) => {
  const [verses, setVerses] = useState();
  const [progress, setProgress] = useState();

  function getProgress(){
    fetch(`http://localhost:3000/users/${user.id}`)

      .then(r=>r.json())

      .then(d=>setProgress((d.progress).toFixed(5)))
      .catch(e=>console.log(e))
  }
  
  useEffect(()=>{
    if(user.id){
      fetch(`http://localhost:3000/verses?user_id=${user.id}`)
      .then(r=>r.json())

      .then(d=>setVerses(d))
      .catch(e=>console.log(e))

      getProgress()
    }
  },[user])

  function deleteVerse(id){
    fetch(`http://localhost:3000/verses/${id}`,{
      method:"DELETE"
    })
    .then(r=>{
      if(r.ok) {
      setVerses(verses.filter(ver=>ver.id!==id))
      getProgress()
    }
    });
  }

  return (
  <div className="ui container center aligned">

    
    <h2>Progress: {progress}%</h2>
    <ul>
      {verses ? verses.map((book) => (
        <li key={book.id}>
          <div className="book-title">{book.verse}</div>
          <p>{book.details}</p>
          <button className="ui red button" onClick={()=>deleteVerse(book.id)}>Delete</button>
          {/* <div className="chapters">{displayChapters(book.chapters)}</div> */}
        </li>
      )):
      <div className="ui message">
        <div className="header">
          Login To View Progress
        </div>
      </div>
    }
    </ul>
  </div>
  );
};


export default Progress;
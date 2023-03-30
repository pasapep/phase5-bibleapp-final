import React, {useState, useEffect} from "react";
import { Menu, Container, Header, Divider, Grid, Button, Image } from "semantic-ui-react";
import Progress from "./Progress";
//이거 새로 받으면 복사해서 붙임

function Home({user}) { 
  const [book, setBook] = useState('');
  const [chapter, setChapter] = useState('');
  const [verse, setVerse] = useState('');
  const [verseText, setVerseText] = useState('');
  const [bookLists, setBookLists] = useState([]);
  const [imageData, setImageData] = useState(null);

  useEffect(() => {
    // fetch the image data from the database
    fetch("http://localhost:3000/photos")
      .then((response) => response.json())
      .then((data) => {
        setImageData(data);
      })
      .catch((error) => {
        console.log(error);
      });
  }, []);

  const handleSubmit = (event) => {
    event.preventDefault();

    // fetch the text of the selected verse from the Bible API
    fetch(`https://bible-api.com/${book} ${chapter}:${verse}`)
      .then(response =>{ 
        if (response.ok){
          response.json()
          .then(data => {
            setVerseText(data.text);
    
            
            // save the reading progress to the Rails backend
              if (user.id){
                fetch(`http://localhost:3000/verses`, {
                  method: 'POST',
                  headers: {
                    'Content-Type': 'application/json'
                  },
                  body: JSON.stringify({
                    "user_id": user.id,
                    "verse": `${book} ${chapter}:${verse}`,
                    "details": data.text 
                  })
                }).catch(e=>console.log(e))
              }
            })

        }
      })
        .catch(e=>{
          setVerseText("Verse Not Found");
        })
  };

  const blueBook = bookLists.map((book) => book.name);

  return (
    <Container text textAlign="center" >
      <Divider hidden />  
      <Header size="huge">Read Bible </Header>

      
      <div class="ui card" style={{ display: "flex", justifyContent: "center", margin: "0 auto", textAlign: "center" }}>
        <div class ="content">
          <a class = "header">
          {verseText && <p>{verseText}</p>}

          </a>
        </div>
         {/* <Header size="huge" as="h1">
          </Header> */}
      </div> {/* End of ui card  */}
      <Divider hidden />  
      <Divider hidden />  
      <Divider hidden />  

      <div className="App">
        <form onSubmit={handleSubmit}>
         
          <Grid stackable container>
            <Grid.Row columns="three">
              <Grid.Column>
                <Header size="huge" as="h1">
                  Book
                </Header>
                {/* Use the list of books fetched from the Rails backend */}
                <input required list="browsers" type="text" value={book} onChange={(event) => setBook(event.target.value)} />
                <datalist id="browsers">
                  {blueBook.map((book) => (
                    <option key={book} value={book}>{book}</option>
                  ))}
                </datalist>
              </Grid.Column>
              <Grid.Column>
                <Header size="huge" as="h1">
                  Chapter
                </Header>
                <input required type="number" value={chapter} onChange={(event) => setChapter(event.target.value)} />
              </Grid.Column>
              <Grid.Column>
                <Header size="huge" as="h1">
                  Verse
                </Header>
                <input required type="number" value={verse} onChange={(event) => setVerse(event.target.value)} />
              </Grid.Column>
            </Grid.Row>
          </Grid>
          <Divider hidden />
          <Button type="submit" primary>Read Verse</Button>
        </form>
        <Divider hidden />
      </div>
    </Container>
  );
}

export default Home;

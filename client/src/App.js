import React, { Component } from 'react';
import './App.css';
import styled from 'styled-components'
// TOP 3
import NavBar from './components/NavBar'
import Footer from './components/Footer'
import AppContent from './components/AppContent/AppContent'

const AppStyle = styled.div`
.App{
  height: 100vh;
}
.top3 {
  display: flex;
  flex-direction: column;
  border: .05em solid rgba(255, 255, 255, 0.7);
  margin: 1vh auto;
}

.AppContent, .NavBar, .Footer {
  max-width: 100vw;
  margin: .2em;
}

.AppContent {
  height: 78vh;

  background-image: url("https://images.unsplash.com/photo-1516979187457-637abb4f9353?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=0c4b5fcc53abd6158286dc86a9be4bee&auto=format&fit=crop&w=1350&q=80");

  background-attachment: fixed;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

.Footer, .NavBar {
  height: 8%;
  max-width: 100vw;
}

.SingleStory {
  margin: 0.1em;
  border: .02em solid rgba(0, 0, 0, 0.25);
}
`

class App extends Component {
  render() {
    return (
        <AppStyle className="App">
          <NavBar />
          <AppContent />
          <Footer />
        </AppStyle>
    );
  }
}

export default App;

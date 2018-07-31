import React, { Component } from 'react';
import './App.css';
import styled from 'styled-components'
// TOP 3
import NavBar from './components/NavBar'
import Footer from './components/Footer'
import AppContent from './components/AppContent/AppContent'

const AppStyle = styled.div`
.top3 {
  display: flex;
  flex-direction: column;
  border: 2px solid blue;
  margin: 1vh auto;
}

.AppContent {
  height: 80vh;
}
.NavBar {
  height: 10vh;
}
.Footer {
  height: 10vh;
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

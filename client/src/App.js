import React, { Component } from 'react';
import './App.css';
import styled from 'styled-components'
// TOP 3
import NavBar from './components/NavBar'
import Footer from './components/Footer'
import AppContent from './components/AppContent/AppContent'

const Top3 = styled.div`
.top3 {
  display: flex;
  flex-direction: column;
  border: 2px solid blue;
  margin: 1vh auto;
}
`

class App extends Component {
  render() {
    return (
        <Top3 className="App">
          <NavBar />
          <AppContent />
          <Footer />
        </Top3>
    );
  }
}

export default App;

import React, { Component } from 'react';
import './App.css';
import NavBar from './components/NavBar'
import Footer from './components/Footer'
import AppContent from './components/AppContent'

class App extends Component {
  render() {
    return (
      <div className="App">
        <NavBar />
        <AppContent />
        <Footer />
      </div>
    );
  }
}

export default App;

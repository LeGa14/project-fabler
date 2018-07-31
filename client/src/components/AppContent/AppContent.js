import React, { Component } from 'react';
import { BrowserRouter as Router, Switch, Route } from 'react-router-dom'
import styled from 'styled-components'

const AppStyle = styled.div`
.NavBar
`

class AppContent extends Component {
    render() {
        return (
            <Router>
            <div className="top3 AppContent">
                <h1>Welcome to Project Fabler</h1>
                <h2>This will display Fabler's main content</h2>
            </div>
            </Router>
        );
    }
}

export default AppContent;
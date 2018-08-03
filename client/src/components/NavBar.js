import React, { Component } from 'react'
import styled from 'styled-components'
import Anime from 'react-anime'

const NavBarStyle = styled.div`
.NavBar {
    background-position: left;    
    max-width: 100%;
    color: red;
}
.NavBarContent {
    display: flex;
    flex-direction: row;
    justify-content: space-around;
    align-items: center;
}
`

class NavBar extends Component {
    render() {
        return (
            <NavBarStyle>
                <div className="top3 NavBar">
                    <div className="NavBarContent">
                        <h4>Nav</h4>
                            <h2>Fabler</h2>
                        <h4>Link to HOME</h4>
                    </div>
                </div>
            </NavBarStyle>
        );
    }
}

export default NavBar
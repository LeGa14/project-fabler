import React, { Component } from 'react';
import styled from 'styled-components'

const FooterStyle = styled.div`
.Footer {
    width: 100vw;
    color: green;
}
.FooterContent {
    display: flex;
    flex-direction: row;
    justify-content: space-around;
    align-items: center;
}
`

class Footer extends Component {
    render() {
        return (
            <FooterStyle className="top3 Footer">
                <div className="FooterContent">
                    <h2>The Footer!</h2>
                </div>
            </FooterStyle>
        );
    }
}

export default Footer;
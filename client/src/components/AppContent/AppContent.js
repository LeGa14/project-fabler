import React, { Component } from 'react';
import { BrowserRouter as Router, Switch, Route } from 'react-router-dom'
import styled from 'styled-components'

import Filler from '../Stories/Filler'
import NonFiller from '../Stories/NonFiller'
import StoryIndex from '../Stories/StoryIndex'


class AppContent extends Component {
    render() {
        return (
            <Router>
                <div className="top3 AppContent">
                    <h1>Welcome to Project Fabler</h1>
                    <h2>This will display Fabler's main content</h2>
                    <Route exact path='/' component={Filler} />
                    <Route exact path='/stories/:story_id' component={StoryIndex} />
                    <Route exact path='/stories/:story_id/posts/new' component={NonFiller} />
                    <Route exact path='/stories/:story_id/posts/:post_id/edit' component={NonFiller} />
                    <Route exact path='/stories/:story_id/posts/:post_id' component={NonFiller} />

                </div>
            </Router>
        );
    }
}

export default AppContent;
import React, { Component } from 'react';
import { BrowserRouter as Router, Switch, Route } from 'react-router-dom'
import styled from 'styled-components'

import Filler from '../Stories/Filler'
import NonFiller from '../Stories/NonFiller'
import StoryIndex from '../Stories/StoryIndex'
import StoryShow from '../Stories/StoryShow'
import ScenarioShow from '../Stories/ScenarioShow'


class AppContent extends Component {
    render() {
        return (
            <Router>
                <div className="top3 AppContent">
                    <h1>Welcome to Project Fabler</h1>
                    <h2>This is Fabler's content of focus</h2>
                    <Switch>
                        <Route exact path='/' component={StoryIndex} />
                        <Route exact path='/stories/:story_id' component={StoryShow} />
                        <Route exact path='/stories/:story_id/scenarios/:scenario_id' component={ScenarioShow} />
                        <Route exact path='/stories/:story_id/posts/new' component={NonFiller} />
                        <Route exact path='/stories/:story_id/posts/:post_id/edit' component={NonFiller} />
                        <Route exact path='/stories/:story_id/posts/:post_id' component={NonFiller} />
                    </Switch>

                </div>
            </Router>
        );
    }
}

export default AppContent;
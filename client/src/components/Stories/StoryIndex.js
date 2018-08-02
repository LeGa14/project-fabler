import React, { Component } from 'react';
import axios from 'axios'
import { Link } from 'react-router-dom'

import StoryShow from './StoryShow'

class StoryIndex extends Component {

    state = {
        stories: []
    }

    componentDidMount() {
        this.fetchStories()
    }

    fetchStories = () => {
        axios.get('/api/stories').then((res) => {
            console.log(res.data)
            this.setState({ stories: res.data })
        })
    }

    render() {
        // <div>
        //     <h3>Stories Home</h3>
        // </div>
        // const storyList = this.state.stories.map((story) => {
        //     return (
        //         <div>
        //             <Link to={`/stories/${story.id}`}>
        //                 <img src={story.image_url} />
        //             </Link>
        //             <Link to={`/stories/${story.id}`}>
        //                 <h2>{story.title}</h2>
        //             </Link>
        //             <Link to={`/stories/${story.id}/`}>View Comments</Link>
        //         </div>
        //     )
        // })
        const storyList = this.state.stories.map((story) => {
            return (
                <div className="SingleStory">
                    <Link to={`/stories/${story.id}`}>{story.title}</Link>
                </div>
            )
        })

        return (
            <div>
                <a href={`/stories/new`}>Make a New Story</a>
                <hr />
                {storyList}
            </div>
        )
    }
}

export default StoryIndex;
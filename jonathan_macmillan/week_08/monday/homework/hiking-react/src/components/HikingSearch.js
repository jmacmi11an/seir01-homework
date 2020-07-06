import React, { Component } from 'react';
import axios from 'axios';

class HikingSearch extends Component {
  constructor(){
    super();
    this.state = {
      trails: {}
    };
    this.getData = this.getData.bind(this);

  }

  getData(num){
    const apiKey = "200819247-91770ab5c5a70e779bcde2c26f6fbde3";
    const url = `https://www.hikingproject.com/data/get-trails-by-id?ids=700${ num }&key=${ apiKey }`;
    console.log(url.trails);

    axios(url)
    .then(res => console.log(res.data.trails["0"], res))          //the console log is giving me the object with all the data I want
    .then(res => this.setState({trails: res}))                    // why can't I extract it here?
    console.log(this.state.trails.data.trails["0"])
  }


  render () {
    return (
      <div>
        <h1>Find a random hike!</h1>
        <RandomHike onSubmit={ this.getData }/>
        <Hike />
      </div>
    )
  };
}



class RandomHike extends Component {
  constructor(){
    super ();
    this.state = {query: ''};
    this._handleInput = this._handleInput.bind(this);
    this._handleSubmit = this._handleSubmit.bind(this);
  }

  _handleInput(event){
    this.setState({query: event.target.value});
  }

  _handleSubmit(event){
    event.preventDefault();
    this.props.onSubmit( this.state.query );
    console.log('after onSubmit', this.state.query)

  }

  render () {
    return (
      <div>
        <form onSubmit={ this._handleSubmit }>
          <input type="number" min="2000" max="9999" required onInput={ this._handleInput }/>
          <button>Find Hike</button>
        </form>
      </div>
    )
  };
}


class Hike extends Component {
  render (props) {
    console.log(props)
    return (
      <div>
        <h2>title</h2>
        <img/>
        <p>about</p>
      </div>
    )
  }
}



export default HikingSearch;

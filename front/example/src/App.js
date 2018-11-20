import React, { Component } from 'react';
import Header from './components/Header'
import './App.css';


const user = {
  firstName: 'Yannick',
  lastName: 'MOHL-CLAUZADE'
};

function formatName(user) {
  return user.firstName + ' ' + user.lastName;
}

const element = <h1>Hello, {formatName(user)}</h1>;

class App extends Component {
  render() {
    return (
      <div>
        <Header/>
      </div>
    );
  }
}

export default App;
import React, { Component } from 'react';
import './Header.css';

class Header extends Component {
    render() {
      return (
        <div class="header w3-lime">
          <a href="#default" class="logo">Green Earth</a>
          <div class="header-right">
            <a class="active" href="#log-in">log-in</a>
            <a href="#register">register</a>
          </div>
       </div>
      )
    }
}

export default Header
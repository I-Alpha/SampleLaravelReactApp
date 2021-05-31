import React, { Component } from 'react';
import ReactDOM, { createPortal } from 'react-dom';
import { Nav, Navbar, Form, FormControl } from 'react-bootstrap';
import styled from 'styled-components';


const Styles = styled.div`
  .navbar { background-color: #222; }
  a, .navbar-nav, .navbar-light .nav-link {
    color: #9FFFCB;
    &:hover { color: white; }
  }
  .navbar-brand {
    font-size: 1.4em;
    color: #9FFFCB;
    &:hover { color: white; }
  }
  .form-center {
    position: absolute !important;
    left: 25%;
    right: 25%;
  }
`;
export class Navigation extends Component {
    render(){
            return( 
                      <Styles>
                          <Navbar expand="lg">
                          <Navbar.Brand href="/">SampleApp</Navbar.Brand>
                          <Navbar.Toggle aria-controls="basic-navbar-nav"/>                         
                          <Navbar.Collapse id="basic-navbar-nav">
                              <Nav className="ml-auto">
                              <Nav.Item><Nav.Link href="/">Home</Nav.Link></Nav.Item> 
                              <Nav.Item><Nav.Link href="/counter">Counter</Nav.Link></Nav.Item> 
                              <Nav.Item><Nav.Link href="/CounterRecords">History</Nav.Link></Nav.Item>
                              </Nav>
                          </Navbar.Collapse>
                          </Navbar>
                      </Styles> 
            ); 
    }
}
if (document.getElementById('navbar')) {
    ReactDOM.render(<Navigation />, document.getElementById('navbar'));
}

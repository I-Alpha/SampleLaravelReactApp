import React, { Component } from 'react';
import ReactDOM, { createPortal } from 'react-dom'; 
import styled from 'styled-components';


const Styles = styled.div`
#title {
    text-align: center;
    font-family: arial, sans-serif;
  }

  td{
     padding-left: 1rem;     
     padding-right : 1rem;
  }
  
  #counterlog {
    text-align: center;
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    border: 3px solid #ddd;
    width: 100%;
  }
  
  #counterlog td, #counterlog th {
    border: 1px solid #ddd;
    padding: 8px;
  }
  
  #counterlog tr:nth-child(even){background-color: #f2f2f2;}
  
  #counterlog tr:hover {background-color: #ddd;}
  
  #counterlog th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: center;
    background-color: #4CAF50;
    color: white;
  }
  
`;

export class CountHistoryTable extends Component {
 

  constructor (props){ 
    super(props);       
    this.state =  {counter_records : JSON.parse(props.counter_records)}

    let  arraycheck =()=>{if (!this.state.counter_records) return 'no data';
    if (!Array.isArray(this.state.counter_records)) return 'results are not array';
    console.log(arraycheck()); 
  };    
  } 
  renderTableHeader() {
    let header = Object.keys(this.state.counter_records[0]);
    return header.map((key, index) => {
       return <th key={index}>{key.toUpperCase()}</th>
    })
 }

 //#region   Render Table Methods
  renderTableData() {
    console.log("this.state.counter_record:",this.state.counter_records)
    return this.state.counter_records.map((CounterEvent, index) => {
      const {  id, counterValue,lastAction , created_at,updated_at} = CounterEvent ;//destructuring
      return (
        <tr key={id}>
        <td placeholder="id">{id}</td> 
          <td placeholder="lastAction">{lastAction}</td> 
          <td placeholder="countValue">{counterValue}</td>
          <td placeholder="created_At">{created_at}</td> 
          <td placeholder="updated_At">{updated_at}</td> 
        </tr>
      )
    })
  }

  render() {
    return (
      <Styles> 
        <h1 id='title'>Example Log Table</h1>
        <table id='counterlog'>
          <tbody>            
          <tr>{this.renderTableHeader()}</tr>
            {this.renderTableData()}
          </tbody>
        </table>
      </Styles>
    )
  }
  //#endregion
}

if (document.getElementById('histtable')) {
 
  let parent = document.getElementById("histtable"); 
  let counter_records=parent.attributes.getNamedItem("counter_records"); 
  ReactDOM.render(<CountHistoryTable counter_records={counter_records.value}/>, document.getElementById('histtable'));

}
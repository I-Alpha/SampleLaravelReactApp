import { forEach, range } from 'lodash';
import { Result } from 'postcss';
import React, { Component } from 'react'
import ReactDOM, { createPortal } from 'react-dom'; 

 

const Button = ({ onClick, label }) => (
    <button className="border" onClick={onClick}>{label}</button>
);

const postCounterEventInfo = data => {
    console.log("posting create request, data- ");
    console.log(data);
    axios({
        method: "post",
        url: "/CounterRecords",
        data: data,  
        headers: { "Content-Type": "application/json" },
    })
        .then(function (response) {
            //handle success
            console.log(response);
            toggleAlert("Save Success.")
            
        })
        .catch(function (response) {
            //handle error
            console.log(response);
            toggleAlert("Save Failed.")
        });
        
    var toggleAlert =(name)=> {
               let alert = $(document.getElementById('saveAlertbox'));        
               alert.html(name); 
               if  (name =="Save Success."){
                    alert.css("font-color", "green");  
                }
               else {               
                    alert.css("font-color", "red");  
                }
               alert.toggleClass("hidden"); 
            };
};

var getCounterEventInfo = data => {
    console.log("getting data- ");
    axios({
        method: 'get',
        url: '/CounterRecords',
        headers: { "Content-Type": "application/json" },
    })
        .then(function (response) {
            console.log(response);
        })
        .catch(function (error) {
            console.log(error);
        });

    
};
export class Counter extends Component {

    constructor() {
        super();
        this.state = { value: 0, lastAction: "n/a" }
    }

    increment() {
        console.log("incrementing");
        this.setState({
            value: this.state.value + 1,
            lastAction: "UP",
        });
    }
    decrement() {
        console.log("decrementing");
        this.setState({
            value: this.state.value - 1,
            lastAction: "DOWN",
        });
    }

    save() {
        console.log("saving counter state to db");

        let tempcounterEvent = {
        counterValue: this.state.value,
        lastAction: this.state.lastAction,
      }

        console.log("counter info passed:", tempcounterEvent);
        postCounterEventInfo(tempcounterEvent);  
    }

 
    render() {
        return (
            <div className="container d-flex flex-column">
                <Button onClick={this.increment.bind(this)} label={"UP"} />
                <Button onClick={this.decrement.bind(this)} label={"DOWN"} />
                <label className="p-5 text-center" id="count">{this.state.value}</label>
                <Button onClick={this.save.bind(this)} label={"SAVE"} />                
                <label>
                    <h2 className="pt-2 hidden" id="saveAlertBox">a</h2> 
                </label>
            </div>
        );
    }
}
if (document.getElementById('counter')) {    
    ReactDOM.render(<Counter />, document.getElementById('counter'));
}

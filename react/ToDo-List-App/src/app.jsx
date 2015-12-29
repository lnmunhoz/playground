var React = require('react');
var ReactDOM = require('react-dom');
var ReactFire = require('reactfire');
var Firebase = require('firebase');
var rootUrl = require('./env').FIREBASE_URL;

var Header = require('./header');
var List = require('./list');

var App = React.createClass({
  mixins: [ReactFire],
  // Just run one time.
  componentWillMount: function() { 
    // This method comes from ReactFire.
    this.firebase = new Firebase(rootUrl + 'items/');
    this.bindAsObject(this.firebase, 'items');
    this.firebase.on('value', this.handleDataLoaded)
  },
  getInitialState: function(){
    return {
      items: {},
      loaded: false
    }
  },
  render: function() {
    console.log(this.state);
    return <div className="row panel panel-default">
      <div className="col-md-8 col-md-offset-2">
        <h2 className="text-center">
          To-Do List
        </h2>
        <Header itemsStore={this.firebaseRefs.items} />
        <hr />
        <div className={"content "  + (this.state.loaded ? "loaded" : "")}>
          <List items={this.state.items} />
        </div>
        {this.renderClearDoneButton()}
      </div>
    </div>
  },

  renderClearDoneButton: function(){
    return <div className="text-center clear-complete">
      <button 
        className="btn btn-default"
        type="button"
        onClick={this.handleClearDoneClick} >
        Clear Completed
      </button>
    </div>
  },

  handleClearDoneClick: function(){
    for(var key in this.state.items){
      if (this.state.items[key].done === true){
        this.firebase.child(key).remove();
      }
    }
  },

  handleDataLoaded: function(){
    this.setState({loaded: true});
  }
});

var element = React.createElement(App, {});
ReactDOM.render(element, document.querySelector('.container'));


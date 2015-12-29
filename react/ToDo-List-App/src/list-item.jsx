var React = require('react');
var Firebase = require('firebase');
var rootUrl = require('./env').FIREBASE_URL;

module.exports = React.createClass({
  getInitialState: function(){
    return {
      text: this.props.item.text,
      done: this.props.item.done,
      textChanged: false
    }
  },
  componentWillMount: function(){
    this.firebase = new Firebase(rootUrl + 'items/' + this.props.item.key);
  },
  render: function() {
    return <div className="input-group">
      <span className="input-group-addon">
        <input 
          type="checkbox"
          checked={this.state.done} 
          onChange={this.handleDoneChange} />
      </span>
      <input type="text"
        className="form-control"
        value={this.state.text} 
        onChange={this.handleTextChange} 
        disabled={this.state.done}/>
      <span className="input-group-btn">
        {this.changesButtons()}
        <button 
          className="btn btn-danger"
          onClick={this.handleDeleteClick} >
          Delete
        </button>
      </span>
    </div>
  },

  changesButtons: function(){
    if (this.state.textChanged){
      return <span>
        <button 
          className="btn btn-success"
          onClick={this.handleSaveClick}>
         Save 
        </button>
        <button 
          className="btn btn-default"
          onClick={this.handleUndoClick} > 
          Undo 
        </button>
      </span>
    }else{
      return null
    }
  },

  handleDoneChange: function(event){
    var update = { done: event.target.checked }
    this.setState(update);
    this.firebase.update(update);
  },
  handleTextChange: function(event){
    this.setState({
      text: event.target.value,
      textChanged: true
    });
  },
  handleDeleteClick: function(){
    this.firebase.remove();
  },
  handleUndoClick: function(){
    this.setState({
      text: this.props.item.text,
      textChanged: false
    });
  },
  handleSaveClick: function(){
    this.firebase.update({text: this.state.text});
    this.setState({textChanged: false});
  }
});

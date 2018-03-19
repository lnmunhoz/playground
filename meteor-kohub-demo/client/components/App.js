import React, { PropTypes } from 'react';

const App = ({ contests, createContest, loading }) => (
  <div>
    <input
      type="text" name="contestName" onKeyPress={((event) => {
        if (event.which === 13) {
          createContest(event.target.value);
        }
      })}
    />
    {loading ? (
      <p> Loading ... </p>
    ) : (
      <ul>
        {contests.map(contest => (
          <li key={contest._id}> {contest.name} </li>
      ))}
      </ul>
    )}
  </div>
);

App.propTypes = {
  contests: PropTypes.arrayOf(Object).isRequired,
  createContest: PropTypes.func.isRequired,
};
export default App;

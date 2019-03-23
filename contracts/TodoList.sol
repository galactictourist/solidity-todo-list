pragma solidity ^0.5.0;

contract TodoList {

    uint public taskCount = 0;

//model task object
    struct Task {
        uint id;
        string content;
        bool completed;
    }

//put tasks in state
    mapping(uint => Task) public tasks;

    constructor() public {
        createTask("Default task");
    }

//add new task
    function createTask(string memory _content) public {
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }


}
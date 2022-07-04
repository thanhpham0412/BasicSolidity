pragma solidity ^0.4.0;

contract StateTrans {
    enum State {Init, Reg, Vote, Done}
    State public state;
    uint startTime;
    uint public timeNow;

    function StateTrans() public {
        state = State.Init;
        startTime = now;
    }

    function advangeStage() public {
        timeNow = now;
        if (timeNow > startTime + 10 seconds) {
            startTime = timeNow;
            if (state == State.Init) {state = State.Reg; return;}
            if (state == State.Reg) {state = State.Vote; return;}
            if (state == State.Vote) {state = State.Done; return;}
        }
        return ;
    }

}
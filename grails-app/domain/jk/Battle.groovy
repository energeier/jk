package jk

class Battle {

    int myId
    int toId
    int revise

    static constraints = {
    myId(min:1)
    toId(min:1)
    revise(matches:"\\d+")
    }
}
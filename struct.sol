//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;

contract Struct {

    // use Making user defiend variables
 
    //  Student structure
    struct Student {

        string name;
        bool adult;

    }

    // making array of student 
    // because storing multiple students 
    Student[] public students;

    function set(string calldata _name) public {

        // we have three ways to init struct

        //1st way
        students.push(Student(_name,false));

        //2nd way : key-value mapping Struct({k:v,k1,v1})
        students.push(Student({name:_name,adult:false}));

        //3rd ways
        Student memory student;
        student.name = _name;
        
        // not given adult value then by default false choosen
        students.push(student);


    }

    function get(uint _num)  public view returns(string memory name, bool adult){
        Student storage  student =  students[_num];
        return(student.name , student.adult);
    }

    function update(uint _num,string calldata name, bool adult) public {

        Student storage  student =  students[_num];
        student.name = name;
        student.adult = adult;

    }

    



}